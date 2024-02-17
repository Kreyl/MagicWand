/*
 * kl_lib.h
 *
 *  Created on: 10.12.2012
 *      Author: kreyl
 */

#ifndef KL_LIB_H_
#define KL_LIB_H_

#include <cstdlib>
#include <inttypes.h>
#include "stm32_rcc.h"
#include "stm32f0xx.h"

// ==== Build time ====
// Define symbol BUILD_TIME in main.cpp options with value ${current_date}.
// Printf("\r%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
#define STRINGIFY(x)    # x
#define XSTRINGIFY(x)   STRINGIFY(x)

#if 1 // ============================ General ==================================
#define __noreturn      __attribute__((noreturn))
#define __packed        __attribute__((__packed__))
#define __align4        __attribute__((aligned (4)))
// Also remember __unused and __always_inline
#ifndef countof
#define countof(A)  (sizeof(A)/sizeof(A[0]))
#endif

#ifndef TRUE
#define TRUE    1
#endif
#ifndef FALSE
#define FALSE   0
#endif

// Return values
#define retvOk              0
#define retvFail            1
#define retvTimeout         2
#define retvBusy            3
#define retvInProgress      4
#define retvCmdError        5
#define retvCmdUnknown      6
#define retvBadValue        7
#define retvNew             8
#define retvSame            9
#define retvLast            10
#define retvEmpty           11
#define retvOverflow        12
#define retvNotANumber      13
#define retvWriteProtect    14
#define retvWriteError      15
#define retvEndOfFile       16
#define retvNotFound        17
#define retvBadState        18
#define retvDisconnected    19
#define retvCollision       20
#define retvCRCError        21
#define retvNACK            22
#define retvNoAnswer        23
#define retvOutOfMemory     24
#define retvNotAuthorised   25
#define retvNoChanges       26

// Binary semaphores
#define NOT_TAKEN       false
#define TAKEN           true

enum BitOrder_t {boMSB, boLSB};
enum LowHigh_t  {Low, High};
enum RiseFall_t {rfRising, rfFalling, rfNone, rfBoth};
enum Inverted_t {invNotInverted, invInverted};
enum PinOutMode_t {omPushPull = 0, omOpenDrain = 1};
enum BitNumber_t {bitn8, bitn16, bitn32};
enum EnableDisable_t {Enable, Disable};

typedef void (*ftVoidVoid)(void);
typedef void (*ftVoidUint32)(uint32_t);
typedef void (*ftVoidPVoid)(void*p);
typedef void (*ftVoidPVoidLen)(void*p, uint32_t Len);

// Virtual class for IRQ handlers and timer callbacks
class IrqHandler_t {
public:
    virtual void IIrqHandler() = 0;
};

// ==== Math ====
#define MIN_(a, b)   ( ((a)<(b))? (a) : (b) )
#define MAX_(a, b)   ( ((a)>(b))? (a) : (b) )
#define ABS(a)      ( ((a) < 0)? -(a) : (a) )
#define Limit2Bounds(v, vMin, vMax)     { if((v) < (vMin)) { (v) = (vMin); } else if((v) > (vMax)) { (v) = (vMax); } }
#define LimitMinValue(v, vMin)          { if((v) < (vMin)) { (v) = (vMin); } }
#define LimitMaxValue(v, vMax)          { if((v) > (vMax)) { (v) = (vMax); } }
#define IS_LIKE(v, precise, deviation)  (((precise - deviation) < v) and (v < (precise + deviation)))
#define BitIsSet(r, b)  ((r) & (b))

#define ANY_OF_2(a, b1, b2)             (((a)==(b1)) or ((a)==(b2)))
#define ANY_OF_3(a, b1, b2, b3)         (((a)==(b1)) or ((a)==(b2)) or ((a)==(b3)))
#define ANY_OF_4(a, b1, b2, b3, b4)     (((a)==(b1)) or ((a)==(b2)) or ((a)==(b3)) or ((a)==(b4)))
#define ANY_OF_5(a, b1, b2, b3, b4, b5) (((a)==(b1)) or ((a)==(b2)) or ((a)==(b3)) or ((a)==(b4)) or ((a)==(b5)))

// IRQ priorities
#define IRQ_PRIO_LOW            15  // Minimum
#define IRQ_PRIO_MEDIUM         9
#define IRQ_PRIO_HIGH           7
#define IRQ_PRIO_VERYHIGH       4   // Higher than systick

