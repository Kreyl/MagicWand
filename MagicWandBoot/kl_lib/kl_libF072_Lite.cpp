/*
 * kl_lib.cpp
 *
 *  Created on: 10.12.2012
 *      Author: kreyl
 */

#include <malloc.h>
#include "board.h"
#include <string>
#include "kl_libF072_Lite.h"
#include "cmsis_gcc.h"
#include <sys/stat.h>

#if 1 // ========================== Syscalls ===================================
// See https://sourceware.org/newlib/libc.html#Stubs
extern "C" {
void* _sbrk(int incr) {
    extern uint8_t __heap_base__;
    extern uint8_t __heap_end__;

    static uint8_t *current_end = &__heap_base__;
    uint8_t *current_block_address = current_end;

    incr = (incr + 3) & (~3);
    if(current_end + incr > &__heap_end__) {
        errno = ENOMEM;
        return (void*) -1;
    }
    current_end += incr;
    return (void*)current_block_address;
}

int _write(int file, char *ptr, int len) { // XXX Make it good
    int count = len;
    if (file == 1) { // stdout
        while (count > 0) {
            while(!(USART1->ISR & USART_ISR_TXE));
            USART1->TDR = *ptr;
            ++ptr;
            --count;
        }
    }
    return len;
}

int _close(int file) {
    return -1;
}

int _fstat(int file, struct stat *st) {
    st->st_mode = S_IFCHR;
    return 0;
}

int _getpid(void) {
     return 1;
}

int _isatty(int file) {
     return 1;
}

#undef errno
extern int errno;
int _kill(int pid, int sig) {
    errno = EINVAL;
    return -1;
}

int _lseek(int file, int ptr, int dir) {
    return 0;
}

int _read(int file, char *ptr, int len) {
    return 0;
}

} // extern C
#endif // Syscalls


