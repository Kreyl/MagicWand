/*
 * Sequences.h
 *
 *  Created on: 09 ���. 2015 �.
 *      Author: Kreyl
 */

#ifndef SEQUENCES_H_
#define SEQUENCES_H_

#include "ChunkTypes.h"

#if 0 // ======================== Simple LED blink =============================
#define BLINK_DELAY_MS      180
const BaseChunk_t lbsqOk[] = {
        {csSetup, 1},
        {csWait, 720},
        {csSetup, 0},
        {csEnd}
};

const BaseChunk_t lbsqBlink3[] = {
        {csSetup, 1},
        {csWait, BLINK_DELAY_MS},
        {csSetup, 0},
        {csWait, BLINK_DELAY_MS},
        {csRepeat, 3},
        {csEnd}
};

const BaseChunk_t lbsqCharging[] = {
        {csSetup, 1},
        {csWait, 720},
        {csSetup, 0},
        {csWait, 270},
        {csGoto, 0}
};

const BaseChunk_t lbsqChargingDone[] = {
        {csSetup, 1},
        {csEnd}
};
#endif

#if 1 // =========================== LED Smooth ================================
#define LED_TOP_BRIGHTNESS  255

const LedSmoothChunk_t lsqFadeIn[] = {
        {csSetup, 207, LED_TOP_BRIGHTNESS},
        {csEnd}
};

const LedSmoothChunk_t lsqFadeInOut[] = {
        {csSetup, 207, LED_TOP_BRIGHTNESS},
        {csSetup, 207, 0},
        {csEnd}
};

const LedSmoothChunk_t lsqShot[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csWait, 72},
        {csSetup, 0, 0},
        {csEnd}
};


#define RELOADING_BLINK_DELAY   72
const LedSmoothChunk_t lsqReloading[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csWait, RELOADING_BLINK_DELAY},
        {csSetup, 0, 0},
        {csWait, RELOADING_BLINK_DELAY},
        {csGoto, 0}
};

const LedSmoothChunk_t lsqMagazinesEnded[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csEnd}
};

const LedSmoothChunk_t lsqHit[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csWait, 153},
        {csSetup, 0, 0},
        {csEnd}
};

const LedSmoothChunk_t lsqHitsEnded[] = {
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csEnd}
};

const LedSmoothChunk_t lsqUsbCmd[] = {
        {csSetup, 0, 0},
        {csWait, 90},
        {csSetup, 0, LED_TOP_BRIGHTNESS},
        {csEnd}
};
#endif

#if 1 // ============================= Beeper ==================================
#define BEEP_VOLUME     1   // Maximum 10
#define BEEP_VOLUME_MAX 11

#if 1 // ==== Notes ====
#define La_2    880

#define Do_3    1047
#define Do_D_3  1109
#define Re_3    1175
#define Re_D_3  1245
#define Mi_3    1319
#define Fa_3    1397
#define Fa_D_3  1480
#define Sol_3   1568
#define Sol_D_3 1661
#define La_3    1720
#define Si_B_3  1865
#define Si_3    1976

#define Do_4    2093
#define Do_D_4  2217
#define Re_4    2349
#define Re_D_4  2489
#define Mi_4    2637
#define Fa_4    2794
#define Fa_D_4  2960
#define Sol_4   3136
#define Sol_D_4 3332
#define La_4    3440
#define Si_B_4  3729
#define Si_4    3951

// Length
#define OneSixteenth    90
#define OneEighth       (OneSixteenth * 2)
#define OneFourth       (OneSixteenth * 4)
#define OneHalfth       (OneSixteenth * 8)
#define OneWhole        (OneSixteenth * 16)

#define NOTE(Note, Dur) {csSetup, BEEP_VOLUME, Note}, {csWait, Dur}, {csSetup, 0}, {csWait, 18}
#endif