// DMA
#define DMA_PRIORITY_LOW        STM32_DMA_CR_PL(0b00)
#define DMA_PRIORITY_MEDIUM     STM32_DMA_CR_PL(0b01)
#define DMA_PRIORITY_HIGH       STM32_DMA_CR_PL(0b10)
#define DMA_PRIORITY_VERYHIGH   STM32_DMA_CR_PL(0b11)

template <typename T>
static T Average(T *p, uint32_t Len) {
    T Rslt = 0;
    for(uint32_t i=0; i<Len; i++) Rslt += *p++;
    Rslt /= Len;
    return Rslt;
}

template <typename T>
static inline T Proportion(T MinX, T MaxX, T MinY, T MaxY, T x) {
    return (((x - MaxX) * (MaxY - MinY)) / (MaxX - MinX)) + MaxY;
}

template <typename T>
static T FindMediana(T *Arr, int32_t N) {
    int32_t L = 1, r = N, i, j, k = N / 2;
    T x;
    while(L < r) {
        x = Arr[k];
        i = L;
        j = r;
        do {
            while(Arr[i] < x) i++;
            while(x < Arr[j]) j--;
            if(i <= j) {
                T tmp = Arr[i];
                Arr[i] = Arr[j];
                Arr[j] = tmp;
                i++;
                j--;
            }
            if(j < k) L = i;
            if(k < i) r = j;
        } while(i <= j);
    }
    return Arr[k];
}

// Amount of memory occupied by thread
uint32_t GetThdFreeStack(void *wsp, uint32_t size);
void PrintThdFreeStack(void *wsp, uint32_t size);

/*
 * Early initialization code.
 * This initialization must be performed just after stack setup and before
 * any other initialization.
 */
extern "C" {
void __early_init(void);
}

void PrintMemoryInfo();

namespace Convert { // ============== Conversion operations ====================
union DWordBytes_t {
    uint32_t DWord;
    uint8_t b[4];
    DWordBytes_t& operator = (const DWordBytes_t &Right) {
        DWord = Right.DWord;
        return *this;
    }
};
union WordBytes_t {
    uint16_t Word;
    uint8_t b[2];
    WordBytes_t& operator = (const WordBytes_t &Right) {
        Word = Right.Word;
        return *this;
    }
} __attribute__((packed));

void U16ToArrAsBE(uint8_t *PArr, uint16_t N);
void U32ToArrAsBE(uint8_t *PArr, uint32_t N);
uint16_t ArrToU16AsBE(uint8_t *PArr);
uint32_t ArrToU32AsBE(uint8_t *PArr);
//void ReverseByteOrder16(uint16_t *p);
//void ReverseByteOrder16(int16_t *p);
#define ReverseByteOrder16(p)   (p) = __REV16(p)
#define ReverseByteOrder32(p)   (p) = __REV(p)
uint8_t TryStrToUInt32(char* S, uint32_t *POutput);
uint8_t TryStrToInt32(char* S, int32_t *POutput);
uint16_t BuildUint16(uint8_t Lo, uint8_t Hi);
uint32_t BuildUint32(uint8_t Lo, uint8_t MidLo, uint8_t MidHi, uint8_t Hi);
uint8_t TryStrToFloat(char* S, float *POutput);
}; // namespace
#endif

// ========================== Simple delay ===============================
static inline void DelayLoop(volatile uint32_t ACounter) { while(ACounter--); }

// See Programming manual: http://www.st.com/content/ccc/resource/technical/document/programming_manual/6c/3a/cb/e7/e4/ea/44/9b/DM00046982.pdf/files/DM00046982.pdf/jcr:content/translations/en.DM00046982.pdf
// On writes, write 0x5FA to VECTKEY, otherwise the write is ignored. 4 is SYSRESETREQ: System reset request
#define REBOOT()                SCB->AIRCR = 0x05FA0004

#if 1 // ===================== Simple pin manipulations ========================
enum PinPullUpDown_t {
    pudNone = 0b00,
    pudPullUp = 0b01,
    pudPullDown = 0b10
};

struct PinInputSetup_t {
    GPIO_TypeDef *PGpio;
    uint16_t Pin;
    PinPullUpDown_t PullUpDown;
    PinInputSetup_t(GPIO_TypeDef *APGpio, uint16_t APin, PinPullUpDown_t APullUpDown) :
        PGpio(APGpio), Pin(APin), PullUpDown(APullUpDown) {}

};

