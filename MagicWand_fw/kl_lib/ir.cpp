/*
 * ir.cpp
 *
 *  Created on: 04.07.2013
 *      Author: kreyl
 */

#include "ir.h"
#include "uart.h"

#if IR_TX_ENABLED // ========================== IR TX ==========================
//#define DBG_PINS
#ifdef DBG_PINS
#define DBG_GPIO1   GPIOC
#define DBG_PIN1    8
#define DBG_PIN_INIT()  PinSetupOut(DBG_GPIO1, DBG_PIN1, omPushPull)
#define DBG1_SET()  PinSetHi(DBG_GPIO1, DBG_PIN1)
#define DBG1_CLR()  PinSetLo(DBG_GPIO1, DBG_PIN1)
#else
#define DBG_PIN_INIT()
#define DBG1_SET()
#define DBG1_CLR()
#endif

namespace irLed {

#define IRLED_DMA_MODE  \
    STM32_DMA_CR_CHSEL(DAC_DMA_CHNL) | \
    DMA_PRIORITY_HIGH | \
    STM32_DMA_CR_MSIZE_BYTE | \
    STM32_DMA_CR_PSIZE_BYTE | \
    STM32_DMA_CR_MINC        | \
    STM32_DMA_CR_DIR_M2P | \
    STM32_DMA_CR_TCIE

Timer_t SamplingTmr{TMR_DAC_SMPL};
const stm32_dma_stream_t *PDmaTx = nullptr;
ftVoidVoid ICallbackI = nullptr;
static uint32_t TransactionSz;

#define SAMPLING_FREQ_HZ    (IR_CARRIER_HZ * 2)
// Every SamplePair contains 4 actual samples
#define NSAMPLES_HEADER     (((IR_HEADER_uS * IR_CARRIER_HZ) + 1999999UL) / 2000000UL)
#define NSAMPLES_SPACE      (((IR_SPACE_uS * IR_CARRIER_HZ) + 1999999UL) / 2000000UL)
#define NSAMPLES_ZERO       (((IR_ZERO_uS * IR_CARRIER_HZ) + 1999999UL) / 2000000UL)
#define NSAMPLES_ONE        (((IR_ONE_uS * IR_CARRIER_HZ) + 1999999UL) / 2000000UL)
#define NSAMPLES_PAUSE      (((IR_PAUSE_AFTER_uS * IR_CARRIER_HZ) + 1999999UL) / 2000000UL)

// DAC buf
#define DAC_BUF_SZ          (NSAMPLES_HEADER + NSAMPLES_SPACE + (NSAMPLES_ONE + NSAMPLES_SPACE) * IR_BIT_CNT_MAX + NSAMPLES_PAUSE)

union DacSamplePair_t {
    uint32_t W32;
    struct {
        uint8_t OnPwr1;
        uint8_t OffPwr1;
        uint8_t OnPwr2;
        uint8_t OffPwr2;
    } __attribute__((packed));
    DacSamplePair_t& operator = (const DacSamplePair_t& Right) {
        W32 = Right.W32;
        return *this;
    }
    DacSamplePair_t() : W32(0) {}
    DacSamplePair_t(uint8_t Pwr) : OnPwr1(Pwr), OffPwr1(0), OnPwr2(Pwr), OffPwr2(0) {}
} __attribute__((packed));

DacSamplePair_t DacBuf[DAC_BUF_SZ];


static inline void StartTx() {
    dmaStreamSetMemory0(PDmaTx, DacBuf);
    dmaStreamSetTransactionSize(PDmaTx, TransactionSz);
    dmaStreamSetMode(PDmaTx, IRLED_DMA_MODE);
    dmaStreamEnable(PDmaTx);
    SamplingTmr.Enable();
}

void DmaTxEndIrqHandler(void *p, uint32_t flags) {
    chSysLockFromISR();
    SamplingTmr.Disable();
    dmaStreamDisable(PDmaTx);
    if(ICallbackI) ICallbackI();
    chSysUnlockFromISR();
}

void Init() {
    // ==== GPIO ====
    // Once the DAC channel is enabled, the corresponding GPIO pin is automatically
    // connected to the DAC converter. In order to avoid parasitic consumption,
    // the GPIO pin should be configured in analog.
    PinSetupAnalog(IR_LED);
    // ==== DAC ====
    rccEnableDAC1();
    // Disable buffer
//    DAC->CR = 0;        // Disable DAC
//    DAC->MCR = 0b010;   // Disable buffer
    // Enable DAC, enable DMA, TIM7 TRGO evt as trigger, trigger enable
    DAC->CR = DAC_CR_EN1 | DAC_CR_DMAEN1 | (0b010 << 3) | DAC_CR_TEN1;
    // ==== DMA ====
    PDmaTx = dmaStreamAlloc(DAC_DMA, IRQ_PRIO_MEDIUM, DmaTxEndIrqHandler, nullptr);
    dmaStreamSetPeripheral(PDmaTx, &DAC->DHR8R1);
    // ==== Sampling timer ====
    SamplingTmr.Init();
    SamplingTmr.SetUpdateFrequencyChangingTopValue(SAMPLING_FREQ_HZ);
    SamplingTmr.SelectMasterMode(mmUpdate);
}

// Power is DAC value
void TransmitWord(uint16_t wData, uint32_t BitCnt, uint8_t Power, ftVoidVoid CallbackI) {
    ICallbackI = CallbackI;
    // ==== Fill buffer depending on data ====
    DacSamplePair_t *p = DacBuf, ISampleCarrier{Power}, ISampleSpace{0};
    uint32_t i, j;
    // Put header
    for(i=0; i<NSAMPLES_HEADER; i++) *p++ = ISampleCarrier;
    for(i=0; i<NSAMPLES_SPACE; i++)  *p++ = ISampleSpace;
    // Put data
    for(j=0; j<BitCnt; j++) {
        // Carrier
        if(wData & 0x8000) { for(i=0; i<NSAMPLES_ONE;  i++) *p++ = ISampleCarrier; }
        else               { for(i=0; i<NSAMPLES_ZERO; i++) *p++ = ISampleCarrier; }
        // Space
        for(i=0; i<NSAMPLES_SPACE; i++)  *p++ = ISampleSpace;
        wData <<= 1;
    }
    // Put pause
    for(i=0; i<NSAMPLES_PAUSE; i++) *p++ = ISampleSpace;
    // ==== Start transmission ====
    TransactionSz = (p - DacBuf) * 4; // Every sample pair contains 4 actual samples
    StartTx();
}

void ResetI() {
    dmaStreamDisable(PDmaTx);
    SamplingTmr.Disable();
    DAC->DHR8R1 = 0;
    SamplingTmr.GenerateUpdateEvt();
}
} // namespace
#endif

