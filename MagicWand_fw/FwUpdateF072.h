#pragma once

#include <inttypes.h>
#include "board.h"

/*
 * Here is flow.
 * 1) Write new FW binary to temporary place at FW_STORAGE_ADDR
 * 2) Jump to bootloader
 * 3) Bootloader checks if there is something good at FW_STORAGE_ADDR. if no - jumps to main app. If yes:
 * 3.1) Bootloader writes data from FW_STORAGE_ADDR to FW_START_ADDR
 * 3.2) Bootloader erases first page of FW_STORAGE_ADDR to invalidate storage contents
 * 3.3) Bootloader jumps to main app.
 *
 * Main app must copy Interrupt Vector Table to SRAM and remap addr 0x00000000 to start of SRAM.
 */

// Constants, see datasheet
#define FLASH_PAGE_SZ           2048L       // bytes in page, see datasheet
#define FW_UPD_BUF_SZ           FLASH_PAGE_SZ

class FwUpdater_t {
private:
    uint32_t SzTotal, CurrAddr;
public:
    FwUpdater_t() {
        SzTotal = 0;
        CurrAddr = 0xFFFFFFFF; // Just invalidate it
    }
    union {
        uint32_t DWord32[2];
        uint8_t Buf[FW_UPD_BUF_SZ];
    };
    void Restart();
    uint8_t WriteBuf(int32_t Sz, uint16_t *CrcIn);
    uint8_t CheckItAll(uint16_t *CrcIn);
    void JumpToBootloader();
};

extern FwUpdater_t FwUpdater;


// =============================== Examples ====================================
/*
 *  === Upgrade from disk ===
#define MainFwFileName_PATTERN  "FwMain*.bin"

    // Preparations
    if (FwUpdater.CheckFileOnDisk(MainFwfileName_PATTERN) == retvOk) {
        FwUpdater.Restart();
        Printf("Start FW Update\r\n");
        // Reading and flashing
        if (FwUpdater.ReadFileOnDisk() == retvOk) {
            Printf("FW Update completed\r\n");
            chThdSleepMilliseconds(45);
            FwUpdater.SwitchAndRun();
        }
    }
 *
 *
 *  === Upgrade from UART (TX) ===
#define TopFwFileName_PATTERN   "FwTop*.bin"

    // Preparations
    if (FwUpdater.CheckFileOnDisk(TopFwFileName_PATTERN) == retvOk) {
        Printf("Start Top FW Update\r\n");
        TopFwUpdate();
    }

void TopFwUpdate() {
    Iwdg::Reload();
    // Initiate update
    if (RS422.SendCmd(TIMEOUT_SHORT_ms, 1, "UpdateFwRestart") == retvOk) {
        if(RS422.Reply.NameIs("Ok")) {
            uint32_t Sz=0;
            uint16_t crc=0;
            Printf("FW start transmission\r");
            while(FwUpdater.ReadFileOnDiskToBuff(Sz, crc) == retvOk) {
                Iwdg::Reload();
//                Printf("ReadFile: Sz=%u crc=0x%X\r", Sz, crc);
                // Send data away
                if (RS422.SendCmdAndTransmitBuf(TIMEOUT_LONG_ms, FwUpdater.Buf, Sz, "UpdateFwWrite", "%u 0x%X", Sz, crc) == retvOk) {
                    if(RS422.Reply.NameIs("Ok")) {;}
                    else {
                        Printf("Send data failure. Reply '%S'\r", RS422.Reply.Name);
                        return;
                    }
                }
                else {
                    Printf("Send data failure TimeOut (NoAnswer)\r");
                    return;
                }
            } // while
            // End file
            Iwdg::Reload();
            FwUpdater.CalcCrcOfFullyFile(crc);
//            Printf("CrcTotal 0x%X\r", crc);
            Iwdg::Reload();
            if (RS422.SendCmd(TIMEOUT_LONG_ms, 1, "UpdateFwCheckAndRun", "0x%X", crc) == retvOk) {
                if(RS422.Reply.NameIs("Ok")) {
                    FwUpdater.DeliteFileOnDisk();
                    Printf("Update FW completed\r");
                }
                else
                    Printf("Check FW failure. Reply '%S'\r", RS422.Reply.Name);
            }
            Iwdg::Reload();
        }
        else
            Printf("Initiate update failure. Reply '%S'\r", RS422.Reply.Name);
    } // if
}
 *
 *
 *  === Upgrade from UART (RX) ===
void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();

#if 1 // ==== FW Update ====
    else if(PCmd->NameIs("UpdateFwRestart")) {
        FwUpdater.Restart();
        PShell->Ok();
    }
    else if(PCmd->NameIs("UpdateFwWrite")) {
        Iwdg::Reload();
        int32_t Sz;
        if(PCmd->GetNext<int32_t>(&Sz) != retvOk or Sz < 1 or Sz > FW_UPD_BUF_SZ) { PShell->BadParam(); return; }
        uint32_t crc32;
        if(PCmd->GetNext<uint32_t>(&crc32) != retvOk) { PShell->BadParam(); return; }
//        Printf("WriteFile: Sz=%u crc=0x%X\r", Sz, crc32);
        if(PShell->ReceiveBinaryToBuf(FwUpdater.Buf, Sz, TIMEOUT_LONG_ms) == retvOk) {
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
                FwUpdater.SwitchAndRun();
                break;
            case retvCRCError: PShell->CRCError(); break;
            default: PShell->Failure(); break;
        }
    }
#endif
}
 *
 */