struct PwmSetup_t {
    GPIO_TypeDef *PGpio;
    uint16_t Pin;
    TIM_TypeDef *PTimer;
    uint32_t TimerChnl;
    Inverted_t Inverted;
    PinOutMode_t OutputType;
    uint32_t TopValue;
    PwmSetup_t(GPIO_TypeDef *APGpio, uint16_t APin,
            TIM_TypeDef *APTimer, uint32_t ATimerChnl,
            Inverted_t AInverted, PinOutMode_t AOutputType,
            uint32_t ATopValue) : PGpio(APGpio), Pin(APin), PTimer(APTimer),
                    TimerChnl(ATimerChnl), Inverted(AInverted), OutputType(AOutputType),
                    TopValue(ATopValue) {}
};

#if defined STM32F2XX || defined STM32F4XX
enum PinSpeed_t {
    psLow  = 0b00,
    psMedium = 0b01,
    psFast = 0b10,
    psHigh = 0b11
};
#define PIN_SPEED_DEFAULT   psFast
#elif defined STM32L1XX
enum PinSpeed_t {
    psVeryLow = 0b00,
    psLow = 0b01,
    psMedium = 0b10,
    psHigh = 0b11
};
#define PIN_SPEED_DEFAULT   psMedium
#elif defined STM32F0XX || defined STM32F0
enum PinSpeed_t {
    psLow = 0b00,
    psMedium = 0b01,
    psHigh = 0b11
};
#define PIN_SPEED_DEFAULT   psMedium
#elif defined STM32F1XX
enum PinSpeed_t {
    psLow = 0b10,
    psMedium = 0b01,
    psHigh = 0b11
};
#define PIN_SPEED_DEFAULT   psMedium
#elif defined STM32L4XX || defined STM32F7XX
enum PinSpeed_t {
    psLow = 0b00,
    psMedium = 0b01,
    psHigh = 0b10,
    psVeryHigh = 0b11
};
#define PIN_SPEED_DEFAULT   psMedium

struct LPTimPwmSetup_t {
    GPIO_TypeDef *PGpio;
    uint16_t Pin;
    LPTIM_TypeDef *PTimer;
    Inverted_t Inverted;
    PinOutMode_t OutputType;
    uint32_t TopValue;
};
#endif

enum AlterFunc_t {
    AF0=0, AF1=1, AF2=2, AF3=3, AF4=4, AF5=5, AF6=6, AF7=7,
#if defined STM32F2XX || defined STM32F4XX || defined STM32L1XX || defined STM32L4XX || defined STM32F7XX
    AF8=8, AF9=9,AF10=10, AF11=11, AF12=12, AF13=13, AF14=14, AF15=15
#endif
};

// Set/clear
#if defined STM32F4XX || defined STM32F042x6
__always_inline
static inline void PinSetHi(GPIO_TypeDef *PGpio, uint16_t APin) { PGpio->BSRRL = (1 << APin); }
__always_inline
static inline void PinSetLo(GPIO_TypeDef *PGpio, uint16_t APin) { PGpio->BSRRH = (1 << APin); }
#elif defined STM32F2XX || defined STM32L1XX || defined STM32F7XX
__always_inline
static void PinSetHi(GPIO_TypeDef *PGpio, uint32_t APin) { PGpio->BSRR = 1 << APin; }
__always_inline
static void PinSetLo(GPIO_TypeDef *PGpio, uint32_t APin) { PGpio->BSRR = 1 << (APin + 16);  }
#elif defined STM32F0XX || defined STM32F10X_LD_VL || defined STM32L4XX || defined STM32F103xE ||defined STM32F0
__always_inline
static void PinSetHi(GPIO_TypeDef *PGpio, uint32_t APin) { PGpio->BSRR = 1 << APin; }
__always_inline
static void PinSetLo(GPIO_TypeDef *PGpio, uint32_t APin) { PGpio->BRR = 1 << APin;  }
#endif
__always_inline
static void PinToggle(GPIO_TypeDef *PGpio, uint32_t APin) { PGpio->ODR ^= 1 << APin; }
// Check input
__always_inline
static bool PinIsHi(GPIO_TypeDef *PGpio, uint32_t APin) { return PGpio->IDR & (1 << APin); }
__always_inline
static bool PinIsHi(const GPIO_TypeDef *PGpio, uint32_t APin) { return PGpio->IDR & (1 << APin); }
__always_inline
static bool PinIsLo(GPIO_TypeDef *PGpio, uint32_t APin) { return !(PGpio->IDR & (1 << APin)); }
__always_inline
static bool PinIsLo(const GPIO_TypeDef *PGpio, uint32_t APin) { return !(PGpio->IDR & (1 << APin)); }

