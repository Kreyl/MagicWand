#include "ch.h"
#include "hal.h"
#include "MsgQ.h"
#include "shell.h"
#include "uart.h"
#include "kl_lib.h"
#include "Sequences.h"
#include "Settings.h"
#include "led.h"
#include "SimpleSensors.h"
#include "buttons.h"
#include "EvtMsgIDs.h"
//#include "FwUpdateF072.h"
//#include "ir.h"

#if 1 // ======================== Variables and defines ========================
// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
static const UartParams_t CmdUartParams(115200, CMD_UART_PARAMS);
CmdUart_t Uart{CmdUartParams};
void OnCmd(Shell_t *PShell);
void ITask();

// LEDs
PinOutput_t PwrPin{LED_PWR_EN, omPushPull};
LedSmooth_t Lumos{LUMOS_LED};
PinOutput_t GreenFlash{GREEN_LED, omPushPull};
LedSmooth_t SysLed{SYS_LED};

// Buttons
class Btn_t {
private:
    GPIO_TypeDef *PGpio;
    uint16_t Pin;
    PinPullUpDown_t PullUpDown;
public:
    Btn_t(GPIO_TypeDef *APGpio, uint16_t APin, PinPullUpDown_t APullUpDown) :
        PGpio(APGpio), Pin(APin), PullUpDown(APullUpDown) {}
    void Init() const { PinSetupInput(PGpio, Pin, PullUpDown); }
    bool IsPressed() { return PinIsHi(PGpio, Pin); }
};

Btn_t Btns[] = { {BTN1_PIN}, {BTN2_PIN}, {BTN3_PIN} };

static TmrKL_t CheckTmr {72, evtIdCheckTimer, tktPeriodic};
static TmrKL_t SleepTmr {999, evtIdSleepTimer, tktOneShot};

void CheckBtnAndDoAvada() {
    if(Btns[0].IsPressed()) { // Avada
        Printf("Avada\r");
        GreenFlash.SetHi();
        chThdSleepMilliseconds(153);
        GreenFlash.SetLo();
        // Wait btn release
        while(Btns[0].IsPressed()) chThdSleepMilliseconds(72);
    }
}

enum LumosState_t { lstaOff, lstaFadein, lstaOn, lstaFadeout };
LumosState_t LumosState = lstaOff;

static void EnterSleepNow();
static void EnterSleep();

// === Vector table moving to SRAM ==
#if FROM_BOOT
static inline void MoveVectorTable() {
    __disable_irq();
    // Copy table
    volatile uint32_t *VTable = (volatile uint32_t*)0x20000000; // Start of RAM
    for(uint32_t i=0; i<48; i++) VTable[i] = *(volatile uint32_t*)((uint32_t)FW_START_ADDR + (i << 2));
    // Reset all
    rccResetAHB(0x017E0000);
    rccResetAPB1(0x7AEE4933);
    rccResetAPB2(0x00475A01);
    // En Syscfg clk and do remap
    rccEnableAPB2(RCC_APB2ENR_SYSCFGEN, 0);
    SYSCFG->CFGR1 = 0b11UL; // Embedded SRAM mapped at 0x00000000
}
#endif
#endif

