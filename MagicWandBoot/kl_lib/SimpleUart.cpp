/*
 * SimpleUart.cpp
 *
 *  Created on: 1 февр. 2023 г.
 *      Author: layst
 */

#include "SimpleUart.h"
#include <stdarg.h>
#include "board.h"
#include "kl_libF072_Lite.h"
#include "kl_string.h"

void UartInit() {
    PinSetupAlterFunc(UART_GPIO, UART_TX_PIN, omPushPull, pudNone, AF1);
    rccEnableUSART1(FALSE);
    USART1->BRR = Clk.APBFreqHz / 115200UL;
    USART1->CR1 = USART_CR1_TE | USART_CR1_UE;
}

uint8_t IPutChar(char c) {
    while(!(CMD_UART->ISR & USART_ISR_TXE));
    USART1->TDR = c;
    return retvOk;
}

uint8_t IPutUint(uint32_t n, uint32_t base, uint32_t width, char filler) {
    char digits[10];
    uint32_t len = 0;
    // Place digits to buffer
    do {
        uint32_t digit = n % base;
        n /= base;
        digits[len++] = (digit < 10)? '0'+digit : 'A'+digit-10;
    } while(n > 0);
    // Add padding
    for(uint32_t i = len; i < width; i++) {
        if(IPutChar(filler) != retvOk) return retvOverflow;
    }
    // Print digits
    while(len > 0) {
        if(IPutChar(digits[--len]) != retvOk) return retvOverflow;
    }
    return retvOk;
} // IPutUint

void IVsPrintf(const char *format, va_list args) {
    const char *fmt = format;
    int width = 0, precision;
    char c, filler;
    while(true) {
        c = *fmt++;
        if(c == 0) return;
        if(c != '%') {  // Not %
            if(IPutChar(c) != retvOk) return;
            else continue;
        }

        // Here goes optional width specification.
        // If it starts with zero (zero_padded is true), it means we use '0' instead of ' ' as a filler.
        filler = ' ';
        if(*fmt == '0') {
            fmt++;
            filler = '0';
        }

        width = 0;
        while(true) {
            c = *fmt++;
            if(c >= '0' && c <= '9') c -= '0';
            else if (c == '*') c = va_arg(args, int);
            else break;
            width = width * 10 + c;
        }

        precision = 0;
        if(c == '.') {
            while(true) {
                c = *fmt++;
                if(c >= '0' && c <= '9') c -= '0';
                else if(c == '*') c = va_arg(args, int);
                else break;
                precision = precision * 10 + c;
            }
        }

        // Command decoding
        switch(c) {
            case 'c':
                if(IPutChar(va_arg(args, int)) != retvOk) return;
                break;

            case 's':
            case 'S': {
                char *s = va_arg(args, char*);
                width -= kl_strlen(s); // Do padding of string
                while(s and *s)    { if(IPutChar(*s++)   != retvOk) return; }
                while(width-- > 0) { if(IPutChar(filler) != retvOk) return; } // Do padding of string
            }
            break;

            case 'X':
                if(IPutUint(va_arg(args, uint32_t), 16, width, filler) != retvOk) return;
                break;
            case 'u':
                if(IPutUint(va_arg(args, uint32_t), 10, width, filler) != retvOk) return;
                break;

            case 'd':
            case 'i':
            {
                int32_t n = va_arg(args, int32_t);
                if(n < 0) {
                    if(IPutChar('-') != retvOk) return;
                    n = -n;
                }
                if(IPutUint(n, 10, width, filler) != retvOk) return;
            }
            break;

#if PRINTF_FLOAT_EN
            case 'f': {
                float f = (float)va_arg(args, double);
                if (f < 0) {
                    if(IPutChar('-') != retvOk) goto End;
                    f = -f;
                }
                int32_t n;
                if((precision == 0) || (precision > FLOAT_PRECISION)) precision = FLOAT_PRECISION;
                n = (int32_t)f;
                if(IPutUint(n, 10, width, filler) != retvOk) goto End;
                if(IPutChar('.') != retvOk) goto End;
                filler = '0';
                width = precision;
                n = (long)((f - n) * power10Table[precision - 1]);
                if(IPutUint(n, 10, width, filler) != retvOk) goto End;
            } break;
#endif

            case 'A': {
                uint8_t *arr = va_arg(args, uint8_t*);
                int32_t n = va_arg(args, int32_t);
                int32_t Delimiter = va_arg(args, int32_t);
                filler = '0';       // }
                width = 2;          // } 01 02 0A etc.; not 1 2 A
                for(int32_t i = 0; i < n; i++) {
                    if((i > 0) && (Delimiter != 0)) { // do not place delimiter before or after array
                        if(IPutChar((char)Delimiter) != retvOk) return;
                    }
                    if(IPutUint(arr[i], 16, width, filler) != retvOk) return;
                }
            } break;

            case '%':
                if(IPutChar('%') != retvOk) return;
                break;
        } // switch
    } // while
}


void Printf(const char *format, ...) {
    va_list args;
    va_start(args, format);
    IVsPrintf(format, args);
    va_end(args);

}