#if 1 // ================= FLASH & EEPROM ====================
#define FLASH_EraseTimeout      1000000
#define FLASH_ProgramTimeout    1000000
namespace Flash {

// ==== Common ====
void ClearPendingFlags() {
#ifdef STM32L1XX
    FLASH->SR = FLASH_SR_EOP | FLASH_SR_PGAERR | FLASH_SR_WRPERR;
#elif defined STM32L4XX
    FLASH->SR = FLASH_SR_EOP | FLASH_SR_PROGERR | FLASH_SR_WRPERR;
#elif defined STM32F7XX

#else
    FLASH->SR = FLASH_SR_EOP | FLASH_SR_PGERR | FLASH_SR_WRPRTERR;
#endif
}

#if defined STM32L4XX
void ClearErrFlags() {
    FLASH->SR |= FLASH_SR_OPTVERR | FLASH_SR_RDERR | FLASH_SR_FASTERR |
            FLASH_SR_MISERR | FLASH_SR_PGSERR | FLASH_SR_SIZERR |
            FLASH_SR_PGAERR | FLASH_SR_WRPERR | FLASH_SR_PROGERR | FLASH_SR_OPERR;
}

// Wait for a Flash operation to complete or a TIMEOUT to occur
uint8_t WaitForLastOperation(systime_t Timeout_st) {
    systime_t start = chVTGetSystemTimeX();
    while(FLASH->SR & FLASH_SR_BSY) {
        if(Timeout_st != TIME_INFINITE) {
            if(chVTTimeElapsedSinceX(start) >= Timeout_st) return retvTimeout;
        }
    }
    if((FLASH->SR & FLASH_SR_OPERR) or (FLASH->SR & FLASH_SR_PROGERR) or
            (FLASH->SR & FLASH_SR_WRPERR) or (FLASH->SR & FLASH_SR_PGAERR) or
            (FLASH->SR & FLASH_SR_SIZERR) or (FLASH->SR & FLASH_SR_PGSERR) or
            (FLASH->SR & FLASH_SR_MISERR) or (FLASH->SR & FLASH_SR_FASTERR) or
            (FLASH->SR & FLASH_SR_RDERR) or (FLASH->SR & FLASH_SR_OPTVERR)) {
        return retvFail;
    }
    // Clear EOP if set
    if(FLASH->SR & FLASH_SR_EOP) FLASH->SR |= FLASH_SR_EOP;
    return retvOk;
}
#else
static uint8_t GetStatus(void) {
    if(FLASH->SR & FLASH_SR_BSY) return retvBusy;
#if defined STM32L1XX
    else if(FLASH->SR & FLASH_SR_WRPERR) return retvWriteProtect;
    else if(FLASH->SR & (uint32_t)0x1E00) return retvFail;
#elif defined STM32F2XX

#elif defined STM32F7XX

#else
    else if(FLASH->SR & FLASH_SR_PGERR) return retvFail;
    else if(FLASH->SR & FLASH_SR_WRPRTERR) return retvFail;
#endif
    else return retvOk;
}

uint8_t WaitForLastOperation(uint32_t Timeout_st) {
    uint8_t status = retvOk;
    // Wait for a Flash operation to complete or a TIMEOUT to occur
    volatile uint32_t Cnt = 0;
    do {
        status = GetStatus();
        if(Cnt++ >= Timeout_st) return retvTimeout;
    } while(status == retvBusy);
    return status;
}
#endif

#if defined STM32L1XX
// When properly executed, the unlocking sequence clears the PELOCK bit in the FLASH_PECR register
static void UnlockEEAndPECR() {
    if(FLASH->PECR & FLASH_PECR_PELOCK) {
        // Unlocking the Data memory and FLASH_PECR register access
        FLASH->PEKEYR = 0x89ABCDEF;
        FLASH->PEKEYR = 0x02030405;
        FLASH->SR = FLASH_SR_WRPERR;        // Clear WriteProtectErr
        FLASH->PECR &= ~FLASH_PECR_FTDW;    // Disable fixed time programming
    }
}
// To lock the FLASH_PECR and the data EEPROM again, the software only needs to set the PELOCK bit in FLASH_PECR
static void LockEEAndPECR() { FLASH->PECR |= FLASH_PECR_PELOCK; }
#endif // L151

// ==== Flash ====
#if defined FLASH_CR_LOCK
bool IsLocked() { return (bool)(FLASH->CR & FLASH_CR_LOCK); }
#endif

void UnlockFlash() {
#if defined STM32L1XX
    UnlockEEAndPECR();
    FLASH->PRGKEYR = 0x8C9DAEBF;
    FLASH->PRGKEYR = 0x13141516;
#else
    FLASH->KEYR = 0x45670123;
    FLASH->KEYR = 0xCDEF89AB;
#endif
}
void LockFlash() {
#if defined STM32L1XX
    FLASH->PECR |= FLASH_PECR_PRGLOCK;
#else
    WaitForLastOperation(FLASH_ProgramTimeout);
    FLASH->CR |= FLASH_CR_LOCK;
#endif
}

// Beware: for L4xx, use Page Address (0...255), not absolute address kind of 0x08003f00. For Fxx, absolute addr is required.
uint8_t ErasePage(uint32_t PageAddress) {
    uint8_t status = WaitForLastOperation(FLASH_EraseTimeout);
    if(status == retvOk) {
        FLASH->CR |= FLASH_CR_PER;
        FLASH->AR = PageAddress;
        FLASH->CR |= FLASH_CR_STRT;
        __NOP(); // The software should start checking if the BSY bit equals 0 at least one CPU cycle after setting the STRT bit.
        // Wait for last operation to be completed
        status = WaitForLastOperation(FLASH_EraseTimeout);
        // Disable the PER Bit
        FLASH->CR &= 0x00001FFD;
    }
    return status;
}

uint8_t ProgramWord(uint32_t Address, uint32_t Data) {
    uint8_t status = WaitForLastOperation(FLASH_ProgramTimeout);
    if(status == retvOk) {
        FLASH->CR |= FLASH_CR_PG;
        // Program the new first half word
        *(volatile uint16_t*)Address = (uint16_t)Data;
        status = WaitForLastOperation(FLASH_ProgramTimeout);
        if(status == retvOk) {
            // Program the new second half word
            uint32_t tmp = Address + 2;
            *(volatile uint16_t*)tmp = Data >> 16;
            status = WaitForLastOperation(FLASH_ProgramTimeout);
        }
        FLASH->CR &= 0x00001FFE;  // FLASH_CR_PG_Reset Disable the PG Bit
    }
    return status;
}

uint8_t ProgramBuf(void *PData, uint32_t ByteSz, uint32_t Addr) {
    uint8_t status = retvOk;
    uint32_t *p = (uint32_t*)PData;
    uint32_t DataWordCount = (ByteSz + 3) / 4;
    LockFlash();
    UnlockFlash();
    // Erase flash
    ClearPendingFlags();
    status = ErasePage(Addr);
//    PrintfI("  Flash erase %u: %u\r", status);
    if(status != retvOk) {
//        PrintfI("Flash erase error\r");
        goto end;
    }
    // Program flash
    for(uint32_t i=0; i<DataWordCount; i++) {
        status = ProgramWord(Addr, *p);
        if(status != retvOk) {
//            PrintfI("Flash write error\r");
            goto end;
        }
        Addr += 4;
        p++;
    }
    end:
    LockFlash();
    return status;
}

// ==== Option bytes ====
void UnlockOptionBytes() {
#ifdef STM32L4XX
    FLASH->OPTKEYR = 0x08192A3B;
    FLASH->OPTKEYR = 0x4C5D6E7F;
#elif defined STM32L1XX
    UnlockEEAndPECR();
    FLASH->OPTKEYR = 0xFBEAD9C8;
    FLASH->OPTKEYR = 0x24252627;
#elif defined STM32F2XX

#elif defined STM32F7XX

#else
    UnlockFlash();
    FLASH->OPTKEYR = FLASH_OPTKEY1;
    FLASH->OPTKEYR = FLASH_OPTKEY2;
#endif
}
void LockOptionBytes() {
#ifdef STM32L4XX
    FLASH->CR |= FLASH_CR_OPTLOCK;
#elif defined STM32L1XX
    // To lock the option byte block again, the software only needs to set the OPTLOCK bit in FLASH_PECR
    FLASH->PECR |= FLASH_PECR_OPTLOCK;
#elif defined STM32F2XX

#elif defined STM32F7XX

#else
    CLEAR_BIT(FLASH->CR, FLASH_CR_OPTWRE);
    LockFlash();
#endif
}

void WriteOptionBytes(uint32_t OptReg) {
    ClearPendingFlags();
    if(WaitForLastOperation(FLASH_ProgramTimeout) == retvOk) {
#ifdef STM32L1XX
        uint32_t OptBytes = *(volatile uint32_t*)0x1FF80000;
        OptBytes &= 0xFF00FF00; // Clear RDP and nRDP
        OptBytes |= OptReg;      // Write RDP
        OptBytes |= (OptReg ^ 0xFF) << 16; // Write nRDP;
        *(volatile uint32_t*)0x1FF80000 = OptBytes;
        WaitForLastOperation(FLASH_ProgramTimeout);
#elif defined STM32L4XX
        FLASH->OPTR = OptReg;
        FLASH->CR |= FLASH_CR_OPTSTRT;
        WaitForLastOperation(FLASH_ProgramTimeout);
#elif defined STM32F2XX

#elif defined STM32F7XX

#else
        // Erase option bytes
        SET_BIT(FLASH->CR, FLASH_CR_OPTER);
        SET_BIT(FLASH->CR, FLASH_CR_STRT);
        uint8_t Rslt = WaitForLastOperation(FLASH_ProgramTimeout);
        CLEAR_BIT(FLASH->CR, FLASH_CR_OPTER);
        if(Rslt == retvOk) {
            SET_BIT(FLASH->CR, FLASH_CR_OPTPG); // Enable the Option Bytes Programming operation
            OB->RDP = OptReg;
            WaitForLastOperation(FLASH_ProgramTimeout);
            CLEAR_BIT(FLASH->CR, FLASH_CR_OPTPG); // Disable the Option Bytes Programming operation
        }
#endif
    }
}

// ==== Firmare lock ====
bool FirmwareIsLocked() {
#ifdef STM32L4XX
    return (FLASH->OPTR & 0xFF) != 0xAA;
#elif defined STM32L1XX
    return (FLASH->OBR & 0xFF) != 0xAA;
#elif defined STM32F2XX
    return false;
#elif defined STM32F7XX
    return false;
#else
    return (FLASH->OBR & 0b0110);
#endif
}

void LockFirmware() {
#ifdef STM32L4XX
    UnlockFlash();
    ClearPendingFlags();
    UnlockOptionBytes();
    if(WaitForLastOperation(FLASH_ProgramTimeout) == retvOk) {
        uint32_t reg = FLASH->OPTR;
        reg &= 0xFFFFFF00; // Any value except 0xAA or 0xCC
        FLASH->OPTR = reg;
        FLASH->CR |= FLASH_CR_OPTSTRT;
        WaitForLastOperation(FLASH_ProgramTimeout);

        reg = FLASH->PCROP1ER;
        reg |= 0x80000000;
        FLASH->PCROP1ER = reg;
        FLASH->CR |= FLASH_CR_OPTSTRT;
        WaitForLastOperation(FLASH_ProgramTimeout);
        FLASH->CR |= FLASH_CR_OBL_LAUNCH; // Option byte loading requested
        LockFlash();    // Will lock option bytes too
        WaitForLastOperation(FLASH_ProgramTimeout);
    }
#elif defined STM32F0XX

#else
    WriteOptionBytes(0x1D); // Any value except 0xAA or 0xCC
    // Set the OBL_Launch bit to reset system and launch the option byte loading
#ifdef STM32L1XX
    FLASH->PECR |= FLASH_PECR_OBL_LAUNCH;
#elif defined STM32F2XX || defined STM32F1XX

#elif defined STM32F7XX

#else
    SET_BIT(FLASH->CR, FLASH_CR_OBL_LAUNCH);
#endif
#endif
}
}; // Namespace FLASH
#endif

