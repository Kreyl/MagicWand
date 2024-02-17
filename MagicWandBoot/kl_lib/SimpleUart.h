/*
 * SimpleUart.h
 *
 *  Created on: 1 февр. 2023 г.
 *      Author: layst
 */

#ifndef KL_LIB_SIMPLEUART_H_
#define KL_LIB_SIMPLEUART_H_

#include "board.h"
#include "stm32f0xx.h"

void UartInit();

void Printf(const char *format, ...);

#endif /* KL_LIB_SIMPLEUART_H_ */