// Setup
static void PinClockEnable(const GPIO_TypeDef *PGpioPort) {
#if defined STM32F2XX || defined STM32F4XX || defined STM32F7XX
    if     (PGpioPort == GPIOA) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
    else if(PGpioPort == GPIOB) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOBEN;
    else if(PGpioPort == GPIOC) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOCEN;
    else if(PGpioPort == GPIOD) RCC->AHB1ENR |= RCC_AHB1ENR_GPIODEN;
    else if(PGpioPort == GPIOE) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOEEN;
    else if(PGpioPort == GPIOF) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOFEN;
    else if(PGpioPort == GPIOG) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOGEN;
    else if(PGpioPort == GPIOH) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOHEN;
    else if(PGpioPort == GPIOI) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOIEN;
    else if(PGpioPort == GPIOJ) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOJEN;
    else if(PGpioPort == GPIOK) RCC->AHB1ENR |= RCC_AHB1ENR_GPIOKEN;
#elif defined STM32F1XX
    if     (PGpioPort == GPIOA) RCC->APB2ENR |= RCC_APB2ENR_IOPAEN;
    else if(PGpioPort == GPIOB) RCC->APB2ENR |= RCC_APB2ENR_IOPBEN;
    else if(PGpioPort == GPIOC) RCC->APB2ENR |= RCC_APB2ENR_IOPCEN;
    else if(PGpioPort == GPIOD) RCC->APB2ENR |= RCC_APB2ENR_IOPDEN;
#elif defined STM32L4XX
    if     (PGpioPort == GPIOA) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOAEN;
    else if(PGpioPort == GPIOB) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;
    else if(PGpioPort == GPIOC) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOCEN;
    else if(PGpioPort == GPIOD) RCC->AHB2ENR |= RCC_AHB2ENR_GPIODEN;
    else if(PGpioPort == GPIOE) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOEEN;
#ifdef GPIOF
    else if(PGpioPort == GPIOF) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOFEN;
#endif
#ifdef GPIOG
    else if(PGpioPort == GPIOG) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOGEN;
#endif
    else if(PGpioPort == GPIOH) RCC->AHB2ENR |= RCC_AHB2ENR_GPIOHEN;
#else
    if     (PGpioPort == GPIOA) RCC->AHBENR |= RCC_AHBENR_GPIOAEN;
    else if(PGpioPort == GPIOB) RCC->AHBENR |= RCC_AHBENR_GPIOBEN;
    else if(PGpioPort == GPIOC) RCC->AHBENR |= RCC_AHBENR_GPIOCEN;
#ifdef GPIOD
    else if(PGpioPort == GPIOD) RCC->AHBENR |= RCC_AHBENR_GPIODEN;
#endif
#ifdef GPIOF
    else if(PGpioPort == GPIOF) RCC->AHBENR |= RCC_AHBENR_GPIOFEN;
#endif

#endif // MCU type
}

// ==== Fast setup ====
#if defined STM32F1XX
static inline void PinSetupModeOut(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber, const PinOutMode_t PinOutMode) {
    uint32_t CnfMode = ((uint32_t)PinOutMode << 2) | (uint32_t)PIN_SPEED_DEFAULT;
    if(APinNumber < 8) {
        uint8_t Offset = APinNumber*4;
        PGpioPort->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRL |= CnfMode << Offset;
    }
    else {
        uint8_t Offset = (APinNumber - 8) * 4;
        PGpioPort->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRH |= CnfMode << Offset;
    }
}

static inline void PinSetupModeAnalog(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    if(APinNumber < 8) {
        uint8_t Offset = APinNumber*4;
        PGpioPort->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
    }
    else {
        uint8_t Offset = (APinNumber - 8) * 4;
        PGpioPort->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
    }
}
#else
static inline void PinSetupModeOut(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    uint8_t Offset = APinNumber*2;
    PGpioPort->MODER &= ~(0b11 << Offset);  // clear previous bits
    PGpioPort->MODER |=   0b01 << Offset;   // Set new bits
}

