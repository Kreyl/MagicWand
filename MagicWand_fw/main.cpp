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
//#include "FwUpdateF072.h"
//#include "ir.h"

#if 1 // ======================== Variables and defines ========================
// Forever
EvtMsgQ_t<EvtMsg_t, MAIN_EVT_Q_LEN> EvtQMain;
static const UartParams_t CmdUartParams(115200, CMD_UART_PARAMS);
CmdUart_t Uart{CmdUartParams};
void OnCmd(Shell_t *PShell);
void ITask();

LedSmooth_t Lumos{LUMOS_LED};

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
    Clk.SetupFlashLatency(8);
    Clk.UpdateFreqValues();

    // === Init OS ===
    halInit();
    chSysInit();

    // ==== Init hardware ====
    EvtQMain.Init();
    Uart.Init();
    Printf("\r%S %S\r\n", APP_NAME, XSTRINGIFY(BUILD_TIME));
    Clk.PrintFreqs();

//    Settings.Load();

    // LEDs
    Lumos.Init();

//    Lumos.Init();
//    Lumos.StartOrRestart(lsqFadeIn);
//    while(!FrontLEDs[1].IsIdle()) chThdSleepMilliseconds(45);

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

            case evtIdButtons:
//                Printf("Btn %u %u\r", Msg.BtnEvtInfo.BtnID, Msg.BtnEvtInfo.Type);
                // Main button == BTN1
                if(Msg.BtnEvtInfo.BtnID == 0) {
                    if(Msg.BtnEvtInfo.Type == beLongPress) {
                        IsEnteringSleep = !IsEnteringSleep;
                        if(IsEnteringSleep) Flames.FadeOut();
                        else Flames.FadeIn();
                    }
                    else if(Msg.BtnEvtInfo.Type == beRelease) { // Show VBat
                        uint8_t Percent = mV2PercentAlkaline(VBat);
                        Printf("VBat: %umV; Percent: %u\r", VBat, Percent);
                        ColorHSV_t hsv;
                        if     (Percent <= 20) hsv = {0,   100, 100};
                        else if(Percent <  60) hsv = {30,  100, 100};
                        else if(Percent <  90) hsv = {120, 100, 100};
                        else                   hsv = {240, 100, 100};
                        Flames.ShowCharge(hsv);
                    }
                }
                else if(Msg.BtnEvtInfo.BtnID == 1) Flames.SetNewSettings(Settings.GetNext());
                else if(Msg.BtnEvtInfo.BtnID == 2) Flames.SetNewSettings(Settings.GetPrev());
                break;

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

#if 1 // ======================= Command processing ============================
void OnCmd(Shell_t *PShell) {
    Cmd_t *PCmd = &PShell->Cmd;
//    Printf("%S\r", PCmd->Name);
    // Handle command
    if(PCmd->NameIs("Ping")) PShell->Ok();
    else if(PCmd->NameIs("Version")) PShell->Print("Version: %S %S\r", APP_NAME, XSTRINGIFY(BUILD_TIME));
//    else if(PCmd->NameIs("mem")) PrintMemoryInfo();


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
