/**
 * @file main.c
 * @author CuBeatSystems
 * @author Shinichiro Nakamura
 * @copyright
 * ===============================================================
 * Natural Tiny Shell (NT-Shell) Version 0.3.1
 * ===============================================================
 * Copyright (c) 2010-2016 Shinichiro Nakamura
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

/* 24D97 */

/* #include "chip.h" */
#include "uart.h"
#include "xprintf.h"
#include "ntshell.h"
#include "usrcmd.h"
#include "lcd1602.h"
#include "vic_lpc23xx.h"
/* #include <cr_section_macros.h> */

static int serial_read(char *buf, int cnt, void *extobj)
{
    for (int i = 0; i < cnt; i++) {
        buf[i] = uart0_getc();
    }
    return cnt;
}

static int serial_write(const char *buf, int cnt, void *extobj)
{
    for (int i = 0; i < cnt; i++) {
        uart0_putc(buf[i]);
    }
    return cnt;
}

static int user_callback(const char *text, void *extobj)
{
    usrcmd_execute(text);
    return 0;
}

static char *autoexecfile[] = {"AUTOEXEC.MOT", (char *)0};

int main(void)
{
    void *extobj = 0;
    ntshell_t nts;
/*    SystemCoreClockUpdate(); */

    uart0_init();
    xdev_out(uart0_putc);
    xdev_in(uart0_getc);
    xprintf("\n\nLPC2388 bios startup sequence...");

    // 割り込みのデモ：タイマー割り込みでLEDを点滅
    Reg_IRQ(INT_TIMER0, (void *)_Demo_Timer0Handler, VICVPx_LOWEST);
    InitTimer0(2500L*1000L);  /* 割り込み周期 2.5 sec = 2500*1000 usec */
    Enable_IRQ(INT_TIMER0);

    /* LCD test */
    LCD_Init();
    LCD_Clear();
    LCD_Puts("LPC2388 Monitor",16);
    LCD_SetCursorPos(0, 1);
    LCD_Puts(" COM:115200bps",16);

    xprintf("done\n\n");

    // exec AUTOEXEC.MOT file
    xprintf("Try to run %s file.\n", autoexecfile[0]);
    switch (exec_file(1, autoexecfile)) {
      case 1: xprintf("SD card is not ready.\n"); break;
      case 2: xprintf("%s not found.\n",autoexecfile[0]); break;
      case 3: xprintf("%s: Invalid S-format.\n",autoexecfile[0]); break;
      default: break;
    }

    xprintf("\n");
    xprintf("****************************\n");
    xprintf("* LPC2388 Monitor          *\n");
    xprintf("*                2018.9.1  *\n");
    xprintf("****************************\n");
    xprintf("'?' for help\n\n");
    ntshell_init(&nts, serial_read, serial_write, user_callback, extobj);
    ntshell_set_prompt(&nts, "LPC2388 MON>");
    while (1) {
        ntshell_execute(&nts);
    }
    return 0 ;
}