static inline void PinSetupModeAnalog(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    PGpioPort->MODER |= 0b11 << (APinNumber*2);
}
#endif

// ==== Full-sized setup ====
static inline void PinSetupOut(
        GPIO_TypeDef *PGpioPort,
        const uint16_t APinNumber,
        const PinOutMode_t PinOutMode,
        const PinSpeed_t ASpeed = PIN_SPEED_DEFAULT
        ) {
    // Clock
    PinClockEnable(PGpioPort);
#if defined STM32F1XX
    uint32_t CnfMode = ((uint32_t)PinOutMode << 2) | (uint32_t)ASpeed;
    if(APinNumber < 8) {
        uint8_t Offset = APinNumber*4;
        PGpioPort->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRL |= CnfMode << Offset;
    }
    else {
        uint8_t Offset = (APinNumber - 8) * 4;
        PGpioPort->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRH |= CnfMode << Offset;
    }
#else
    uint8_t Offset = APinNumber*2;
    // Setup mode
    PGpioPort->MODER &= ~(0b11 << Offset);  // clear previous bits
    PGpioPort->MODER |=   0b01 << Offset;   // Set new bits
    // Setup output type
    PGpioPort->OTYPER &= ~(1<<APinNumber);
    PGpioPort->OTYPER |= (uint32_t)PinOutMode << APinNumber;
    // Setup Pull-Up or Pull-Down
    PGpioPort->PUPDR &= ~(0b11 << Offset); // clear previous bits
    PGpioPort->PUPDR |= (uint32_t)pudNone << Offset;
    // Setup speed
    PGpioPort->OSPEEDR &= ~(0b11 << Offset); // clear previous bits
    PGpioPort->OSPEEDR |= (uint32_t)ASpeed << Offset;
#endif
}

static inline void PinSetupInput(
        GPIO_TypeDef *PGpio,
        const uint16_t PinN,
        const PinPullUpDown_t PullUpDown,
        const PinSpeed_t ASpeed = PIN_SPEED_DEFAULT) {
    __unused uint8_t Offset = PinN*2;
    // Clock
    PinClockEnable(PGpio);
#if defined STM32F1XX
        uint32_t CnfMode;
        if(PullUpDown == pudNone) CnfMode = 0b0100;
        else {
            CnfMode = 0b1000;
            if(PullUpDown == pudPullDown) PGpio->ODR &= ~((uint32_t)(1<<PinN));
            else PGpio->ODR |= (uint32_t)(1<<PinN);
        }
        if(PinN < 8) {
            uint8_t Offset = PinN*4;
            PGpio->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
            PGpio->CRL |= CnfMode << Offset;
        }
        else {
            uint8_t Offset = (PinN - 8) * 4;
            PGpio->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
            PGpio->CRH |= CnfMode << Offset;
        }
#else
        // Setup mode
        PGpio->MODER &= ~(0b11 << Offset); // clear previous bits
        // Setup Pull-Up or Pull-Down
        PGpio->PUPDR &= ~(0b11 << Offset); // clear previous bits
        PGpio->PUPDR |= (uint32_t)PullUpDown << Offset;
#endif
}

static inline void PinSetupAnalog(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    // Clock
    PinClockEnable(PGpioPort);
#if defined STM32F1XX
    if(APinNumber < 8) {
        uint8_t Offset = APinNumber*4;
        PGpioPort->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
    }
    else {
        uint8_t Offset = (APinNumber - 8) * 4;
        PGpioPort->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
    }
#else
    // Setup mode
    PGpioPort->MODER |= 0b11 << (APinNumber*2);  // Set new bits
#endif
}

#ifdef STM32L4XX
static inline void PinConnectAdc(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    SET_BIT(PGpioPort->ASCR, 1<<APinNumber);
}
static inline void PinDisconnectAdc(GPIO_TypeDef *PGpioPort, const uint16_t APinNumber) {
    CLEAR_BIT(PGpioPort->ASCR, 1<<APinNumber);
}
#endif