#if 1 // ============== Conversion operations ====================
namespace Convert {
void U16ToArrAsBE(uint8_t *PArr, uint16_t N) {
    uint8_t *p8 = (uint8_t*)&N;
    *PArr++ = *(p8 + 1);
    *PArr   = *p8;
}
void U32ToArrAsBE(uint8_t *PArr, uint32_t N) {
    uint8_t *p8 = (uint8_t*)&N;
    *PArr++ = *(p8 + 3);
    *PArr++ = *(p8 + 2);
    *PArr++ = *(p8 + 1);
    *PArr   = *p8;
}
uint16_t ArrToU16AsBE(uint8_t *PArr) {
    uint16_t N;
    uint8_t *p8 = (uint8_t*)&N;
    *p8++ = *(PArr + 1);
    *p8 = *PArr;
    return N;
}
uint32_t ArrToU32AsBE(uint8_t *PArr) {
    uint32_t N;
    uint8_t *p8 = (uint8_t*)&N;
    *p8++ = *(PArr + 3);
    *p8++ = *(PArr + 2);
    *p8++ = *(PArr + 1);
    *p8 = *PArr;
    return N;
}

uint8_t TryStrToUInt32(char* S, uint32_t *POutput) {
    if(*S == '\0') return retvEmpty;
    char *p;
    *POutput = strtoul(S, &p, 0);
    return (*p == 0)? retvOk : retvNotANumber;
}
uint8_t TryStrToInt32(char* S, int32_t *POutput) {
    if(*S == '\0') return retvEmpty;
    char *p;
    *POutput = strtol(S, &p, 0);
    return (*p == '\0')? retvOk : retvNotANumber;
}

uint16_t BuildUint16(uint8_t Lo, uint8_t Hi) {
    uint16_t r = Hi;
    r <<= 8;
    r |= Lo;
    return r;
}

uint32_t BuildUint32(uint8_t Lo, uint8_t MidLo, uint8_t MidHi, uint8_t Hi) {
    uint32_t r = Hi;
    r <<= 8;
    r |= MidHi;
    r <<= 8;
    r |= MidLo;
    r <<= 8;
    r |= Lo;
    return r;
}

// ==== Float ====
uint8_t TryStrToFloat(char* S, float *POutput) {
    if(*S == '\0') return retvEmpty;
    char *p;
    *POutput = strtof(S, &p);
    return (*p == '\0')? retvOk : retvNotANumber;
}
}; // namespace
#endif

