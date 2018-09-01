/*
    Interrupt Test
*/

#include "bios2388.h"
#include "xprintf.h"
#include "isr_timer.h"


int main(void)
{
    xprintf("\nInterrupt Test\n");

    VIC_Init();
    Reg_IRQ(INT_TIMER0, (void *)Timer0Handler, VICVPx_LOWEST);
    InitTimer0(500L*1000L); /* Timer Interval = 0.5sec = 500*1000usec */
    Enable_IRQ(INT_TIMER0);

    FIO1PIN &= ~0x00040000; /* LED On */

    return -1;
}