// MORSE
#define MORSE_TONE {csSetup, BEEP_VOLUME, Do_3}
#define MORSE_DOT_LENGTH 180
#define MORSE_DASH_LENGTH MORSE_DOT_LENGTH * 3
#define MORSE_PAUSE_LENGTH MORSE_DOT_LENGTH
#define MORSE_PAUSE {csSetup, 0}, {csWait, MORSE_PAUSE_LENGTH}
#define MORSE_DOT MORSE_TONE, {csWait, MORSE_DOT_LENGTH}, MORSE_PAUSE
#define MORSE_DASH MORSE_TONE, {csWait, MORSE_DASH_LENGTH}, MORSE_PAUSE

// We are the champions
const BeepChunk_t bsqWeAreTheChampions[] = {
        NOTE(Fa_3, OneHalfth),
        NOTE(Mi_3, OneEighth),
        NOTE(Fa_3, OneEighth),
        NOTE(Mi_3, OneFourth),
        NOTE(Do_3, OneEighth),
        NOTE(Do_3, OneFourth),
        NOTE(La_2, OneEighth),
        NOTE(Re_3, OneHalfth),
        {csEnd}
};

// Type, BEEP_VOLUME, freq

const BeepChunk_t bsqShot[] = {
        {csSetup, BEEP_VOLUME_MAX, 6000, 0},
        {csWait, 40},
        {csSetup, BEEP_VOLUME_MAX, 1000, 18000},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqReloading[] = {
        {csSetup, BEEP_VOLUME, Si_3},   {csWait, RELOADING_BLINK_DELAY},
        {csSetup, 0},                   {csWait, RELOADING_BLINK_DELAY},
        {csSetup, BEEP_VOLUME, Re_D_4}, {csWait, RELOADING_BLINK_DELAY},
        {csSetup, 0},                   {csWait, RELOADING_BLINK_DELAY},
        {csSetup, BEEP_VOLUME, Fa_D_4}, {csWait, RELOADING_BLINK_DELAY},
        {csSetup, 0},                   {csWait, RELOADING_BLINK_DELAY},
        {csGoto, 0}
};

const BeepChunk_t bsqMagazReloaded[] = {
        {csSetup, BEEP_VOLUME_MAX, 1950, 0},
        {csWait, 40},
        {csSetup, BEEP_VOLUME_MAX, 2950, 120000},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqMagazEnded[] = {
        {csSetup, BEEP_VOLUME_MAX, 2250, 0},
        {csWait, 40},
        {csSetup, BEEP_VOLUME_MAX, 1050, 90000},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqHit[] = {
        {csSetup, BEEP_VOLUME_MAX, 100, 0},
        {csWait, 20},
        {csSetup, BEEP_VOLUME_MAX, 2700, 1000},
        {csWait, 10},
        {csSetup, BEEP_VOLUME_MAX, 100, 1000},
        {csWait, 100},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqHitsEnded[] = {
        {csSetup, BEEP_VOLUME_MAX, 260, 0},
        {csWait, 200},
        {csSetup, BEEP_VOLUME_MAX, 160, 0},
        {csWait, 200},
        {csSetup, 0},
        {csRepeat, 3},
        {csEnd}
};

const BeepChunk_t bsqBeepBeep[] = {
        {csSetup, BEEP_VOLUME, 1975},
        {csWait, 54},
        {csSetup, 0},
        {csWait, 54},
        {csSetup, BEEP_VOLUME, 1975},
        {csWait, 54},
        {csSetup, 0},
        {csEnd}
};

#if 1 // ==== Extensions ====
// Pill
const BeepChunk_t bsqBeepPillOk[] = {
        {csSetup, BEEP_VOLUME, Si_3},
        {csWait, 180},
        {csSetup, BEEP_VOLUME, Re_D_4},
        {csWait, 180},
        {csSetup, BEEP_VOLUME, Fa_D_4},
        {csWait, 180},
        {csSetup, 0},
        {csEnd}
};

const BeepChunk_t bsqBeepPillBad[] = {
        {csSetup, BEEP_VOLUME, Fa_4},
        {csWait, 180},
        {csSetup, BEEP_VOLUME, Re_4},
        {csWait, 180},
        {csSetup, BEEP_VOLUME, Si_3},
        {csWait, 180},
        {csSetup, 0},
        {csEnd}
};
#endif // ext
#endif // beeper

#endif // SEQUENCES_H_