#if 1 // ============================== Clocking ===============================
Clk_t Clk;
#define CLK_STARTUP_TIMEOUT     9999
#ifndef CRYSTAL_FREQ_HZ
#define CRYSTAL_FREQ_HZ     12000000
#endif
#include "CRS_defins.h"
// ==== Inner use ====
uint8_t Clk_t::EnableHSE() {
    RCC->CR |= RCC_CR_HSEON;    // Enable HSE
    // Wait until ready
    uint32_t StartUpCounter=0;
    do {
        if(RCC->CR & RCC_CR_HSERDY) return 0;   // HSE is ready
        StartUpCounter++;
    } while(StartUpCounter < CLK_STARTUP_TIMEOUT);
    return 1; // Timeout
}

uint8_t Clk_t::EnableHSI() {
    RCC->CR |= RCC_CR_HSION;
    // Wait until ready
    uint32_t StartUpCounter=0;
    do {
        if(RCC->CR & RCC_CR_HSIRDY) return 0;   // HSE is ready
        StartUpCounter++;
    } while(StartUpCounter < CLK_STARTUP_TIMEOUT);
    return 1; // Timeout
}

uint8_t Clk_t::EnablePLL() {
    RCC->CR |= RCC_CR_PLLON;
    // Wait until ready
    uint32_t StartUpCounter=0;
    do {
        if(RCC->CR & RCC_CR_PLLRDY) return 0;   // PLL is ready
        StartUpCounter++;
    } while(StartUpCounter < CLK_STARTUP_TIMEOUT);
    return 1; // Timeout
}