static inline void PinSetupAlterFunc(
        GPIO_TypeDef *PGpioPort,
        const uint16_t APinNumber,
        const PinOutMode_t PinOutMode,
        const PinPullUpDown_t APullUpDown,
        const AlterFunc_t AAlterFunc,
        const PinSpeed_t ASpeed = PIN_SPEED_DEFAULT) {
    // Clock
    PinClockEnable(PGpioPort);
#if defined STM32F1XX
    RCC->APB2ENR |= RCC_APB2ENR_AFIOEN;     // Enable AFIO clock
    // Setup
    uint32_t CnfMode = ((uint32_t)PinOutMode << 2) | 0b1000 | (uint32_t)ASpeed;
    if(APinNumber < 8) {
        uint8_t Offset = APinNumber*4;
        PGpioPort->CRL &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRL |= CnfMode << Offset;
    }
    else {
        uint8_t Offset = (APinNumber - 8) * 4;
        PGpioPort->CRH &= ~((uint32_t)(0b1111 << Offset));  // Clear both mode and cnf
        PGpioPort->CRH |= CnfMode << Offset;
    }
#else
    uint32_t Offset = APinNumber*2;
    // Setup mode
    PGpioPort->MODER &= ~(0b11 << Offset);  // clear previous bits
    PGpioPort->MODER |= 0b10 << Offset;     // Set new bits (AF mode)
    // Setup output type
    if(PinOutMode == omPushPull) PGpioPort->OTYPER &= ~(1<<APinNumber);
    else PGpioPort->OTYPER |= 1 << APinNumber;  // Open Drain
    // Setup Pull-Up or Pull-Down
    PGpioPort->PUPDR &= ~(0b11 << Offset); // clear previous bits
    PGpioPort->PUPDR |= (uint32_t)APullUpDown << Offset;
    // Setup speed
    PGpioPort->OSPEEDR &= ~(0b11 << Offset); // clear previous bits
    PGpioPort->OSPEEDR |= (uint32_t)ASpeed << Offset;
    // Setup Alternate Function
    uint32_t n = (APinNumber <= 7)? 0 : 1;      // 0 if 0...7, 1 if 8..15
    Offset = 4 * ((APinNumber <= 7)? APinNumber : APinNumber - 8);
    PGpioPort->AFR[n] &= ~(0b1111 << Offset);
    PGpioPort->AFR[n] |= (uint32_t)AAlterFunc << Offset;
#endif
}

// ==== Port setup ====
#ifndef STM32F1XX
static inline void PortInit(GPIO_TypeDef *PGpioPort,
        const PinOutMode_t PinOutMode,
        const PinPullUpDown_t APullUpDown = pudNone,
        const PinSpeed_t ASpeed = PIN_SPEED_DEFAULT
        ) {
    // Clock
    PinClockEnable(PGpioPort);
    // Setup output type
    if(PinOutMode == omPushPull) PGpioPort->OTYPER = 0;
    else PGpioPort->OTYPER = 0xFFFF;
    // Setup Pull-Up or Pull-Down
    if(APullUpDown == pudPullUp) PGpioPort->PUPDR = 0x55555555; // 01 01 01 01...
    else if(APullUpDown == pudPullDown) PGpioPort->PUPDR = 0xAAAAAAAA; // 10 10 10 10...
    else PGpioPort->PUPDR = 0x00000000; // no pull
    // Setup speed
    switch(ASpeed) {
#if defined STM32L1XX
        case psVeryLow:  PGpioPort->OSPEEDR = 0x00000000; break;
        case psLow:      PGpioPort->OSPEEDR = 0x55555555; break;
        case psMedium:   PGpioPort->OSPEEDR = 0xAAAAAAAA; break;
        case psHigh:     PGpioPort->OSPEEDR = 0xFFFFFFFF; break;
#elif defined STM32L4XX || defined STM32F7XX
        case psVeryHigh: PGpioPort->OSPEEDR = 0xFFFFFFFF; break;
        case psLow:      PGpioPort->OSPEEDR = 0x00000000; break;
        case psMedium:   PGpioPort->OSPEEDR = 0x55555555; break;
        case psHigh:     PGpioPort->OSPEEDR = 0xAAAAAAAA; break;
#elif defined STM32F0XX || defined STM32F0
        case psLow:      PGpioPort->OSPEEDR = 0x00000000; break;
        case psMedium:   PGpioPort->OSPEEDR = 0x55555555; break;
        case psHigh:     PGpioPort->OSPEEDR = 0xFFFFFFFF; break;
#elif defined STM32F2XX
        case psLow:     PGpioPort->OSPEEDR = 0x00000000; break;
        case psMedium:  PGpioPort->OSPEEDR = 0x55555555; break;
        case psFast:    PGpioPort->OSPEEDR = 0xAAAAAAAA; break;
        case psHigh:    PGpioPort->OSPEEDR = 0xFFFFFFFF; break;
#endif
    }
}

