/*
 * UpdateFw.cpp
 *
 *  Created on: May 5, 2020
 *      Author: layst
 */

#include <FwUpdateF072.h>
#include "kl_crc.h"
#include "kl_lib.h"
#include "shell.h"
#ifdef UpdateFromDisk
#include "kl_fs_utils.h"
#endif

FwUpdater_t FwUpdater;

void FwUpdater_t::Restart() {
    SzTotal = 0;
    CurrAddr = FW_STORAGE_ADDR;
}

uint8_t FwUpdater_t::WriteBuf(int32_t Sz, uint16_t *CrcIn) {
    // Restart if not yet
    if(CurrAddr == 0xFFFFFFFF) Restart();
    uint16_t crc = Crc::CalculateCRC16HW(Buf, Sz);
    if(crc != *CrcIn) {
        *CrcIn = crc;
        return retvCRCError;
    }
//    Printf("%A; 0x%04X, 0x%04X\r", Buf, Sz, ' ', *CrcIn, crc); chThdSleepMilliseconds(45);
    if(Flash::ProgramBuf(Buf, Sz, CurrAddr) == retvOk) {
        CurrAddr += Sz;
        SzTotal += Sz;
        return retvOk;
    }
    else return retvFail;
}

uint8_t FwUpdater_t::CheckItAll(uint16_t *CrcIn) {
    if(SzTotal) {
        uint16_t crc = Crc::CalculateCRC16HW((uint8_t*)FW_STORAGE_ADDR, SzTotal);
        if(crc == *CrcIn) {
            // Store size and CRC
            DWord32[0] = SzTotal;
            DWord32[1] = crc;
            return Flash::ProgramBuf(DWord32, 2 * sizeof(uint32_t), FW_PARAMS_ADDR);
        }
        else {
            *CrcIn = crc;
            return retvCRCError;
        }
    }
    else return retvFail;
}

void FwUpdater_t::JumpToBootloader() {
    REBOOT(); // Bootloader will run after reset
}
