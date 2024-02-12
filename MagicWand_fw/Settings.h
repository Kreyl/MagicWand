/*
 * Settings.h
 *
 *  Created on: 20 нояб. 2022 г.
 *      Author: layst
 */


#ifndef SETTINGS_H_
#define SETTINGS_H_

#include <inttypes.h>

class Value_t {
public:
    uint32_t v;
    const uint32_t Default, Min, Max;
    const char* const Name;
    bool IsInfinity() { return v == (Max + 1UL); }
    void SetToDefault() { v = Default; }
    bool CheckAndSetIfOk(uint32_t AValue) {
        if(AValue < Min or AValue > (Max + 1)) return false;
        v = AValue;
        return true;
    }
    Value_t(uint32_t ADefault, uint32_t AMin, uint32_t AMax, const char* AName) :
        v(ADefault), Default(ADefault), Min(AMin), Max(AMax), Name(AName) {}
    operator uint32_t() const { return v; }
};

class Settings_t {
public:
    void Load();
    uint8_t Save();
    void SetAllToDefault();

    // IDs
    Value_t PlayerID { 0, 0, 127, "PlayerID" };
    Value_t TeamID   { 0, 0,  3,  "TeamID" };

    // Counts
    Value_t HitCnt           { 4, 1, 254, "HitCnt" };
    Value_t RoundsInMagazine { 9, 1, 254, "RoundsInMagazine" };
    Value_t MagazinesCnt     { 4, 1, 254, "MagazinesCnt" };

    // Delays
    Value_t ShotsPeriod_ms      { 252, 0, 9999, "ShotsPeriod_ms" };
    Value_t MagazineReloadDelay {   4, 0,   60, "MagazReloadDelay" };
    Value_t MinDelayBetweenHits {   0, 0,   60, "MinDelayBetwHits" };
    Value_t PulseLengthHit_ms   { 100, 1, 9999, "PulseLenHit_ms" };

    // TX
    Value_t TXPwr   {  90, 1,    255, "TXPwr" };
    Value_t PktType {   0, 0, 0xFFFF, "PktType" };
};

#define SETTINGS_CNT    (sizeof(Settings_t) / sizeof(Value_t))

extern Settings_t Settings;

#endif // SETTINGS_H_

