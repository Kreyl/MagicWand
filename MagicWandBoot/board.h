/*
 * board.h
 *
 *  Created on: 01.02.2017
 *      Author: Kreyl
 */

#pragma once

// ==== General ====
#define APP_NAME            "F072Boot"

// MCU type as defined in the ST header.
#define STM32F072xB     // no matter, 8 or B

// Freq of external crystal if any. Leave it here even if not used.
#define CRYSTAL_FREQ_HZ         12000000

// Flash
#define FLASH_START_ADDR        0x08000000UL
#define FW_BOOT_SZ              0x2000UL // 8192
#define FW_START_ADDR           (FLASH_START_ADDR + FW_BOOT_SZ)
#define FW_MAX_SZ               0xD000UL // 53248, about half of (128 total - 2 settings - 8 bootloader)
#define FW_PARAMS_ADDR          (FW_START_ADDR + FW_MAX_SZ)
#define FW_PARAMS_SZ            2048UL // PageSz
#define FW_STORAGE_ADDR         (FW_PARAMS_ADDR + FW_PARAMS_SZ)
#define SETTINGS_STORAGE_ADDR   0x0801F800UL // 128k - 2k, where 2k is Flash Page size

#if 1 // ========================== GPIO =======================================
// UART
#define UART_GPIO       GPIOA
#define UART_TX_PIN     9
#define CMD_UART        USART1

// Green LED
#define LUMOS_PIN       GPIOB, 4

#endif // GPIO