#if IR_RX_ENABLED // ========================== IR RX ==========================
/* ==== Timer ====
______        ________
      |______|
      ^      ^
   TI2FP2   TI2FP1
   Trigger  Capture
   Reset    CCR1 => DMA req CCR1 => TIMx Ch1 (not Ch2!) request
*/
namespace irRcvr {

ftVoidUint32 ICallbackI;
Timer_t TmrRx{TMR_IR_RX};

void Init(ftVoidUint32 CallbackI) {
    ICallbackI = CallbackI;
    PinSetupAlterFunc(IR_RX_DATA_PIN);
    TmrRx.Init();
    TmrRx.SetTopValue(0xFFFF);        // Maximum
    TmrRx.SetupPrescaler(1000000);    // Input Freq: 1 MHz => one tick = 1 uS
    // Setup input capture mode for Channel2
    // Select TI2 as active input for CCR1
    TMR_IR_RX->CCMR1 = (0b10U << 0);
    // Select active polarity for TI2FP1 (capture CCR1) and TI2FP2 (trigger reset):
    // rising and falling edges, respectively (CC1P=0, CC2P=1). Look, TI2FP2 first, TI2FP1 second
    TMR_IR_RX->CCER = TIM_CCER_CC2P;
    // Select trigger input: TI2FP2 (TS = 110)
    TmrRx.SetTriggerInput(tiTI2FP2);
    // Configure slave mode controller in reset mode (SMS = 0100)
    TmrRx.SelectSlaveMode(smReset);
    // Enable the capture: CC1E = 1
    TMR_IR_RX->CCER |= TIM_CCER_CC1E;
    // IRQ
    TmrRx.EnableIrqOnCompare1();
    nvicEnableVector(TMR_IR_RX_IRQ, IRQ_PRIO_HIGH);
    // Start capture
    TmrRx.Enable();
}

// Parsing
static int32_t IBitCnt = -1, StopRemainder = 0; // Header not received
static uint32_t IRxData;
static systime_t RxStartTime = 0;

static inline void ProcessDurationI(uint32_t Dur) {
//    PrintfI("%d\r", Dur);
    if(IS_LIKE(Dur, IR_HEADER_uS, IR_DEVIATION_uS)) { // Header rcvd
        IBitCnt = 16;
        StopRemainder = 0;
        IRxData = 0;
        RxStartTime = chVTGetSystemTimeX();
    }
    // Ignore received if error occured previously
    else if(IBitCnt != -1) {
        if(chVTTimeElapsedSinceX(RxStartTime) < TIME_MS2I(IR_RX_PKT_TIMEOUT_MS)) {
            uint32_t bit;
            if     (IS_LIKE(Dur, IR_ZERO_uS, IR_DEVIATION_uS)) bit = 0UL;
            else if(IS_LIKE(Dur, IR_ONE_uS,  IR_DEVIATION_uS)) bit = 1UL;
            else { IBitCnt = -1; return; } // Bad duration
            // Find out expected bit cnt
            if(IBitCnt == 16 and bit == 0) StopRemainder = 2; // if first bit is 0, 14 bits are expected
            IBitCnt--;
            IRxData |= bit << IBitCnt;
            if(IBitCnt <= StopRemainder) { // Reception completed
                if(ICallbackI) ICallbackI(IRxData);
                IBitCnt = -1; // Wait header
            }
            else RxStartTime = chVTGetSystemTimeX(); // Restart timeout
        }
        else IBitCnt = -1; // timeout occured
    }
}

} // namespace

// ==== IRQ ====
extern "C"
void TMR_IR_RX_IRQ_HNDLR() {
    CH_IRQ_PROLOGUE();
    chSysLockFromISR();
    irRcvr::ProcessDurationI(irRcvr::TmrRx.GetCCR1()); // Reading CCR1 clears IRQ flag, too
    chSysUnlockFromISR();
    CH_IRQ_EPILOGUE();
}
#endif