#ifdef RCC_CR2_HSI48ON
uint8_t Clk_t::EnableHSI48() {
    RCC->CR2 |= RCC_CR2_HSI48ON;
    for(volatile uint32_t i=0; i<999; i++); // Let it to stabilize. Otherwise program counter flies to space with Ozzy Osbourne
    uint32_t StartUpCounter=0;
    do {
        if(RCC->CR2 & RCC_CR2_HSI48RDY) return 0;   // Clock is ready
        StartUpCounter++;
    } while(StartUpCounter < CLK_STARTUP_TIMEOUT);
    return 1; // Timeout
}
#endif

uint32_t Clk_t::GetSysClkHz() {
    uint32_t tmp, PllSrc, PreDiv, PllMul;
    uint32_t SysClkHz = HSI_FREQ_HZ;
    // Figure out SysClk
    tmp = (RCC->CFGR & RCC_CFGR_SWS) >> 2;
    switch(tmp) {
        case csHSI:   SysClkHz = HSI_FREQ_HZ; break;
        case csHSE:   SysClkHz = CRYSTAL_FREQ_HZ; break;
        case csPLL: // PLL used as system clock source
            // Get different PLL dividers
            PreDiv = (RCC->CFGR2 & RCC_CFGR2_PREDIV) + 1;
            PllMul = ((RCC->CFGR & RCC_CFGR_PLLMUL) >> 18) + 2;
            if(PllMul > 16) PllMul = 16;
            // Which src is used as pll input?
            PllSrc = RCC->CFGR & RCC_CFGR_PLLSRC;
            switch(PllSrc) {
                case RCC_CFGR_PLLSRC_HSI_DIV2:   SysClkHz = HSI_FREQ_HZ / 2; break;
#ifdef RCC_CFGR_PLLSRC_HSI_PREDIV
                case RCC_CFGR_PLLSRC_HSI_PREDIV: SysClkHz = HSI_FREQ_HZ / PreDiv; break;
#endif
                case RCC_CFGR_PLLSRC_HSE_PREDIV: SysClkHz = CRYSTAL_FREQ_HZ / PreDiv; break;
#ifdef RCC_CFGR_PLLSRC_HSI48_PREDIV
                case RCC_CFGR_PLLSRC_HSI48_PREDIV: SysClkHz = HSI48_FREQ_HZ / PreDiv; break;
#endif
                default: break;
            }
            SysClkHz *= PllMul;
            break;
#ifdef RCC_CFGR_PLLSRC_HSI48_PREDIV
        case csHSI48: SysClkHz = HSI48_FREQ_HZ; break;
#endif
    } // switch
    return SysClkHz;
}


