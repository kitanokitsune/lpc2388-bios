/*
    タイマー割り込みのテスト
*/

#include "vic_lpc23xx.h"

void Timer0Handler(void) __attribute__ ((interrupt ("IRQ")));
