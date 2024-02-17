#include "board.h"
#include "stm32f0xx.h"
#include "kl_libF072_Lite.h"
#include "SimpleUart.h"
#include "kl_crc.h"

void LedOn()  { PinSetHi(LUMOS_PIN); }
void LedOff() { PinSetLo(LUMOS_PIN); }

#define BUF_SZ     (2048UL / sizeof(uint32_t)) // Buf sz = Flash Page Sz in words32
uint32_t Buf[BUF_SZ];

void JumpToApp() {
    uint32_t JumpAddress = *(volatile uint32_t*)(FW_START_ADDR + 4);
    Printf("Jumping to 0x%08X\r", JumpAddress);
    ftVoidVoid JumpToAppFunc = (ftVoidVoid)JumpAddress;
    // Init App's stack pointer
    __set_MSP(*(volatile uint32_t*)FW_START_ADDR);
    JumpToAppFunc();
}

int main(void) {
    __disable_irq();
    // Reset all
    rccResetAHB(0x017E0000);
    rccResetAPB1(0x7AEE4933);
    rccResetAPB2(0x00475A01);

    // ==== Init Clock system ====
    Clk.EnablePrefetch();
    Clk.UpdateFreqValues();

    UartInit();
    Printf("\r%S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Printf("AHBFreq=%uMHz; APBFreq=%uMHz\r", Clk.AHBFreqHz/1000000, Clk.APBFreqHz/1000000);

    PinSetupOut(LUMOS_PIN, omPushPull);
    LedOn();


    // Check if there is something other than empty FLASH at storage
    uint32_t FwSz = *(volatile uint32_t*)FW_PARAMS_ADDR;
    uint32_t crcFlash = *(volatile uint32_t*)(FW_PARAMS_ADDR + sizeof(uint32_t));
    Printf("FwSz: %u; crc: 0x%04X\r", FwSz, crcFlash);
    if(FwSz > FW_MAX_SZ) JumpToApp(); // Bad size, do not flash
    // Check CRC
    uint16_t crcCalc = Crc::CalculateCRC16HW((uint8_t*)FW_STORAGE_ADDR, FwSz);
    if(crcFlash != crcCalc) {
        Printf("CRC Error: 0x%X\r\n", crcCalc);
        JumpToApp(); // CRC err, do not flash
    }
    Printf("Crc ok\r");
    // Copy fw from storage to main memory
    volatile uint32_t *PFData = (volatile uint32_t*)FW_STORAGE_ADDR;
    uint32_t FwSz32 = (FwSz + 3) / 4; // Fw sz in dwords
    uint32_t Dst = FW_START_ADDR;
    uint8_t Rslt;
    while(FwSz32) {
        // Fill RAM buf
        uint32_t Cnt32 = (FwSz32 > BUF_SZ)? BUF_SZ : FwSz32;
        for(uint32_t i=0; i<Cnt32; i++) Buf[i] = PFData[i];
        // Write it
        if(Flash::ProgramBuf(Buf, Cnt32 * 4, Dst) != retvOk) {
            Printf("\rWriteFail at 0x%08X\r", Dst);
            goto Failure;
        }
        Printf(".");
        PFData += Cnt32;
        FwSz32 -= Cnt32;
        Dst    += Cnt32 * 4;
    }
    Printf("\rWrite ok\r");
    // Erase params to pass flashing next time
    Buf[0] = 0xFFFFFFFF;
    Buf[1] = 0xFFFFFFFF;
    Rslt = Flash::ProgramBuf(Buf, 2 * sizeof(uint32_t), FW_PARAMS_ADDR);
    if(Rslt != retvOk) Printf("Erase Params Fail: %u\r", Rslt);
    JumpToApp();

    Failure:
    while(true) {
        DelayLoop(100000);
        LedOff();
        DelayLoop(100000);
        LedOn();
    }
}
