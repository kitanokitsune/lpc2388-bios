/********************************************************************************/
/*!
	@file			vic_lpc23xx.c
	@author         Nemui Trinomius (http://nemuisan.blog.bai.ne.jp)
    @version        1.00
    @date           2011.04.20
	@brief          Interface of Display Device Basics for LPC23xx uC.
					"MCU Depend Layer"

    @section HISTORY
		2011.04.20	V1.00	Restart Here.

    @section LICENSE
		BSD License. See Copyright.txt
*/
/********************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "vic_lpc23xx.h"


/* Defines -------------------------------------------------------------------*/

/* Variables -----------------------------------------------------------------*/

/* Constants -----------------------------------------------------------------*/

/* Function prototypes -------------------------------------------------------*/

/* Functions -----------------------------------------------------------------*/

/**************************************************************************/
/*! 
    VIC Initialize
*/
/**************************************************************************/
void VIC_Init(void) 
{
    int i = 0;
    uint32_t *vect_addr, *vect_cntl;

    /* initialize VIC*/
    VICIntEnClr  = 0xffffffff;
    VICVectAddr  = 0;
    VICIntSelect = 0;

    /* set all the vector and vector control register to 0 */
    for ( i = 0; i < VIC_SIZE; i++ )
    {
		vect_addr = (uint32_t *)(VIC_BASE_ADDR + VECT_ADDR_OFFSET  + i*4);
		vect_cntl = (uint32_t *)(VIC_BASE_ADDR + VECT_PRIOR_OFFSET + i*4);
		*vect_addr = 0x0;				/* Default to 0x00000000 */
		*vect_cntl = VICVPx_LOWEST;		/* Default to Lowest */
    }

}

/**************************************************************************/
/*! 
    Register IRQ Function
*/
/**************************************************************************/
uint32_t Reg_IRQ(uint32_t IntSource,void *HandlerAddr, uint32_t Priority)
{
    uint32_t *vect_addr;
    uint32_t *vect_cntl;

	VICIntEnClr = 1 << IntSource;	/* Disable Interrupt */
    if (IntSource >= VIC_SIZE)
    {
		return (false);
    }
    else
    {
		Disable_IRQ(IntSource);	/* Disable Interrupt */
		/* find first un-assigned VIC address for the handler */
		vect_addr  = (uint32_t *)(VIC_BASE_ADDR + VECT_ADDR_OFFSET  + IntSource*4);
		vect_cntl  = (uint32_t *)(VIC_BASE_ADDR + VECT_PRIOR_OFFSET + IntSource*4);
		*vect_addr = (uint32_t)HandlerAddr;	/* set interrupt vector */
		*vect_cntl = Priority;
		return (true);
    }
}


/**************************************************************************/
/*! 
    Enable/Disable IRQ
*/
/**************************************************************************/
void Enable_IRQ(uint32_t IntSource)
{
	VICIntEnable |= (1L << IntSource);	/* Enable Interrupt */
}

void Disable_IRQ(uint32_t IntSource)
{
	VICIntEnable &= ~(1L << IntSource);	/* Disable Interrupt */
}



/**************************************************************************/
/*! 
    IRQ Timer Demo : Blink LED
*/
/**************************************************************************/
// タイマーのデモ
void InitTimer0(uint32_t tusec)
{
    T0MR0 = tusec - 1;
    T0MCR = 3;
    T0TCR |= 0x02;
    T0TCR = 1;
}
// タイマー割り込みのラッパー関数からで呼び出され、LEDの点灯状態をトグルする
static void usrisr_led_toggle(void)
{
    FIO1PIN ^= 0x00040000; /* Toggle LED state */
}
// タイマー割り込みデモ（ラッパー関数）
void _Demo_Timer0Handler(void)
{
    T0IR = 1;                /* Timer interrupt reset                */
    _IRQ_SAVE_CONTEXT();     /* save context and enter svc mode      */
    usrisr_led_toggle();     /* (user isr function)                  */
    _IRQ_RESTORE_CONTEXT();  /* back to irq mode and resotre context */

    VICAddress = 0x00000000; /* IRQ acknowledge */
}


/* End Of File ---------------------------------------------------------------*/
