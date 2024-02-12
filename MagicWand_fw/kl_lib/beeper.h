/*
 * beeper.h
 *
 *  Created on: 22 ����� 2015 �.
 *      Author: Kreyl
 */

#ifndef BEEPER_H__
#define BEEPER_H__

#include "ChunkTypes.h"
#include "kl_lib.h"

class Beeper_t : public BaseSequencer_t<BeepChunk_t> {
private:
    const PinOutputPWM_t IPin;
    uint32_t CurrFreq = 0;
    void ISwitchOff() { IPin.Set(0); }
    SequencerLoopTask_t ISetup() {
        IPin.Set(IPCurrentChunk->Volume);
        if(IPCurrentChunk->FreqSmooth == 0) { // If smooth time is zero, set now
            CurrFreq = IPCurrentChunk->Freq_Hz;
            IPin.SetFrequencyHz(CurrFreq);
            IPCurrentChunk++;   // goto next
        }
        else {
            if     (CurrFreq < IPCurrentChunk->Freq_Hz) CurrFreq += 100;
            else if(CurrFreq > IPCurrentChunk->Freq_Hz) CurrFreq -= 100;
            IPin.SetFrequencyHz(CurrFreq);
            // Check if completed now
            if(CurrFreq == IPCurrentChunk->Freq_Hz) IPCurrentChunk++;
            else { // Not completed
                // Calculate time to next adjustment
                uint32_t Delay = (IPCurrentChunk->FreqSmooth / (CurrFreq+4)) + 1;
                SetupDelay(Delay);
                return sltBreak;
            } // Not completed
        }
        return sltProceed;
    }
public:
    Beeper_t(const PwmSetup_t APinSetup) : BaseSequencer_t(), IPin(APinSetup) {}
    void Init() { IPin.Init(); }
    void Beep(uint32_t Freq_Hz, uint8_t Volume) {
        IPin.SetFrequencyHz(Freq_Hz);
        IPin.Set(Volume);
    }
    void Off() { IPin.Set(0); }
};

#endif //BEEPER_H__