__always_inline
static void PortSetupOutput(GPIO_TypeDef *PGpioPort) {
    PGpioPort->MODER = 0x55555555;
}
__always_inline
static void PortSetupInput(GPIO_TypeDef *PGpioPort) {
    PGpioPort->MODER = 0x00000000;
}
#endif

__always_inline
static void PortSetValue(GPIO_TypeDef *PGpioPort, uint16_t Data) {
    PGpioPort->ODR = Data;
}
__always_inline
static uint16_t PortGetValue(GPIO_TypeDef *PGpioPort) {
    return PGpioPort->IDR;
}
#endif // Simple pin manipulations

#if 1 // ============================== IWDG ===================================
namespace Iwdg {

// Up to 32000 ms
void InitAndStart(uint32_t ms);

static inline void Reload() { IWDG->KR = 0xAAAA; }

static inline bool ResetOccured() {
    if(RCC->CSR & RCC_CSR_IWDGRSTF) {
        RCC->CSR |= RCC_CSR_RMVF;   // Clear flags
        return true;
    }
    else return false;
}

void DisableInDebug();

void GoSleep(uint32_t Timeout_ms);

};
#endif

// =========================== Flash and Option bytes ==========================
namespace Flash {

bool IsLocked();
void UnlockFlash();
void LockFlash();
void UnlockOptionBytes();
void LockOptionBytes();

uint8_t WaitForLastOperation(uint32_t Timeout_st);
void ClearPendingFlags();
uint8_t ErasePage(uint32_t PageAddress);

#if defined STM32L4XX
uint8_t ProgramBuf32(uint32_t Address, uint32_t *PData, int32_t ASzBytes);
#else
uint8_t ProgramWord(uint32_t Address, uint32_t Data);
uint8_t ProgramBuf(void *PData, uint32_t ByteSz, uint32_t Addr);
#endif

void WriteOptionBytes(uint32_t Value);

void ToggleBootBankAndReset();

bool FirmwareIsLocked();
void LockFirmware();
void UnlockFirmware();

bool IwdgIsFrozenInStandby();
void IwdgFrozeInStandby();

#if defined STM32L4XX
bool DualbankIsEnabled();
void DisableDualbank();

bool SleepInResetIsEnabled();
void DisableSleepInReset();
#endif

}; // Namespace

#if 1 // =========================== Clocking ==================================
/*
 * Right after reset, CPU works on internal (HSI) source.
 * To switch to external src (HSE) without dividing (i.e. SysClk == CrystalFreq),
 * call SwitchToHSE(), and then optionally HSIDisable().
 * To switch from HSE to HSI, call SwitchToHSI() then optionally HSEDisable().
 * To switch to PLL, disable it first with PLLDisable(), then setup dividers
 * with SetupPLLDividers(), then call SwitchToPLL(). Then disable HSI if needed.
 *
 * Do not forget to update Freq values after switching.
 *
 * Keep in mind that Flash latency need to be increased at higher speeds.
 * Tune it with SetupFlashLatency.
 *
 * AHB  freq max = 48 MHz;
 * APB  freq max = 48 MHz;
 */

#define HSI_FREQ_HZ     8000000 // Freq of internal generator, not adjustable
#define HSI48_FREQ_HZ   48000000

enum PllMul_t {
    pllMul2=0,
    pllMul3=1,
    pllMul4=2,
    pllMul5=3,
    pllMul6=4,
    pllMul7=5,
    pllMul8=6,
    pllMul9=7,
    pllMul10=8,
    pllMul11=9,
    pllMul12=10,
    pllMul13=11,
    pllMul14=12,
    pllMul15=13,
    pllMul16=14
};

enum PllSrc_t {plsHSIdiv2=0b00, plsHSIdivPREDIV=0b01, plsHSEdivPREDIV=0b10, plsHSI48divPREDIV=0b11};
enum ClkSrc_t {csHSI=0b00, csHSE=0b01, csPLL=0b10, csHSI48=0b11};
enum uartClk_t {uartclkPCLK = 0, uartclkSYSCLK = 1, uartclkLSE = 2, uartclkHSI = 3 };