void Clk_t::UpdateFreqValues() {
    // AHB freq
    const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
    uint32_t tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
    AHBFreqHz = GetSysClkHz() >> tmp;
    // APB freq
    const uint8_t APBPrescTable[8] = {0, 0, 0, 0, 1, 2, 3, 4};
    tmp = APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE) >> 8];
    APBFreqHz = AHBFreqHz >> tmp;
    // Timer multi
    TimerClkMulti = (tmp == 0)? 1 : 2;
}

uint32_t Clk_t::GetTimInputFreq(TIM_TypeDef* ITmr) {
    uint32_t InputFreq = 0;
    uint32_t APB1prs = (RCC->CFGR & RCC_CFGR_PPRE) >> 8;
    if(APB1prs < 0b100) InputFreq = Clk.APBFreqHz;      // APB1CLK = HCLK / 1
    else InputFreq = Clk.APBFreqHz * 2;                 // APB1CLK = HCLK / (not 1)
    return InputFreq;
}

// ==== Common use ====
// AHB, APB
void Clk_t::SetupBusDividers(AHBDiv_t AHBDiv, APBDiv_t APBDiv) {
    uint32_t tmp = RCC->CFGR;
    tmp &= ~(RCC_CFGR_HPRE | RCC_CFGR_PPRE);  // Clear bits
    tmp |= ((uint32_t)AHBDiv)  << 4;
    tmp |= ((uint32_t)APBDiv) << 8;
    RCC->CFGR = tmp;
}
void Clk_t::SetupBusDividers(uint32_t Dividers) {
    uint32_t tmp = RCC->CFGR;
    tmp &= ~(RCC_CFGR_HPRE | RCC_CFGR_PPRE);  // Clear bits
    tmp |= Dividers;
    RCC->CFGR = tmp;
}

static inline uint8_t WaitSWS(uint32_t Desired) {
    uint32_t StartUpCounter=0;
    do {
        if((RCC->CFGR & RCC_CFGR_SWS) == Desired) return retvOk; // Done
        StartUpCounter++;
    } while(StartUpCounter < CLK_STARTUP_TIMEOUT);
    return retvTimeout;
}

// Enables HSI, switches to HSI
uint8_t Clk_t::SwitchTo(ClkSrc_t AClkSrc) {
    uint32_t tmp = RCC->CFGR & ~RCC_CFGR_SW;
    switch(AClkSrc) {
        case csHSI:
            if(EnableHSI() != retvOk) return 1;
            RCC->CFGR = tmp | RCC_CFGR_SW_HSI;  // Select HSI as system clock src
            return WaitSWS(RCC_CFGR_SWS_HSI);
            break;

        case csHSE:
            if(EnableHSE() != retvOk) return 2;
            RCC->CFGR = tmp | RCC_CFGR_SW_HSE;  // Select HSE as system clock src
            return WaitSWS(RCC_CFGR_SWS_HSE);
            break;

        case csPLL:
            if(EnableHSE() != retvOk) return 3;
            if(EnablePLL() != retvOk) return 4;
            RCC->CFGR = tmp | RCC_CFGR_SW_PLL; // Select PLL as system clock src
            return WaitSWS(RCC_CFGR_SWS_PLL);
            break;

#ifdef RCC_CFGR_SW_HSI48
        case csHSI48:
            if(EnableHSI48() != retvOk) return retvFail;
            RCC->CFGR = tmp | RCC_CFGR_SW_HSI48;
            return WaitSWS(RCC_CFGR_SWS_HSI48);
            break;
#endif
    } // switch
    return retvFail;
}

// Disable PLL first!
// HsePreDiv: 1...16; PllMul: pllMul[]
uint8_t Clk_t::SetupPLLDividers(uint8_t HsePreDiv, PllMul_t PllMul) {
    if(RCC->CR & RCC_CR_PLLON) return 1;    // PLL must be disabled to change dividers
    // Set HSE divider
    HsePreDiv--;
    if(HsePreDiv > 0x0F) HsePreDiv = 0x0F;
    uint32_t tmp = RCC->CFGR2;
    tmp &= ~RCC_CFGR2_PREDIV;
    tmp |= HsePreDiv;
    RCC->CFGR2 = tmp;
    // Setup PLL divider
    tmp = RCC->CFGR;
    tmp &= ~RCC_CFGR_PLLMUL;
    tmp |= ((uint32_t)PllMul) << 18;
    RCC->CFGR = tmp;
    return 0;
}

