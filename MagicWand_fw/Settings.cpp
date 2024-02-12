/*
 * Settings.cpp
 *
 *  Created on: 20 нояб. 2022 г.
 *      Author: layst
 */

#include "Settings.h"
#include "kl_lib.h"
#include "shell.h"

Settings_t Settings;

void Settings_t::Load() {
    uint32_t *p = (uint32_t*)SETTINGS_STORAGE_ADDR; // Pointer to storage
    Value_t *Arr = (Value_t*)this;
    for(uint32_t i=0; i<SETTINGS_CNT; i++) {
        if(Arr[i].CheckAndSetIfOk(*p++) == false) {
            SetAllToDefault();
            Printf("Default settings loaded\r\n");
            return;
        }
    }
    Printf("Settings loaded\r\n");
}

uint8_t Settings_t::Save() {
    uint8_t Rslt = retvOk;
    uint32_t Addr = SETTINGS_STORAGE_ADDR;
    Value_t *Arr = (Value_t*)this;
    // Prepare Flash
    chSysLock();
    Flash::LockFlash();
    Flash::UnlockFlash();
    Flash::ClearPendingFlags();
    // Erase flash
    if(Flash::ErasePage(Addr) != retvOk) {
        PrintfI("\rPage Erase fail\r");
        Rslt = retvFail;
        goto End;
    }
    // ==== Write flash ====
    for(uint32_t i=0; i<SETTINGS_CNT; i++) {
        if(Flash::ProgramWord(Addr, Arr[i].v) != retvOk) {
            PrintfI("Write Fail\r\n");
            Rslt = retvFail;
            goto End;
        }
        Addr += sizeof(uint32_t);
    }
    Flash::WaitForLastOperation(TIME_MS2I(450));
    End:
    Flash::LockFlash();
    chSysUnlock();
    return Rslt;
}

void Settings_t::SetAllToDefault() {
    Value_t *Arr = (Value_t*)this;
    for(uint32_t i=0; i<SETTINGS_CNT; i++) Arr[i].v = Arr[i].Default;
}