void main() {
#if FROM_BOOT
    MoveVectorTable();
#endif

    // ==== Init Clock system ====
    Clk.EnablePrefetch();
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init();
    Printf("\r%S %S\r\n", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Clk.PrintFreqs();

    // LEDs
    SysLed.Init();
    SysLed.StartOrRestart(lsqOk);
    PwrPin.Init();
    PwrPin.SetHi(); // Enable LED power
    Lumos.Init();
    Lumos.SetupSeqEndEvt(EvtMsg_t(evtIdLumosDone));
    GreenFlash.Init();

    // Buttons
    for(auto &Btn : Btns) Btn.Init();
    CheckBtnAndDoAvada();
    if(Btns[1].IsPressed() or Btns[2].IsPressed()) {
        Lumos.StartOrRestart(lsqFadeIn);
        LumosState = lstaFadein;
    }

    CheckTmr.StartOrRestart();

    ITask(); // Main cycle
}

__noreturn
void ITask() {
    while(true) {
        EvtMsg_t Msg = EvtQMain.Fetch(TIME_INFINITE);
        switch(Msg.ID) {
            case evtIdShellCmdRcvd:
                while(((CmdUart_t*)Msg.Ptr)->TryParseRxBuff() == retvOk) OnCmd((Shell_t*)((CmdUart_t*)Msg.Ptr));
                break;

            case evtIdCheckTimer:
                CheckBtnAndDoAvada();
                // Check Lumos
//                Printf("Sta: %u %u %u\r", LumosState, Btns[1].IsPressed(), Btns[2].IsPressed());
                if(Btns[1].IsPressed() or Btns[2].IsPressed()) {
                    if(LumosState == lstaOff or LumosState == lstaFadeout) {
                        SleepTmr.Stop();
                        Lumos.StartOrRestart(lsqFadeIn);
                        LumosState = lstaFadein;
                    }
                }
                else { // No btn is pressed
                    switch(LumosState) {
                        case lstaOff:
                            SleepTmr.StartIfNotRunning();
                            break;
                        case lstaFadein:
                        case lstaOn:
                            Lumos.StartOrRestart(lsqFadeOut);
                            LumosState = lstaFadeout;
                            break;
                        case lstaFadeout: break;
                    } // switch
                } // btns
                break;

            case evtIdLumosDone:
                switch(LumosState) {
                    case lstaFadein:  LumosState = lstaOn;  break;
                    case lstaFadeout: LumosState = lstaOff; break;
                    default: break; // lstaOn or lstaOff; must not happen
                }
                break;

            case evtIdSleepTimer: EnterSleep(); break;

            default: break;
        } // switch
    } // while true
}

void ProcessUsbDetect(PinSnsState_t *PState, uint32_t Len) {
//    if((*PState == pssRising or *PState == pssHi) and !UsbIsConnected) {
//        UsbIsConnected = true;
//        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdUsbConnect));
//    }
//    else if((*PState == pssFalling or *PState == pssLo) and UsbIsConnected) {
//        UsbIsConnected = false;
//        EvtQMain.SendNowOrExit(EvtMsg_t(evtIdUsbDisconnect));
//    }
}

void ProcessCharging(PinSnsState_t *PState, uint32_t Len) {
//    if(*PState == pssLo) InfoLed.StartOrContinue(lbsqCharging);
//    else if(*PState == pssHi) { // Charge stopped
//        if(UsbIsConnected) InfoLed.StartOrContinue(lbsqChargingDone);
//        else               InfoLed.Stop();
//    }
}

void EnterSleep() {
    Printf("Entering sleep\r");
    chThdSleepMilliseconds(45);
    chSysLock();
    EnterSleepNow();
    chSysUnlock();
}

void EnterSleepNow() {
    Sleep::EnableWakeup1Pin(); // Btn1
    Sleep::EnableWakeup4Pin(); // Btn2
    Sleep::EnableWakeup2Pin(); // Btn3
    Sleep::EnableWakeup6Pin(); // USB Detect
    Sleep::EnterStandby();
}

#if 1 // ======================= Command processing ============================
void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    Printf("%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();
    else if(PCmd->NameIs("Version")) PShell->Print("Version: %S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
//    else if(PCmd->NameIs("mem")) PrintMemoryInfo();

    else if(PCmd->NameIs("PwrOn")) {
        PinSetHi(LED_PWR_EN);
        PShell->Ok();
    }
    else if(PCmd->NameIs("PwrOff")) {
        PinSetLo(LED_PWR_EN);
        PShell->Ok();
    }


#if 0 // ==== FW Update ====
    else if(PCmd->NameIs("UpdateFwRestart")) {
        Reset(true); // Do not print "#Reset"
        FwUpdater.Restart();
        PShell->Ok();
    }

    else if(PCmd->NameIs("UpdateFwWrite")) {
        Iwdg::Reload();
        int32_t Sz;
        if(PCmd->GetNext<int32_t>(&Sz) != retvOk or Sz < 1 or Sz > FW_UPD_BUF_SZ) { PShell->BadParam(); return; }
        uint32_t crc32;
        if(PCmd->GetNext<uint32_t>(&crc32) != retvOk) { PShell->BadParam(); return; }
        if(PShell->ReceiveBinaryToBuf(FwUpdater.Buf, Sz, 4500) == retvOk) {
            Iwdg::Reload();
            uint16_t crc16 = crc32;
            switch(FwUpdater.WriteBuf(Sz, &crc16)) {
                case retvOk:       PShell->Ok(); break;
                case retvTimeout:  PShell->Timeout(); break;
                case retvCRCError: PShell->CRCError(); break;
                default: PShell->Failure(); break;
            }
        }
        else PShell->Failure();
    }
    else if(PCmd->NameIs("UpdateFwCheckAndRun")) {
        Iwdg::Reload();
        uint32_t crc32;
        if(PCmd->GetNext<uint32_t>(&crc32) != retvOk) { PShell->BadParam(); return; }
        uint16_t crc16 = crc32;
        switch(FwUpdater.CheckItAll(&crc16)) {
            case retvOk:
                PShell->Ok();
                chThdSleepMilliseconds(45);
                FwUpdater.JumpToBootloader();
                break;
            case retvCRCError: PShell->CRCError(); break;
            default: PShell->Failure(); break;
        }
    }
#endif

    else PShell->CmdUnknown();
}
#endif