enum AHBDiv_t {
    ahbDiv1=0b0000,
    ahbDiv2=0b1000,
    ahbDiv4=0b1001,
    ahbDiv8=0b1010,
    ahbDiv16=0b1011,
    ahbDiv64=0b1100,
    ahbDiv128=0b1101,
    ahbDiv256=0b1110,
    ahbDiv512=0b1111
};
enum APBDiv_t {apbDiv1=0b000, apbDiv2=0b100, apbDiv4=0b101, apbDiv8=0b110, apbDiv16=0b111};
enum LseLvl_t {lselvlLow=0b00, lselvlMedLow=0b01, lselvlMedHi=0b11, lselvlHigh=0b11};
enum i2cClk_t { i2cclkHSI = 0, i2cclkSYSCLK = 1 };

class Clk_t {
private:
    uint8_t EnableHSE();
    uint8_t EnablePLL();
    // To Hsi48 and back again
    uint32_t ISavedAhbDividers;
#ifdef RCC_CFGR_SW_HSI48
    bool IHsi48WasOn;
#endif
public:
    // Frequency values
    uint32_t AHBFreqHz;     // HCLK: AHB Bus, Core, Memory, DMA; 48 MHz max
    uint32_t APBFreqHz;     // PCLK: APB Bus clock; 48 MHz max
    uint8_t TimerClkMulti = 1;
    // SysClk switching
    uint8_t SwitchTo(ClkSrc_t AClkSrc);
#if 1 // To Hsi48 and back again
    void SwitchToHsi48();
    void SwitchToHsi();
#endif
    // Clk Enables
    uint8_t EnableHSI();
    uint8_t EnableHSI48();
    void EnableLSE()    { RCC->BDCR |= RCC_BDCR_LSEON; }
    void SetLSELevel(LseLvl_t Lvl) {
        RCC->BDCR &= ~RCC_BDCR_LSEDRV;
        RCC->BDCR |= ((uint32_t)Lvl) << 3;
    }
    void EnableCRS();
    void EnableCSS()    { RCC->CR  |=  RCC_CR_CSSON; }
    // Clk Disables
    void DisableCSS()   { RCC->CR  &= ~RCC_CR_CSSON; }
    void DisableHSE()   { RCC->CR  &= ~RCC_CR_HSEON; }
    void DisableHSI()   { RCC->CR  &= ~RCC_CR_HSION; }
    void DisablePLL()   { RCC->CR  &= ~RCC_CR_PLLON; }
#ifdef RCC_CR2_HSI48ON
    void DisableHSI48() { RCC->CR2 &= ~RCC_CR2_HSI48ON; }
#endif
    void DisableCRS();
    // Checks
    bool IsLseOn()   { return (RCC->BDCR & RCC_BDCR_LSERDY); }
#ifdef RCC_CR2_HSI48ON
    bool IsHSI48On() { return (RCC->CR2 & RCC_CR2_HSI48ON); }
#endif
    uint32_t GetAhbApbDividers() { return RCC->CFGR & (RCC_CFGR_HPRE | RCC_CFGR_PPRE); }
    // Setups
#ifdef RCC_CFGR3_USBSW
    void SelectUSBClock_HSI48() { RCC->CFGR3 &= ~RCC_CFGR3_USBSW; }
#endif
    void SetupBusDividers(AHBDiv_t AHBDiv, APBDiv_t APBDiv);
    void SetupBusDividers(uint32_t Dividers);
    uint8_t SetupPLLDividers(uint8_t HsePreDiv, PllMul_t PllMul);
    void SetupPLLSrc(PllSrc_t Src);
    uint32_t GetSysClkHz();
    void UpdateFreqValues();
    void SetupFlashLatency(uint32_t FrequencyHz);
    uint32_t GetTimInputFreq(TIM_TypeDef* ITmr);
    void EnablePrefetch()  { FLASH->ACR |=  FLASH_ACR_PRFTBE; }
    void DisablePrefetch() { FLASH->ACR &= ~FLASH_ACR_PRFTBE; }

    void SetI2CClkSrc(I2C_TypeDef *i2c, i2cClk_t ClkSrc) {
        uint32_t tmp = RCC->CFGR3;
        if(i2c == I2C1) {   // i2c1 only is configured
            tmp &= ~RCC_CFGR3_I2C1SW;
            tmp |= ((uint32_t)ClkSrc) << 12;
            RCC->CFGR3 = tmp;
        }
    }

    void PrintFreqs();
};

extern Clk_t Clk;
#endif // Clocking

#endif // KL_LIB_H_
