/********************************************************************************/
/*!
	@file			vic_lpc23xx.h
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
#ifndef __VIC_LPC23XX_H 
#define __VIC_LPC23XX_H 0x0100

#ifdef __cplusplus
 extern "C" {
#endif

/* Basic Includion */
#include <inttypes.h>
#include "lpc2300.h"
/* #include "LPC23xx_reg.h" */
/* #include "target.h" */

/* Macros Plus */
#define VIC_SIZE			32
#define VIC_BASE_ADDR	0xFFFFF000
#define VECT_ADDR_OFFSET	0x100
#define VECT_PRIOR_OFFSET 	0x200
#define VICAddress (*(volatile unsigned int *)(VIC_BASE_ADDR + 0xF00))


/* Register Definition of VIC FIQ Status Register */
/* Register Definition of VIC Raw Interrupt Status Register */
/* Register Definition of VIC Interrupt Enable Register */
/* Register Definition of VIC Interrupt Enable Clear Register */
#define INT_DWT			(0)
#define INT_ARMCORE_RX	(2)
#define INT_ARMCORE_TX  (3)
#define INT_TIMER0		(4)
#define INT_TIMER1		(5)
#define INT_UART0		(6)
#define INT_UART1		(7)
#define INT_PWM1		(8)
#define INT_I2C0		(9)
#define INT_SPI			(10)	/* SPI & SSP0 have same IRQ Number */
#define INT_SSP0		(10) 	/* SPI & SSP0 have same IRQ Number */
#define INT_SSP1		(11)
#define INT_PLL			(12)
#define INT_RTC			(13)
#define INT_EINT0		(14)
#define INT_EINT1		(15)
#define INT_EINT2		(16)
#define INT_EINT3		(17)
#define INT_AD0			(18)
#define INT_I2C1		(19)
#define INT_BOD			(20)
#define INT_ETHERNET	(21)
#define INT_USB			(22)
#define INT_CAN_1_2		(23)
#define INT_MCI			(24)
#define INT_GPDMA		(25)
#define INT_TIMER2		(26)
#define INT_TIMER3		(27)
#define INT_UART2		(28)
#define INT_UART3		(29)
#define INT_I2C2		(30)
#define INT_I2S			(31)

/* Register Definition of VIC Interrupt Select register */
//#define INT_IRQ			(0)
//#define INT_FIQ			(1)

/* Register Definition of VIC Vector Priority Registers x */
#define VICVPx_HIGHEST  (0x00)
#define VICVPx_LOWEST   (0x0F)

#ifndef true
#define true (1)
#endif
#ifndef false
#define false (0)
#endif


#define _IRQ_SAVE_CONTEXT() \
    asm volatile (                                                         \
        "STMFD SP!, {R3} \n\t"       /* Save R3 to use it as scratch   */  \
        "MRS   R3, SPSR \n\t"        /* Copy SPSR_irq to R3            */  \
        "STMFD SP!, {R3} \n\t"       /* Save SPSR_irq                  */  \
        "MSR   CPSR_c, #0x13 \n\t"   /* Enable IRQ and enter SVC Mode  */  \
        "STMFD SP!, {LR} \n"         /* Save LR in SVC Mode            */  \
    )

#define _IRQ_RESTORE_CONTEXT() \
    asm volatile (                                                          \
        "LDMFD SP!, {LR} \n\t"       /* Restore LR in SVC Mode           */ \
        "MSR   CPSR_c, #0x92 \n\t"   /* Disable IRQ and back to IRQ Mode */ \
        "LDMFD SP!, {R3} \n\t"       /* Restore SPSR_irq to R3           */ \
        "MSR   SPSR_cxsf, R3 \n\t"   /* Copy R3 to SPSR_irq              */ \
        "LDMFD SP!, {R3} \n"         /* Restore R3                       */ \
    )


/* Externals */
void VIC_Init(void);
uint32_t Reg_IRQ(uint32_t IntSource,void *HandlerAddr, uint32_t Priority);
void Enable_IRQ(uint32_t IntSource);
void Disable_IRQ(uint32_t IntSource);
void _Demo_Timer0Handler(void) __attribute__ ((interrupt ("IRQ")));
void InitTimer0(uint32_t tusec);


#ifdef __cplusplus
}
#endif

#endif /* __VIC_LPC23XX_H */
