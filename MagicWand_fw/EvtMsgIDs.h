/*
 * EvtMsgIDs.h
 *
 *  Created on: 21 ���. 2017 �.
 *      Author: Kreyl
 */

#pragma once

enum EvtMsgId_t {
    evtIdNone = 0, // Always

    // Pretending to eternity
    evtIdShellCmdRcvd,
    evtIdEverySecond,
    evtIdButtons,
    evtIdAdcRslt,
    evtIdPwrOffTimeout,
    evtIdLedsDone,

    evtIdCheckTimer,
    evtIdSleepTimer,

    evtIdLumosDone,

    // Usb
    evtIdUsbConnect,
    evtIdUsbDisconnect,
    evtIdUsbReady,
    evtIdUsbCmdRcvd,
    evtIdUsbInDone,
    evtIdUsbOutDone,

};
