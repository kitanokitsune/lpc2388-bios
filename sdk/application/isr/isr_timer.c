/*
    タイマー割り込みのテスト
*/

#include "isr_timer.h"

#define USE_NESTED_IRQ  1


/****************************************************/
#if USE_NESTED_IRQ
/****************************************************/


static void isr_led_toggle(void)
{
    FIO1PIN ^= 0x00040000; /* Toggle LED state */
}

/* Timer Handler Wrapper */
void Timer0Handler(void)
{
    T0IR = 1;                /* Timer interrupt reset                */
    _IRQ_SAVE_CONTEXT();     /* save context and enter svc mode      */
    isr_led_toggle();     /* (user isr function)                  */
    _IRQ_RESTORE_CONTEXT();  /* back to irq mode and resotre context */

    VICAddress = 0x00000000; /* IRQ acknowledge */
}


/****************************************************/
#else  /* not USE_NESTED_IRQ */
/****************************************************/


void Timer0Handler(void)
{
    T0IR = 1;              /* Timer interrupt reset */
    FIO1PIN ^= 0x00040000; /* Toggle LED state */

    VICAddress = 0x00000000; /* IRQ acknowledge */
}


/****************************************************/
#endif