void Clk_t::SetupPLLSrc(PllSrc_t Src) {
    if(Src == plsHSIdiv2) RCC->CFGR &= ~RCC_CFGR_PLLSRC;
    else RCC->CFGR |= RCC_CFGR_PLLSRC;
}

// Setup Flash latency depending on CPU freq. Page 60 of ref manual.
// Call after UpdateFreqValues.
void Clk_t::SetupFlashLatency(uint32_t FrequencyHz) {
    uint32_t tmp = FLASH->ACR;
    if(FrequencyHz <= 24000000) tmp &= ~FLASH_ACR_LATENCY;
    else tmp |= FLASH_ACR_LATENCY;
    FLASH->ACR = tmp;
}


#ifdef RCC_CFGR_SW_HSI48
void Clk_t::EnableCRS() {
    RCC->APB1ENR |= RCC_APB1ENR_CRSEN;      // Enable CRS clocking
    RCC->APB1RSTR |= RCC_APB1RSTR_CRSRST;   // }
    RCC->APB1RSTR &= ~RCC_APB1RSTR_CRSRST;  // } Reset CRS
    // Configure Synchronization input
    // Clear SYNCDIV[2:0], SYNCSRC[1:0] & SYNCSPOL bits
    CRS->CFGR &= ~(CRS_CFGR_SYNCDIV | CRS_CFGR_SYNCSRC | CRS_CFGR_SYNCPOL);
    // Configure CRS prescaler, source & polarity
    CRS->CFGR |= (CRS_PRESCALER | CRS_SOURCE | CRS_POLARITY);
    // Configure Frequency Error Measurement
    CRS->CFGR &= ~(CRS_CFGR_RELOAD | CRS_CFGR_FELIM);
    CRS->CFGR |= (CRS_RELOAD_VAL | (CRS_ERROR_LIMIT << 16));
    // Adjust HSI48 oscillator smooth trimming
    CRS->CR &= ~CRS_CR_TRIM;
    CRS->CR |= (HSI48_CALIBRATN << 8);
    // Enable auto trimming
    CRS->CR |= CRS_CR_AUTOTRIMEN;
    // Setup USB clock source = HSI48
    RCC->CFGR3 &= ~RCC_CFGR3_USBSW;
    // Enable Frequency error counter
    CRS->CR |= CRS_CR_CEN;
}

void Clk_t::DisableCRS() {
    CRS->CR &= ~CRS_CR_CEN;
    RCC->APB1ENR &= ~RCC_APB1ENR_CRSEN;
    // Setup USB clock source = PLLCLK to allow switch off HSI48
    RCC->CFGR3 |= RCC_CFGR3_USBSW;
}

void Clk_t::SwitchToHsi48() {
    ISavedAhbDividers = GetAhbApbDividers();
//    Uart.PrintfNow("cr21=%X\r", RCC->CR2);
    IHsi48WasOn = IsHSI48On();
    SetupFlashLatency(48000000);
    SetupBusDividers(ahbDiv1, apbDiv1);
    if(!IHsi48WasOn) SwitchTo(csHSI48);  // Switch HSI48 on if was off
    UpdateFreqValues();
}
#endif

void Clk_t::SwitchToHsi() {
    SetupBusDividers(ISavedAhbDividers);
#ifdef RCC_CFGR_SW_HSI48
    if(!IHsi48WasOn) {    // Switch hsi48 off if was off
        SwitchTo(csHSI);
        DisableHSI48();
    }
#endif
    UpdateFreqValues();
    SetupFlashLatency(AHBFreqHz);
}

/*
 * Early initialization code.
 * This initialization must be performed just after stack setup and before
 * any other initialization.
 */
void __early_init(void) {
    // Enable HSI. It is enabled by default, but who knows.
    RCC->CR |= RCC_CR_HSION;
    while(!(RCC->CR & RCC_CR_HSIRDY));
    // SYSCFG clock enabled here because it is a multi-functional unit
    // shared among multiple drivers using external IRQs
    // DMA depends on it, too
    rccEnableAPB2(RCC_APB2ENR_SYSCFGEN, 1);
}
#endif // Clocking
