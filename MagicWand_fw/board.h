/*
 * board.h
 *
 *  Created on: 01.02.2017
 *      Author: Kreyl
 */

#pragma once

// ==== General ====
#define BOARD_NAME          "MagicWandPcb1"
#define APP_NAME            "MagicWand"

// MCU type as defined in the ST header.
#define STM32F072xB     // no matter, 8 or B

// Freq of external crystal if any. Leave it here even if not used.
#define CRYSTAL_FREQ_HZ         12000000

// Ch timer
#define STM32_ST_IRQ_PRIORITY   2
#define STM32_ST_USE_TIMER      14
#define SYS_TIM_CLK             (Clk.APBFreqHz)

#define SIMPLESENSORS_ENABLED   FALSE
#define BUTTONS_ENABLED         FALSE
#define ADC_REQUIRED            FALSE
#define I2C1_ENABLED            FALSE
#define I2C_USE_SEMAPHORE       FALSE

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
// PortMinTim_t: GPIO, Pin, Tim, TimChnl, invInverted, omPushPull, TopValue

// UART
#define UART_GPIO       GPIOA
#define UART_TX_PIN     9
#define UART_RX_PIN     10

// Buttons
#define BTN1_PIN        GPIOA, 0,  pudPullDown // WKUP1
#define BTN2_PIN        GPIOA, 2,  pudPullDown // WKUP4
#define BTN3_PIN        GPIOC, 13, pudPullDown // WKUP2

// LEDs
#define SYS_LED         { GPIOB, 4, TIM3, 1, invNotInverted, omPushPull, 255 }
#define LUMOS_LED       { GPIOB, 0, TIM3, 3, invNotInverted, omPushPull, 255 }
#define GREEN_LED       GPIOA, 5 // DAC2
#define LED_PWR_EN      GPIOB, 2

// IR LED
#define IR_LED          GPIOA, 4 // DAC1
#define IR_CARRIER_HZ   38000UL
#define IR_BIT_CNT_MAX  16L     // Just for buffer reservation

// ADC
#define ADC_BAT_IN      GPIOA, 1
#define ADC_BATMEAS_EN  GPIOA, 8

// Accelerometer
#define ACC_MISO        GPIOA, 6
#define ACC_MOSI        GPIOA, 7
#define ACC_CS          GPIOA, 15
#define ACC_SCK         GPIOB, 3
#define ACC_PWR         GPIOB, 14
#define ACC_INT1        GPIOB, 15 // WKUP7

// USB
#define USB_DETECT_PIN  GPIOB, 5 // WKUP6
#define USB_DM          GPIOA, 11
#define USB_DP          GPIOA, 12

// Others
#define IS_CHARGING_PIN GPIOC, 14
#define VIBRO_PIN       { GPIOB, 1, TIM3, 4, invNotInverted, omPushPull, 255 }

#endif // GPIO

#if 1 // ========================= Timer =======================================
// IR LED
#define TMR_DAC_SMPL    TIM7
// IR Receiver
#define TMR_IR_RX       TIM15
#define TMR_IR_RX_IRQ   TIM15_IRQn
#define TMR_IR_RX_IRQ_HNDLR   Vector90
#endif // Timer

#if 1 // =========================== DMA =======================================
#define STM32_DMA_REQUIRED  TRUE
// ==== Uart ====
#define UART_DMA_TX_MODE(Chnl) (STM32_DMA_CR_CHSEL(Chnl) | DMA_PRIORITY_LOW | STM32_DMA_CR_MSIZE_BYTE | STM32_DMA_CR_PSIZE_BYTE | STM32_DMA_CR_MINC | STM32_DMA_CR_DIR_M2P | STM32_DMA_CR_TCIE)
#define UART_DMA_RX_MODE(Chnl) (STM32_DMA_CR_CHSEL(Chnl) | DMA_PRIORITY_MEDIUM | STM32_DMA_CR_MSIZE_BYTE | STM32_DMA_CR_PSIZE_BYTE | STM32_DMA_CR_MINC | STM32_DMA_CR_DIR_P2M | STM32_DMA_CR_CIRC)
#define UART_DMA_TX     STM32_DMA_STREAM_ID(1, 2)
#define UART_DMA_RX     STM32_DMA_STREAM_ID(1, 5)
#define UART_DMA_CHNL   0   // Dummy

// === IR TX DAC ====
#define DAC_DMA         STM32_DMA_STREAM_ID(1, 3)
#define DAC_DMA_CHNL    0   // Dummy


#endif // DMA

#if 1 // ========================== USART ======================================
#define PRINTF_FLOAT_EN FALSE
#define UART_TXBUF_SZ   4096
#define UART_RXBUF_SZ   256
#define CMD_BUF_SZ      256

#define CMD_UART        USART1


#define CMD_UART_PARAMS \
    CMD_UART, UART_GPIO, UART_TX_PIN, UART_GPIO, UART_RX_PIN, \
    UART_DMA_TX, UART_DMA_RX, UART_DMA_TX_MODE(UART_DMA_CHNL), UART_DMA_RX_MODE(UART_DMA_CHNL), \
    uartclkHSI // independent clock

#endif
