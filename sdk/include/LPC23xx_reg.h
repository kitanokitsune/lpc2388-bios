/********************************************************************************/
/*!
	@file			LPC23xx_reg.h
	@author         Nemui Trinomius (http://nemuisan.blog.bai.ne.jp)
    @version        x.xx(Work In Progress)
    @date           20xx.xx.xx
	@brief          LPC23xx's Register Definitions.

    @section HISTORY
		20xx.xx.xx	Vx.xx	Start Here.

    @section LICENSE
		BSD License. See Copyright.txt
*/
/********************************************************************************/
#ifndef __LPC23xx_REG_H
#define __LPC23xx_REG_H	0x0XXX

#ifdef __cplusplus
 extern "C" {
#endif

/* Register Definition of MEMMAP */
typedef enum MEMMAP_enum
{
    MEMMAP_BOOTLOADER_MODE = (0UL<<0),  /* Interrupt vectors are re-mapped to Boot ROM. */
    MEMMAP_USERFLASH_MODE  = (1UL<<0),  /* Interrupt vectors are not re-mapped and reside in Flash.*/
    MEMMAP_USERRAM_MODE    = (2UL<<0),  /* Interrupt vectors are re-mapped to Static RAM. */
    MEMMAP_USEREXTMEMMODE  = (3UL<<0),  /* Improper setting of this value may result in
                                          incorrect operation of the device. */
} MEMMAP_t;
#define MEMMAP_bm	0x03


/* Register Definition of Reset Source Identification register */
typedef enum RSID_enum
{
    RSID_POR  = (1UL<<0),  /* Power On Reset  */
    RSID_EXTR = (1UL<<1),  /* External Reset  */
    RSID_WDTR = (1UL<<2),  /* WatchDog  Reset */
    RSID_BODR = (1UL<<3),  /* Brown Out Reset */
} RSID_t;
#define RSID_bm	0x0F

/* Register Definition of External Interrupt Flag register */
typedef enum EXTINT_enum
{
	/* In level-sensitive mode, this bit is set if the EINTx function is selected for its
	   pin, and the pin is in its active state. In edge-sensitive mode, this bit is set if
	   the EINT3 function is selected for its pin, and the selected edge occurs on
	   the pin.
	   This bit is cleared by writing a one to it, except in level sensitive mode when
	   the pin is in its active state */
    EXTINT_EXTINT0 = (1UL<<0),  /* This bit is cleared by writing a one to it, */
    EXTINT_EXTINT1 = (1UL<<1),  /* This bit is cleared by writing a one to it, */
    EXTINT_EXTINT2 = (1UL<<2),  /* This bit is cleared by writing a one to it, */
    EXTINT_EXTINT3 = (1UL<<3),  /* This bit is cleared by writing a one to it, */
} EXTINT_t;
#define EXTINT_ALL_bm	0x0F


/* Register Definition of EXTMODE */
typedef enum EXTMODE_enum
{
    EXTMODE0_LEVELSENSE = (0UL<<0),  /* Level-Sensitive   */
    EXTMODE0_EDGESENSE  = (1UL<<0),  /* Edge-Sensitive 	*/
    EXTMODE1_LEVELSENSE = (0UL<<1),  /* Level-Sensitive   */
    EXTMODE1_EDGESENSE  = (1UL<<1),  /* Edge-Sensitive 	*/
    EXTMODE2_LEVELSENSE = (0UL<<2),  /* Level-Sensitive   */
    EXTMODE2_EDGESENSE  = (1UL<<2),  /* Edge-Sensitive 	*/
    EXTMODE3_LEVELSENSE = (0UL<<3),  /* Level-Sensitive   */
    EXTMODE3_EDGESENSE  = (1UL<<3),  /* Edge-Sensitive 	*/
} EXTMODE_t;
#define EXTMODE_ALL_bm	0x0F
#define EXTMODE0_bm		(1UL<<0)
#define EXTMODE1_bm		(1UL<<1)
#define EXTMODE2_bm		(1UL<<2)
#define EXTMODE3_bm		(1UL<<3)


/* Register Definition of EXTPOLER */
typedef enum EXTPOLER_enum
{
    EXTPOLER0_LOW_OR_FALLING = (0UL<<0),  /* Low-Level  or Falling Edge Sensitive */
    EXTPOLER0_HIGH_OR_RISING = (1UL<<0),  /* High-Level or Rising  Edge Sensitive */
    EXTPOLER1_LOW_OR_FALLING = (0UL<<1),  /* Low-Level  or Falling Edge Sensitive */
    EXTPOLER1_HIGH_OR_RISING = (1UL<<1),  /* High-Level or Rising  Edge Sensitive */
    EXTPOLER2_LOW_OR_FALLING = (0UL<<2),  /* Low-Level  or Falling Edge Sensitive */
    EXTPOLER2_HIGH_OR_RISING = (1UL<<2),  /* High-Level or Rising  Edge Sensitive */
    EXTPOLER3_LOW_OR_FALLING = (0UL<<3),  /* Low-Level  or Falling Edge Sensitive */
    EXTPOLER3_HIGH_OR_RISING = (1UL<<3),  /* High-Level or Rising  Edge Sensitive */
} EXTPOLER_t;
#define EXTPOLER_ALL_bm	0x0F
#define EXTPOLER0_bm	(1UL<<0)
#define EXTPOLER1_bm	(1UL<<1)
#define EXTPOLER2_bm	(1UL<<2)
#define EXTPOLER3_bm	(1UL<<3)


/* Register Definition of AHB Configuration */
/*
typedef enum AHBCFG1_enum
{
} AHBCFG1_t;

typedef enum AHBCFG2_enum
{
} AHBCFG2_t;
*/


/* Register Definition of System Controls and Status register */
typedef enum SCS_enum
{
    SCS_GPIOM_GPIO01_LEGACY  = (0UL<<0),  /* GPIO0,1 Set to Classic LPC2000 Style (via APB2) */
    SCS_GPIOM_GPIO01_FAST    = (1UL<<0),  /* GPIO0,1 Set to via addresses in the on-chip memory range. */
    SCS_EMC_RESET_ENABLE 	 = (0UL<<1),  /* EMC Reset Enable */
    SCS_EMC_RESET_DISABLE 	 = (1UL<<1),  /* EMC Reset Disble */
    SCS_EMC_BURST_ENABLE 	 = (0UL<<2),  /* EMC Burst Control Enable */
    SCS_EMC_BURST_DISABLE 	 = (1UL<<2),  /* EMC Burst Control Disble */
	SCS_MCIPWR_PIN_LOW		 = (0UL<<3),  /* MCI Power Pin Low  */
	SCS_MCIPWR_PIN_HIGH		 = (1UL<<3),  /* MCI Power Pin High */
	SCS_OSCRANGE_1_TO_20MHZ  = (0UL<<4),  /* Main oscillator range select. */
	SCS_OSCRANGE_15_TO_24MHZ = (1UL<<4),  /* Main oscillator range select. */
	SCS_OSCEN_DISBLE         = (0UL<<5),  /* Main oscillator Disable. */
	SCS_OSCEN_ENABLE         = (1UL<<5),  /* Main oscillator Enable.  */
	SCS_OSCSTAT_NOTREADY	 = (0UL<<6),  /* Main oscillator is NOT Ready.    */
	SCS_OSCSTAT_READY	     = (1UL<<6),  /* Main oscillator is Ready to use. */
} SCS_t;
#define SCS_GPIOM_GPIO01_bm (1UL<<0)
#define SCS_EMC_RESET_bm	(1UL<<1)
#define SCS_EMC_BURST_bm	(1UL<<2)
#define SCS_EMC_MCIPWR_bm	(1UL<<3)
#define SCS_OSCRANGE_bm		(1UL<<4)
#define SCS_OSCEN_bm		(1UL<<5)
#define SCS_OSCSTAT_bm		(1UL<<6)
/*~~~ret al~~~*/

/* Register Definition of Clock Source Select register */
typedef enum CLKSRCSEL_enum
{
    CLKSRCSEL_INTERNAL_RC = (0UL),  /* Selects the Internal RC oscillator as the PLL clock source. */
    CLKSRCSEL_EXT_MAINOSC = (1UL),  /* Selects the main oscillator as the PLL clock source. */
    CLKSRCSEL_EXT_RTC 	  = (2UL),  /* Selects the RTC oscillator as the PLL clock source. */
} CLKSRCSEL_t;
#define CLKSRCSEL_bm (3UL<<0)


/* Register Definition of PLL Control register */
typedef enum PLLCON_enum
{
    PLLCON_PLLE = (1UL<<0),  /* PLL Enable. */
    PLLCON_PLLC = (1UL<<1),  /* PLL Connect. */
} PLLCON_t;
#define PLLCON_bm 					(3UL<<0)
#define PLLMODE_OFF 				(0UL)
#define PLLMODE_ACTIVE_NOCONNECT	(1UL)
#define PLLMODE_ACTIVE_CONNECT		(3UL)


/* Register Definition of PLL Control register */
#define PLLCFG_MSEL_bm (0x00007FFFUL<<0)
#define PLLCFG_NSEL_bm (0x000000FFUL<<16)


/* Register Definition of PLL Status register */
#define PLLSTAT_MSEL_bm  		(0x00007FFFUL<<0)
#define PLLSTAT_NSEL_bm  		(0x000000FFUL<<16)
#define PLLSTAT_PLLE_bm  		(1UL<<24)
#define PLLSTAT_PLLC_bm  		(1UL<<25)
#define PLLSTAT_PLOCK_bm 		(1UL<<26)
#define PLLSTAT_CONNECTED		(1UL<<25)
#define PLLSTAT_LOCKED			(1UL<<26)
#define PLLSTAT_ACTIVE_CONNECT 	(3UL<<24)
#define PLLSTAT_OFF	 			(0UL<<24)


/* Register Definition of CPU Clock Configuration register */
#define CCLKCFG_CCLKSEL_bm		(0xFF)


/* Register Definition of USB Clock Configuration register */
#define USBCLKCFG_USBSEL_bm		(0x0F)


/* Register Definition of UIRC Trim Register */
/* This register is used to trim the on-chip 4 MHz oscillator. */
#define IRCTRIM_bm				(0x00FF)


/* Register Definition of Peripheral Clock Selection registers */
typedef enum PCLKDIV_enum
{
	PCLKDIV_4 = (0UL),
	PCLKDIV_1 = (1UL),
	PCLKDIV_2 = (2UL),
	PCLKDIV_8 = (3UL),
	PCLKDIV_6 = (3UL),
} PCLKDIV_t;
#define PCLKSEL_DIV_1_ALL	(0x55555555UL)
#define PCLKSEL_DIV_2_ALL	(0xAAAAAAAAUL)
#define PCLKSEL_DIV_4_ALL	(0x00000000UL)
#define PCLKSEL_DIV_8_ALL	(0xFFFFFFFFUL)

typedef enum PCLKSEL0_enum
{
	PCLKSEL0_WDT_DIV_1 		= (PCLKDIV_1<<0),
	PCLKSEL0_WDT_DIV_2 		= (PCLKDIV_2<<0),
	PCLKSEL0_WDT_DIV_4 		= (PCLKDIV_4<<0),
	PCLKSEL0_WDT_DIV_8 		= (PCLKDIV_8<<0),
	PCLKSEL0_TIMER0_DIV_1	= (PCLKDIV_1<<2),
	PCLKSEL0_TIMER0_DIV_2	= (PCLKDIV_2<<2),
	PCLKSEL0_TIMER0_DIV_4 	= (PCLKDIV_4<<2),
	PCLKSEL0_TIMER0_DIV_8 	= (PCLKDIV_8<<2),
	PCLKSEL0_TIMER1_DIV_1	= (PCLKDIV_1<<4),
	PCLKSEL0_TIMER1_DIV_2	= (PCLKDIV_2<<4),
	PCLKSEL0_TIMER1_DIV_4 	= (PCLKDIV_4<<4),
	PCLKSEL0_TIMER1_DIV_8 	= (PCLKDIV_8<<4),
	PCLKSEL0_UART0_DIV_1	= (PCLKDIV_1<<6),
	PCLKSEL0_UART0_DIV_2	= (PCLKDIV_2<<6),
	PCLKSEL0_UART0_DIV_4 	= (PCLKDIV_4<<6),
	PCLKSEL0_UART0_DIV_8 	= (PCLKDIV_8<<6),
	PCLKSEL0_UART1_DIV_1	= (PCLKDIV_1<<8),
	PCLKSEL0_UART1_DIV_2	= (PCLKDIV_2<<8),
	PCLKSEL0_UART1_DIV_4 	= (PCLKDIV_4<<8),
	PCLKSEL0_UART1_DIV_8 	= (PCLKDIV_8<<8),
	PCLKSEL0_PWM1_DIV_1		= (PCLKDIV_1<<12),
	PCLKSEL0_PWM1_DIV_2		= (PCLKDIV_2<<12),
	PCLKSEL0_PWM1_DIV_4 	= (PCLKDIV_4<<12),
	PCLKSEL0_PWM1_DIV_8 	= (PCLKDIV_8<<12),
	PCLKSEL0_I2C0_DIV_1		= (PCLKDIV_1<<14),
	PCLKSEL0_I2C0_DIV_2		= (PCLKDIV_2<<14),
	PCLKSEL0_I2C0_DIV_4 	= (PCLKDIV_4<<14),
	PCLKSEL0_I2C0_DIV_8 	= (PCLKDIV_8<<14),
	PCLKSEL0_SPI_DIV_1		= (PCLKDIV_1<<16),
	PCLKSEL0_SPI_DIV_2		= (PCLKDIV_2<<16),
	PCLKSEL0_SPI_DIV_4 		= (PCLKDIV_4<<16),
	PCLKSEL0_SPI_DIV_8 		= (PCLKDIV_8<<16),
/*	PCLKSEL0_RTC_DIV_1		= (PCLKDIV_1<<18), *//*"01(DIV1)is illegal for RTC" */
	PCLKSEL0_RTC_DIV_2		= (PCLKDIV_2<<18),
	PCLKSEL0_RTC_DIV_4 		= (PCLKDIV_4<<18),
	PCLKSEL0_RTC_DIV_8 		= (PCLKDIV_8<<18),
	PCLKSEL0_SSP1_DIV_1		= (PCLKDIV_1<<20),
	PCLKSEL0_SSP1_DIV_2		= (PCLKDIV_2<<20),
	PCLKSEL0_SSP1_DIV_4 	= (PCLKDIV_4<<20),
	PCLKSEL0_SSP1_DIV_8 	= (PCLKDIV_8<<20),
	PCLKSEL0_DAC_DIV_1		= (PCLKDIV_1<<22),
	PCLKSEL0_DAC_DIV_2		= (PCLKDIV_2<<22),
	PCLKSEL0_DAC_DIV_4 		= (PCLKDIV_4<<22),
	PCLKSEL0_DAC_DIV_8 		= (PCLKDIV_8<<22),
	PCLKSEL0_ADC_DIV_1		= (PCLKDIV_1<<24),
	PCLKSEL0_ADC_DIV_2		= (PCLKDIV_2<<24),
	PCLKSEL0_ADC_DIV_4 		= (PCLKDIV_4<<24),
	PCLKSEL0_ADC_DIV_8 		= (PCLKDIV_8<<24),
 /* PCLK_CAN1/2 must be set to the same value as PCLK_ACF. */
	PCLKSEL0_CAN1_DIV_1		= (PCLKDIV_1<<26),
	PCLKSEL0_CAN1_DIV_2		= (PCLKDIV_2<<26),
	PCLKSEL0_CAN1_DIV_4 	= (PCLKDIV_4<<26),
	PCLKSEL0_CAN1_DIV_6 	= (PCLKDIV_6<<26), /* "11" = DIV6 on CAN /CANFILTER */
 /* PCLK_CAN1/2 must be set to the same value as PCLK_ACF. */
	PCLKSEL0_CAN2_DIV_1		= (PCLKDIV_1<<28),
	PCLKSEL0_CAN2_DIV_2		= (PCLKDIV_2<<28),
	PCLKSEL0_CAN2_DIV_4 	= (PCLKDIV_4<<28),
	PCLKSEL0_CAN2_DIV_6		= (PCLKDIV_6<<28), /* "11" = DIV6 on CAN /CANFILTER */
 /* PCLK_CAN1/2 must be set to the same value as PCLK_ACF. */
	PCLKSEL0_ACF_DIV_1		= (PCLKDIV_1<<30),
	PCLKSEL0_ACF_DIV_2		= (PCLKDIV_2<<30),
	PCLKSEL0_ACF_DIV_4 		= (PCLKDIV_4<<30),
	PCLKSEL0_ACF_DIV_6		= (PCLKDIV_6<<30), /* "11" = DIV6 on CAN /CANFILTER */
} PCLKSEL0_t;

typedef enum PCLKSEL1_enum
{
	PCLKSEL1_BAT_RAM_DIV_1 	= (PCLKDIV_1<<0),
	PCLKSEL1_BAT_RAM_DIV_2 	= (PCLKDIV_2<<0),
	PCLKSEL1_BAT_RAM_DIV_4 	= (PCLKDIV_4<<0),
	PCLKSEL1_BAT_RAM_DIV_8 	= (PCLKDIV_8<<0),
	PCLKSEL1_GPIO_DIV_1 	= (PCLKDIV_1<<2),
	PCLKSEL1_GPIO_DIV_2 	= (PCLKDIV_2<<2),
	PCLKSEL1_GPIO_DIV_4 	= (PCLKDIV_4<<2),
	PCLKSEL1_GPIO_DIV_8 	= (PCLKDIV_8<<2),
	PCLKSEL1_PCB_DIV_1 		= (PCLKDIV_1<<4),
	PCLKSEL1_PCB_DIV_2 		= (PCLKDIV_2<<4),
	PCLKSEL1_PCB_DIV_4 		= (PCLKDIV_4<<4),
	PCLKSEL1_PCB_DIV_8 		= (PCLKDIV_8<<4),
	PCLKSEL1_I2C1_DIV_1 	= (PCLKDIV_1<<6),
	PCLKSEL1_I2C1_DIV_2 	= (PCLKDIV_2<<6),
	PCLKSEL1_I2C1_DIV_4 	= (PCLKDIV_4<<6),
	PCLKSEL1_I2C1_DIV_8 	= (PCLKDIV_8<<6),
	PCLKSEL1_SSP0_DIV_1 	= (PCLKDIV_1<<10),
	PCLKSEL1_SSP0_DIV_2 	= (PCLKDIV_2<<10),
	PCLKSEL1_SSP0_DIV_4 	= (PCLKDIV_4<<10),
	PCLKSEL1_SSP0_DIV_8 	= (PCLKDIV_8<<10),
	PCLKSEL1_TIMER2_DIV_1 	= (PCLKDIV_1<<12),
	PCLKSEL1_TIMER2_DIV_2 	= (PCLKDIV_2<<12),
	PCLKSEL1_TIMER2_DIV_4 	= (PCLKDIV_4<<12),
	PCLKSEL1_TIMER2_DIV_8	= (PCLKDIV_8<<12),
	PCLKSEL1_TIMER3_DIV_1 	= (PCLKDIV_1<<14),
	PCLKSEL1_TIMER3_DIV_2 	= (PCLKDIV_2<<14),
	PCLKSEL1_TIMER3_DIV_4 	= (PCLKDIV_4<<14),
	PCLKSEL1_TIMER3_DIV_8	= (PCLKDIV_8<<14),
	PCLKSEL1_UART2_DIV_1 	= (PCLKDIV_1<<16),
	PCLKSEL1_UART2_DIV_2 	= (PCLKDIV_2<<16),
	PCLKSEL1_UART2_DIV_4 	= (PCLKDIV_4<<16),
	PCLKSEL1_UART2_DIV_8	= (PCLKDIV_8<<16),
	PCLKSEL1_UART3_DIV_1 	= (PCLKDIV_1<<18),
	PCLKSEL1_UART3_DIV_2 	= (PCLKDIV_2<<18),
	PCLKSEL1_UART3_DIV_4 	= (PCLKDIV_4<<18),
	PCLKSEL1_UART3_DIV_8	= (PCLKDIV_8<<18),
	PCLKSEL1_I2C2_DIV_1 	= (PCLKDIV_1<<20),
	PCLKSEL1_I2C2_DIV_2 	= (PCLKDIV_2<<20),
	PCLKSEL1_I2C2_DIV_4 	= (PCLKDIV_4<<20),
	PCLKSEL1_I2C2_DIV_8		= (PCLKDIV_8<<20),
	PCLKSEL1_I2S_DIV_1 		= (PCLKDIV_1<<22),
	PCLKSEL1_I2S_DIV_2 		= (PCLKDIV_2<<22),
	PCLKSEL1_I2S_DIV_4 		= (PCLKDIV_4<<22),
	PCLKSEL1_I2S_DIV_8		= (PCLKDIV_8<<22),
	PCLKSEL1_MCI_DIV_1 		= (PCLKDIV_1<<24),
	PCLKSEL1_MCI_DIV_2 		= (PCLKDIV_2<<24),
	PCLKSEL1_MCI_DIV_4 		= (PCLKDIV_4<<24),
	PCLKSEL1_MCI_DIV_8		= (PCLKDIV_8<<24),
	PCLKSEL1_SYSCON_DIV_1 	= (PCLKDIV_1<<28),
	PCLKSEL1_SYSCON_DIV_2 	= (PCLKDIV_2<<28),
	PCLKSEL1_SYSCON_DIV_4 	= (PCLKDIV_4<<28),
	PCLKSEL1_SYSCON_DIV_8	= (PCLKDIV_8<<28),
} PCLKSEL1_t;
#define PCLKSEL1_MCI_DIV_bm (PCLKDIV_8<<24)

/* Register Definition of Power Mode Control register */
typedef enum PCON_enum
{
	PCON_PM0 	= (1UL<<0),
	PCON_PM1 	= (1UL<<1),
	PCON_BODPDM = (1UL<<2),
	PCON_BOGD 	= (1UL<<3),
	PCON_BORD 	= (1UL<<4),
	PCON_PM2 	= (1UL<<7),
} PCON_t;
#define PCON_PMX_bm				(PCON_PM0|PCON_PM1|PCON_PM2)
#define PCON_NOMAL_MODE			(0)
#define PCON_IDOL_MODE  		(PCON_PM0)
#define PCON_SLEEP_MODE  		(PCON_PM0|PCON_PM2)
#define PCON_POWERDOWN_MODE  	(PCON_PM1)
#define PCON_DEEPPOWERDOWN_MODE	(PCON_PM1|PCON_PM2)


/* Register Definition of Interrupt Wakeup Register */
typedef enum INTWAKE_enum
{
	INTWAKE_EXTWAKE0 	= (1UL<<0),
	INTWAKE_EXTWAKE1 	= (1UL<<1),
	INTWAKE_EXTWAKE2 	= (1UL<<2),
	INTWAKE_EXTWAKE3 	= (1UL<<3),
	INTWAKE_EXTWAKE 	= (1UL<<4),
	INTWAKE_USBWAKE 	= (1UL<<5),
	INTWAKE_CANWAKE 	= (1UL<<6),
	INTWAKE_GPIO0WAKE 	= (1UL<<7),
	INTWAKE_GPIO2WAKE 	= (1UL<<8),
	INTWAKE_BODWAKE 	= (1UL<<14),
	INTWAKE_RTCWAKE 	= (1UL<<15),
} INTWAKE_t;
#define INTWAKE_bm		(0xFFFF)


/* Register Definition of Power Control for Peripherals register */
typedef enum PCOMP_enum
{
	PCTIM0 	= (1UL<<1),
	PCTIM1 	= (1UL<<2),
	PCUART0 = (1UL<<3),
	PCUART1 = (1UL<<4),
	PCPWM1 	= (1UL<<6),
	PCI2C0 	= (1UL<<7),
	PCSPI 	= (1UL<<8),
	PCRTC 	= (1UL<<9),
	PCSSP1 	= (1UL<<10),
	PCEMC 	= (1UL<<11),
	PCAD 	= (1UL<<12),
	PCCAN1 	= (1UL<<13),
	PCCAN2 	= (1UL<<14),
	PCI2C1 	= (1UL<<19),
	PCSSP0 	= (1UL<<21),
	PCTIM2 	= (1UL<<22),
	PCTIM3 	= (1UL<<23),
	PCUART2 = (1UL<<24),
	PCUART3 = (1UL<<25),
	PCI2C2 	= (1UL<<26),
	PCI2S 	= (1UL<<27),
	PCSDC	= (1UL<<28),
	PCGPDMA = (1UL<<29),
	PCENET 	= (1UL<<30),
	PCUSB 	= (1UL<<31),
} PCOMP_t;


/* Register Definition of EMC Control Register */
/*
typedef enum EMCControl_enum
{
} EMCControl_t;
*/


/* Register Definition of VIC IRQ Status Register */
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
#define INT_IRQ			(0)
#define INT_FIQ			(1)

/* Register Definition of VIC Vector Priority Registers x */
#define VICVPx_HIGHEST  (0x00)
#define VICVPx_LOWEST   (0x0F)

/* Register Definition of VIC Software Priority Mask Register */
#define VICSWPriorityMask_bm	(0x0000FFFF)


/* Register Definition of Protection Enable Register */
typedef enum VICProtection_enum
{
	VIC_ACCESS_NOT_PROTECTED = (0UL<<0), /* VIC registers can be accessed in User or privileged mode. */
	VIC_ACCESS_PROTECTED 	 = (1UL<<0), /* VIC registers can only be accessed in privileged mode. */
} VICProtection_t;


/* Register Definition of MAM Control Register */
typedef enum MAMCR_enum
{
	MAMCR_DISABLE 		 = (0),
	MAMCR_PARTIAL_ENABLE = (1),
	MAMCR_FULL_ENABLE 	 = (2),
} MAMCR_t;
#define MAMCR_bm		(0x03)

/* Register Definition of MAM Timing Register */
typedef enum MAMTIM_enum
{
	MAMTIM_0_TO_20MHZ  = (1),
	MAMTIM_20_TO_40MHZ = (2),
	MAMTIM_40_TO_60MHZ = (3),
	MAMTIM_60_TO_72MHZ = (4),
} MAMTIM_t;
#define MAMTIM_bm		(0x07)


/* Register Definition of Pin Function Select register 0 */
typedef enum PINSEL0_enum
{
	PINSEL0_P0_0_GPIO0_0  		= (0UL<<0),
	PINSEL0_P0_0_RD1   			= (1UL<<0),
	PINSEL0_P0_0_TXD3  			= (2UL<<0),
	PINSEL0_P0_0_SDA1  			= (3UL<<0),
	PINSEL0_P0_1_GPIO0_1  		= (0UL<<2),
	PINSEL0_P0_1_TD1   			= (1UL<<2),
	PINSEL0_P0_1_RXD3  			= (2UL<<2),
	PINSEL0_P0_1_SCL1  			= (3UL<<2),
	PINSEL0_P0_2_GPIO0_2		= (0UL<<4),
	PINSEL0_P0_2_TXD0  			= (1UL<<4),
	PINSEL0_P0_3_GPIO0_3  		= (0UL<<6),
	PINSEL0_P0_3_RXD0  			= (1UL<<6),
	PINSEL0_P0_4_GPIO0_4		= (0UL<<8),
	PINSEL0_P0_4_I2SRX_CLK   	= (1UL<<8),
	PINSEL0_P0_4_RD2  			= (2UL<<8),
	PINSEL0_P0_4_CAP2_0  		= (3UL<<8),
	PINSEL0_P0_5_GPIO0_5		= (0UL<<10),
	PINSEL0_P0_5_I2SRX_WS   	= (1UL<<10),
	PINSEL0_P0_5_TD2  			= (2UL<<10),
	PINSEL0_P0_5_CAP2_1  		= (3UL<<10),
	PINSEL0_P0_6_GPIO0_6		= (0UL<<12),
	PINSEL0_P0_6_I2SRX_SDA   	= (1UL<<12),
	PINSEL0_P0_6_SSEL1 			= (2UL<<12),
	PINSEL0_P0_6_MAT2_0  		= (3UL<<12),
	PINSEL0_P0_7_GPIO0_7		= (0UL<<14),
	PINSEL0_P0_7_I2STX_CLK   	= (1UL<<14),
	PINSEL0_P0_7_SCK1 			= (2UL<<14),
	PINSEL0_P0_7_MAT2_1  		= (3UL<<14),
	PINSEL0_P0_8_GPIO0_8		= (0UL<<16),
	PINSEL0_P0_8_I2STX_WS   	= (1UL<<16),
	PINSEL0_P0_8_MISO1 			= (2UL<<16),
	PINSEL0_P0_8_MAT2_2  		= (3UL<<16),
	PINSEL0_P0_9_GPIO0_9		= (0UL<<18),
	PINSEL0_P0_9_I2STX_SDA   	= (1UL<<18),
	PINSEL0_P0_9_MOSI1 			= (2UL<<18),
	PINSEL0_P0_9_MAT2_4  		= (3UL<<18),
	PINSEL0_P0_10_GPIO0_10		= (0UL<<20),
	PINSEL0_P0_10_TXD2		   	= (1UL<<20),
	PINSEL0_P0_10_SDA2 			= (2UL<<20),
	PINSEL0_P0_10_MAT3_0  		= (3UL<<20),
	PINSEL0_P0_11_GPIO0_11		= (0UL<<22),
	PINSEL0_P0_11_RXD2		   	= (1UL<<22),
	PINSEL0_P0_11_SCL2 			= (2UL<<22),
	PINSEL0_P0_11_MAT3_1  		= (3UL<<22),
	PINSEL0_P0_12_GPIO0_12		= (0UL<<24),
	PINSEL0_P0_12_USB_PPWR2		= (1UL<<24),
	PINSEL0_P0_12_MISO1 		= (2UL<<24),
	PINSEL0_P0_12_AD0_6  		= (3UL<<24),
	PINSEL0_P0_13_GPIO0_13		= (0UL<<26),
	PINSEL0_P0_13_USB_UP_LED2	= (1UL<<26),
	PINSEL0_P0_13_MOSI1 		= (2UL<<26),
	PINSEL0_P0_13_AD0_7  		= (3UL<<26),
	PINSEL0_P0_14_GPIO0_14		= (0UL<<28),
	PINSEL0_P0_14_USB_HSTEN2	= (1UL<<28),
	PINSEL0_P0_14_USB_CONNECT2 	= (2UL<<28),
	PINSEL0_P0_14_SSEL1  		= (3UL<<28),
	PINSEL0_P0_15_GPIO0_15		= (0UL<<30),
	PINSEL0_P0_15_TXD1			= (1UL<<30),
	PINSEL0_P0_15_SCK0		 	= (2UL<<30),
	PINSEL0_P0_15_SCK	  		= (3UL<<30),
} PINSEL0_t;
#define PINSEL0_ALL_bm		(0xFFFFFFFF)
#define PINSEL0_P0_0_bm		(3UL<<0)
#define PINSEL0_P0_1_bm		(3UL<<2)
#define PINSEL0_P0_2_bm		(3UL<<4)
#define PINSEL0_P0_3_bm		(3UL<<6)
#define PINSEL0_P0_4_bm		(3UL<<8)
#define PINSEL0_P0_5_bm		(3UL<<10)
#define PINSEL0_P0_6_bm		(3UL<<12)
#define PINSEL0_P0_7_bm		(3UL<<14)
#define PINSEL0_P0_8_bm		(3UL<<16)
#define PINSEL0_P0_9_bm		(3UL<<18)
#define PINSEL0_P0_10_bm	(3UL<<20)
#define PINSEL0_P0_11_bm	(3UL<<22)
#define PINSEL0_P0_12_bm	(3UL<<24)
#define PINSEL0_P0_13_bm	(3UL<<26)
#define PINSEL0_P0_14_bm	(3UL<<28)
#define PINSEL0_P0_15_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 1 */
typedef enum PINSEL1_enum
{
	PINSEL1_P0_16_GPIO0_16  	= (0UL<<0),
	PINSEL1_P0_16_RXD1   		= (1UL<<0),
	PINSEL1_P0_16_SSEL0  		= (2UL<<0),
	PINSEL1_P0_16_SSEL  		= (3UL<<0),
	PINSEL1_P0_17_GPIO0_17  	= (0UL<<2),
	PINSEL1_P0_17_CTS1   		= (1UL<<2),
	PINSEL1_P0_17_MISO0  		= (2UL<<2),
	PINSEL1_P0_17_MISO  		= (3UL<<2),
	PINSEL1_P0_18_GPIO0_18  	= (0UL<<4),
	PINSEL1_P0_18_DCD1   		= (1UL<<4),
	PINSEL1_P0_18_MOSI0  		= (2UL<<4),
	PINSEL1_P0_18_MOSI  		= (3UL<<4),
	PINSEL1_P0_19_GPIO0_19  	= (0UL<<6),
	PINSEL1_P0_19_DSR11   		= (1UL<<6),
	PINSEL1_P0_19_MCICLK  		= (2UL<<6),
	PINSEL1_P0_19_SDA1  		= (3UL<<6),
	PINSEL1_P0_20_GPIO0_20		= (0UL<<8),
	PINSEL1_P0_20_DTR1		   	= (1UL<<8),
	PINSEL1_P0_20_MCICMD  		= (2UL<<8),
	PINSEL1_P0_20_SCL1  		= (3UL<<8),
	PINSEL1_P0_21_GPIO0_21		= (0UL<<10),
	PINSEL1_P0_21_RI1  		 	= (1UL<<10),
	PINSEL1_P0_21_MCIPWR  		= (2UL<<10),
	PINSEL1_P0_21_RD1	  		= (3UL<<10),
	PINSEL1_P0_22_GPIO0_22		= (0UL<<12),
	PINSEL1_P0_22_RTS1		   	= (1UL<<12),
	PINSEL1_P0_22_MCIDAT0 		= (2UL<<12),
	PINSEL1_P0_22_TD1	  		= (3UL<<12),
	PINSEL1_P0_23_GPIO0_23		= (0UL<<14),
	PINSEL1_P0_23_AD0_0		   	= (1UL<<14),
	PINSEL1_P0_23_I2SRX_CLK 	= (2UL<<14),
	PINSEL1_P0_23_CAP3_0  		= (3UL<<14),
	PINSEL1_P0_24_GPIO0_24		= (0UL<<16),
	PINSEL1_P0_24_AD0_1		   	= (1UL<<16),
	PINSEL1_P0_24_I2SRX_WS 		= (2UL<<16),
	PINSEL1_P0_24_CAP3_1  		= (3UL<<16),
	PINSEL1_P0_25_GPIO0_25		= (0UL<<18),
	PINSEL1_P0_25_AD0_2		   	= (1UL<<18),
	PINSEL1_P0_25_I2SRX_SDA 	= (2UL<<18),
	PINSEL1_P0_25_TXD3  		= (3UL<<18),
	PINSEL1_P0_26_GPIO0_26		= (0UL<<20),
	PINSEL1_P0_26_AD0_3		   	= (1UL<<20),
	PINSEL1_P0_26_AOUT 			= (2UL<<20),
	PINSEL1_P0_26_RXD3  		= (3UL<<20),
	PINSEL1_P0_27_GPIO0_27		= (0UL<<22),
	PINSEL1_P0_27_SDA0		   	= (1UL<<22),
	PINSEL1_P0_28_GPIO0_28		= (0UL<<24),
	PINSEL1_P0_28_SCL0			= (1UL<<24),
	PINSEL1_P0_29_GPIO0_29		= (0UL<<26),
	PINSEL1_P0_29_USB_DP1		= (1UL<<26),
	PINSEL1_P0_30_GPIO0_30		= (0UL<<28),
	PINSEL1_P0_30_USB_DM1		= (1UL<<28),
	PINSEL1_P0_31_GPIO0_31		= (0UL<<30),
	PINSEL1_P0_31_USB_DP2		= (1UL<<30),
} PINSEL1_t;
#define PINSEL1_ALL_bm		(0xFFFFFFFF)
#define PINSEL1_P0_16_bm	(3UL<<0)
#define PINSEL1_P0_17_bm	(3UL<<2)
#define PINSEL1_P0_18_bm	(3UL<<4)
#define PINSEL1_P0_19_bm	(3UL<<6)
#define PINSEL1_P0_20_bm	(3UL<<8)
#define PINSEL1_P0_21_bm	(3UL<<10)
#define PINSEL1_P0_22_bm	(3UL<<12)
#define PINSEL1_P0_23_bm	(3UL<<14)
#define PINSEL1_P0_24_bm	(3UL<<16)
#define PINSEL1_P0_25_bm	(3UL<<18)
#define PINSEL1_P0_26_bm	(3UL<<20)
#define PINSEL1_P0_27_bm	(3UL<<22)
#define PINSEL1_P0_28_bm	(3UL<<24)
#define PINSEL1_P0_29_bm	(3UL<<26)
#define PINSEL1_P0_30_bm	(3UL<<28)
#define PINSEL1_P0_31_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 2 */
typedef enum PINSEL2_enum
{
	PINSEL2_P1_0_GPIO1_0  		= (0UL<<0),
	PINSEL2_P1_0_ENET_TXD0   	= (1UL<<0),
	PINSEL2_P1_1_GPIO1_1  		= (0UL<<2),
	PINSEL2_P1_1_ENET_TXD1  	= (1UL<<2),
	PINSEL2_P1_4_GPIO1_4		= (0UL<<8),
	PINSEL2_P1_4_ENET_TX_EN   	= (1UL<<8),
	PINSEL2_P1_8_GPIO1_8		= (0UL<<16),
	PINSEL2_P1_8_ENET_CRS   	= (1UL<<16),
	PINSEL2_P1_9_GPIO1_9		= (0UL<<18),
	PINSEL2_P1_9_ENET_RXD0   	= (1UL<<18),
	PINSEL2_P1_10_GPIO1_10		= (0UL<<20),
	PINSEL2_P1_10_ENET_RXD1		= (1UL<<20),
	PINSEL2_P1_14_GPIO1_14		= (0UL<<28),
	PINSEL2_P1_14_ENET_RX_ER	= (1UL<<28),
	PINSEL2_P1_15_GPIO1_15		= (0UL<<30),
	PINSEL2_P1_15_ENET_REF_CLK	= (1UL<<30),
} PINSEL2_t;
#define PINSEL2_ALL_bm		(0xFFFFFFFF)
#define PINSEL2_P1_0_bm		(3UL<<0)
#define PINSEL2_P1_1_bm		(3UL<<2)
#define PINSEL2_P1_2_bm		(3UL<<4)
#define PINSEL2_P1_3_bm		(3UL<<6)
#define PINSEL2_P1_4_bm		(3UL<<8)
#define PINSEL2_P1_5_bm		(3UL<<10)
#define PINSEL2_P1_6_bm		(3UL<<12)
#define PINSEL2_P1_7_bm		(3UL<<14)
#define PINSEL2_P1_8_bm		(3UL<<16)
#define PINSEL2_P1_9_bm		(3UL<<18)
#define PINSEL2_P1_10_bm	(3UL<<20)
#define PINSEL2_P1_11_bm	(3UL<<22)
#define PINSEL2_P1_12_bm	(3UL<<24)
#define PINSEL2_P1_13_bm	(3UL<<26)
#define PINSEL2_P1_14_bm	(3UL<<28)
#define PINSEL2_P1_15_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 3 */
typedef enum PINSEL3_enum
{
	PINSEL3_P1_16_GPIO1_16  	= (0UL<<0),
	PINSEL3_P1_16_MDC   		= (1UL<<0),
	PINSEL3_P1_17_GPIO1_17  	= (0UL<<2),
	PINSEL3_P1_17_MDIO   		= (1UL<<2),
	PINSEL3_P1_18_GPIO1_18  	= (0UL<<4),
	PINSEL3_P1_18_USB_UP_LED   	= (1UL<<4),
	PINSEL3_P1_18_PWM1_1  		= (2UL<<4),
	PINSEL3_P1_18_CAP1_0  		= (3UL<<4),
	PINSEL3_P1_19_GPIO1_19  	= (0UL<<6),
	PINSEL3_P1_19_USB_TX_E1   	= (1UL<<6),
	PINSEL3_P1_19_USP_PPWR1  	= (2UL<<6),
	PINSEL3_P1_19_CAP1_1  		= (3UL<<6),
	PINSEL3_P1_20_GPIO1_20		= (0UL<<8),
	PINSEL3_P1_20_USB_TX_DP1	= (1UL<<8),
	PINSEL3_P1_20_PWM1_2 		= (2UL<<8),
	PINSEL3_P1_20_SCK0  		= (3UL<<8),
	PINSEL3_P1_21_GPIO1_21		= (0UL<<10),
	PINSEL3_P1_21_USB_TX_DM1  	= (1UL<<10),
	PINSEL3_P1_21_PWM1_3  		= (2UL<<10),
	PINSEL3_P1_21_SSEL0	  		= (3UL<<10),
	PINSEL3_P1_22_GPIO1_22		= (0UL<<12),
	PINSEL3_P1_22_USB_RCV1		= (1UL<<12),
	PINSEL3_P1_22_PWRD1 		= (2UL<<12),
	PINSEL3_P1_22_MAT1_0	  	= (3UL<<12),
	PINSEL3_P1_23_GPIO1_23		= (0UL<<14),
	PINSEL3_P1_23_USB_RX_DP1	= (1UL<<14),
	PINSEL3_P1_23_PWM1_4	 	= (2UL<<14),
	PINSEL3_P1_23_MISO0  		= (3UL<<14),
	PINSEL3_P1_24_GPIO1_24		= (0UL<<16),
	PINSEL3_P1_24_USB_RX_DM1	= (1UL<<16),
	PINSEL3_P1_24_PWM1_5 		= (2UL<<16),
	PINSEL3_P1_24_MOSI0 		= (3UL<<16),
	PINSEL3_P1_25_GPIO1_25		= (0UL<<18),
	PINSEL3_P1_25_USB_LS1		= (1UL<<18),
	PINSEL3_P1_25_USB_HSTEN1 	= (2UL<<18),
	PINSEL3_P1_25_MAT1_1  		= (3UL<<18),
	PINSEL3_P1_26_GPIO1_26		= (0UL<<20),
	PINSEL3_P1_26_USB_SSPND1	= (1UL<<20),
	PINSEL3_P1_26_PWM1_6		= (2UL<<20),
	PINSEL3_P1_26_CAP0_0  		= (3UL<<20),
	PINSEL3_P1_27_GPIO1_27		= (0UL<<22),
	PINSEL3_P1_27_USB_INT1		= (1UL<<22),
	PINSEL3_P1_27_USB_OVRCR1	= (2UL<<22),
	PINSEL3_P1_27_CAP0_1		= (3UL<<22),
	PINSEL3_P1_28_GPIO1_28		= (0UL<<24),
	PINSEL3_P1_28_USB_SCL1		= (1UL<<24),
	PINSEL3_P1_28_PCAP1_0		= (2UL<<24),
	PINSEL3_P1_28_MAT0_0		= (3UL<<24),
	PINSEL3_P1_29_GPIO1_29		= (0UL<<26),
	PINSEL3_P1_29_USB_SDA1		= (1UL<<26),
	PINSEL3_P1_29_PCAP1_1		= (2UL<<26),
	PINSEL3_P1_29_MAT0_1		= (3UL<<26),
	PINSEL3_P1_30_GPIO1_30		= (0UL<<28),
	PINSEL3_P1_30_USB_PWRD2		= (1UL<<28),
	PINSEL3_P1_30_VBUS			= (2UL<<28),
	PINSEL3_P1_30_AD0_4			= (3UL<<28),
	PINSEL3_P1_31_GPIO1_31		= (0UL<<30),
	PINSEL3_P1_31_USB_OVRCR2	= (1UL<<30),
	PINSEL3_P1_31_SCK1			= (2UL<<30),
	PINSEL3_P1_31_AD0_5			= (3UL<<30),
} PINSEL3_t;
#define PINSEL3_ALL_bm		(0xFFFFFFFF)
#define PINSEL3_P1_16_bm	(3UL<<0)
#define PINSEL3_P1_17_bm	(3UL<<2)
#define PINSEL3_P1_18_bm	(3UL<<4)
#define PINSEL3_P1_19_bm	(3UL<<6)
#define PINSEL3_P1_20_bm	(3UL<<8)
#define PINSEL3_P1_21_bm	(3UL<<10)
#define PINSEL3_P1_22_bm	(3UL<<12)
#define PINSEL3_P1_23_bm	(3UL<<14)
#define PINSEL3_P1_24_bm	(3UL<<16)
#define PINSEL3_P1_25_bm	(3UL<<18)
#define PINSEL3_P1_26_bm	(3UL<<20)
#define PINSEL3_P1_27_bm	(3UL<<22)
#define PINSEL3_P1_28_bm	(3UL<<24)
#define PINSEL3_P1_29_bm	(3UL<<26)
#define PINSEL3_P1_30_bm	(3UL<<28)
#define PINSEL3_P1_31_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 4 */
typedef enum PINSEL4_enum
{
	PINSEL4_P2_0_GPIO2_0  		= (0UL<<0),
	PINSEL4_P2_0_PWM1_1   		= (1UL<<0),
	PINSEL4_P2_0_TXD1  			= (2UL<<0),
	PINSEL4_P2_0_TRACECLK  		= (3UL<<0),
	PINSEL4_P2_1_GPIO2_1  		= (0UL<<2),
	PINSEL4_P2_1_PWM1_2   		= (1UL<<2),
	PINSEL4_P2_1_RXD1  			= (2UL<<2),
	PINSEL4_P2_1_PIPESTAT0  	= (3UL<<2),
	PINSEL4_P2_2_GPIO2_2		= (0UL<<4),
	PINSEL4_P2_2_PWM1_3  		= (1UL<<4),
	PINSEL4_P2_2_CTS1  			= (2UL<<4),
	PINSEL4_P2_2_PIPESTAT1  	= (3UL<<4),
	PINSEL4_P2_3_GPIO2_3  		= (0UL<<6),
	PINSEL4_P2_3_PWM1_4  		= (1UL<<6),
	PINSEL4_P2_3_DCD1  			= (2UL<<6),
	PINSEL4_P2_3_PIPESTAT2  	= (3UL<<6),
	PINSEL4_P2_4_GPIO2_4		= (0UL<<8),
	PINSEL4_P2_4_PWM1_5		   	= (1UL<<8),
	PINSEL4_P2_4_DSR1  			= (2UL<<8),
	PINSEL4_P2_4_TRACESYNC  	= (3UL<<8),
	PINSEL4_P2_5_GPIO2_5		= (0UL<<10),
	PINSEL4_P2_5_PWM1_6		   	= (1UL<<10),
	PINSEL4_P2_5_DTR1  			= (2UL<<10),
	PINSEL4_P2_5_TRACEPKT0  	= (3UL<<10),
	PINSEL4_P2_6_GPIO2_6		= (0UL<<12),
	PINSEL4_P2_6_PCAP1_0	   	= (1UL<<12),
	PINSEL4_P2_6_RI1 			= (2UL<<12),
	PINSEL4_P2_6_TRACEPKT1 		= (3UL<<12),
	PINSEL4_P2_7_GPIO2_7		= (0UL<<14),
	PINSEL4_P2_7_RD2		   	= (1UL<<14),
	PINSEL4_P2_7_RTS1 			= (2UL<<14),
	PINSEL4_P2_7_TRACEPKT2  	= (3UL<<14),
	PINSEL4_P2_8_GPIO2_8		= (0UL<<16),
	PINSEL4_P2_8_TD2		   	= (1UL<<16),
	PINSEL4_P2_8_TXD2 			= (2UL<<16),
	PINSEL4_P2_8_TRACEPKT3  	= (3UL<<16),
	PINSEL4_P2_9_GPIO2_9		= (0UL<<18),
	PINSEL4_P2_9_USB_CONNECT1   = (1UL<<18),
	PINSEL4_P2_9_RXD2 			= (2UL<<18),
	PINSEL4_P2_9_EXINT0  		= (3UL<<18),
	PINSEL4_P2_10_GPIO2_10		= (0UL<<20),
	PINSEL4_P2_10_EINT0		   	= (1UL<<20),
	PINSEL4_P2_11_GPIO2_11		= (0UL<<22),
	PINSEL4_P2_11_EINT1		   	= (1UL<<22),
	PINSEL4_P2_11_MCIDAT1 		= (2UL<<22),
	PINSEL4_P2_11_I2STX_CLK  	= (3UL<<22),
	PINSEL4_P2_12_GPIO2_12		= (0UL<<24),
	PINSEL4_P2_12_EINT2			= (1UL<<24),
	PINSEL4_P2_12_MCIDAT2 		= (2UL<<24),
	PINSEL4_P2_12_I2STX_WS  	= (3UL<<24),
	PINSEL4_P2_13_GPIO2_13		= (0UL<<26),
	PINSEL4_P2_13_EINT3			= (1UL<<26),
	PINSEL4_P2_13_MCIDAT3 		= (2UL<<26),
	PINSEL4_P2_13_I2STX_SDA  	= (3UL<<26),
} PINSEL4_t;
#define PINSEL4_ALL_bm		(0xFFFFFFFF)
#define PINSEL4_P2_0_bm		(3UL<<0)
#define PINSEL4_P2_1_bm		(3UL<<2)
#define PINSEL4_P2_2_bm		(3UL<<4)
#define PINSEL4_P2_3_bm		(3UL<<6)
#define PINSEL4_P2_4_bm		(3UL<<8)
#define PINSEL4_P2_5_bm		(3UL<<10)
#define PINSEL4_P2_6_bm		(3UL<<12)
#define PINSEL4_P2_7_bm		(3UL<<14)
#define PINSEL4_P2_8_bm		(3UL<<16)
#define PINSEL4_P2_9_bm		(3UL<<18)
#define PINSEL4_P2_10_bm	(3UL<<20)
#define PINSEL4_P2_11_bm	(3UL<<22)
#define PINSEL4_P2_12_bm	(3UL<<24)
#define PINSEL4_P2_13_bm	(3UL<<26)
#define PINSEL4_P2_14_bm	(3UL<<28)
#define PINSEL4_P2_15_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 5 */
/* LPC23xx has no available pin for PINSEL5 */ 

/* Register Definition of Pin Function Select register 6 */
typedef enum PINSEL6_enum
{
	PINSEL6_P3_0_GPIO3_0  		= (0UL<<0),
	PINSEL6_P3_0_D0   			= (1UL<<0),
	PINSEL6_P3_1_GPIO3_1  		= (0UL<<2),
	PINSEL6_P3_1_D1   			= (1UL<<2),
	PINSEL6_P3_2_GPIO3_2		= (0UL<<4),
	PINSEL6_P3_2_D2  			= (1UL<<4),
	PINSEL6_P3_3_GPIO3_3  		= (0UL<<6),
	PINSEL6_P3_3_D3  			= (1UL<<6),
	PINSEL6_P3_4_GPIO3_4		= (0UL<<8),
	PINSEL6_P3_4_D4			   	= (1UL<<8),
	PINSEL6_P3_5_GPIO3_5		= (0UL<<10),
	PINSEL6_P3_5_D5		   		= (1UL<<10),
	PINSEL6_P3_6_GPIO3_6		= (0UL<<12),
	PINSEL6_P3_6_D6			   	= (1UL<<12),
	PINSEL6_P3_7_GPIO3_7		= (0UL<<14),
	PINSEL6_P3_7_D7			   	= (1UL<<14),
} PINSEL6_t;
#define PINSEL6_ALL_bm		(0xFFFFFFFF)
#define PINSEL6_P3_0_bm		(3UL<<0)
#define PINSEL6_P3_1_bm		(3UL<<2)
#define PINSEL6_P3_2_bm		(3UL<<4)
#define PINSEL6_P3_3_bm		(3UL<<6)
#define PINSEL6_P3_4_bm		(3UL<<8)
#define PINSEL6_P3_5_bm		(3UL<<10)
#define PINSEL6_P3_6_bm		(3UL<<12)
#define PINSEL6_P3_7_bm		(3UL<<14)
#define PINSEL6_P3_8_bm		(3UL<<16)
#define PINSEL6_P3_9_bm		(3UL<<18)
#define PINSEL6_P3_10_bm	(3UL<<20)
#define PINSEL6_P3_11_bm	(3UL<<22)
#define PINSEL6_P3_12_bm	(3UL<<24)
#define PINSEL6_P3_13_bm	(3UL<<26)
#define PINSEL6_P3_14_bm	(3UL<<28)
#define PINSEL6_P3_15_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 7 */
typedef enum PINSEL7_enum
{
	PINSEL7_P3_23_GPIO3_23		= (0UL<<14),
	PINSEL7_P3_23_CAP0_0		= (2UL<<14),
	PINSEL7_P3_23_PCAP1_0  		= (3UL<<14),
	PINSEL7_P3_24_GPIO3_24		= (0UL<<16),
	PINSEL7_P3_24_CAP0_1 		= (2UL<<16),
	PINSEL7_P3_24_PWM1_1  		= (3UL<<16),
	PINSEL7_P3_25_GPIO3_25		= (0UL<<18),
	PINSEL7_P3_25_MAT0_0	 	= (2UL<<18),
	PINSEL7_P3_25_PWM1_2  		= (3UL<<18),
	PINSEL7_P3_26_GPIO3_26		= (0UL<<20),
	PINSEL7_P3_26_MAT0_1 		= (2UL<<20),
	PINSEL7_P3_26_PWM1_3  		= (3UL<<20),
} PINSEL7_t;
#define PINSEL7_ALL_bm		(0xFFFFFFFF)
#define PINSEL7_P3_16_bm	(3UL<<0)
#define PINSEL7_P3_17_bm	(3UL<<2)
#define PINSEL7_P3_18_bm	(3UL<<4)
#define PINSEL7_P3_19_bm	(3UL<<6)
#define PINSEL7_P3_20_bm	(3UL<<8)
#define PINSEL7_P3_21_bm	(3UL<<10)
#define PINSEL7_P3_22_bm	(3UL<<12)
#define PINSEL7_P3_23_bm	(3UL<<14)
#define PINSEL7_P3_24_bm	(3UL<<16)
#define PINSEL7_P3_25_bm	(3UL<<18)
#define PINSEL7_P3_26_bm	(3UL<<20)
#define PINSEL7_P3_27_bm	(3UL<<22)
#define PINSEL7_P3_28_bm	(3UL<<24)
#define PINSEL7_P3_29_bm	(3UL<<26)
#define PINSEL7_P3_30_bm	(3UL<<28)
#define PINSEL7_P3_31_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 8 */
typedef enum PINSEL8_enum
{
	PINSEL8_P4_0_GPIO4_0  		= (0UL<<0),
	PINSEL8_P4_0_A0   			= (1UL<<0),
	PINSEL8_P4_1_GPIO4_1  		= (0UL<<2),
	PINSEL8_P4_1_A1   			= (1UL<<2),
	PINSEL8_P4_2_GPIO4_2		= (0UL<<4),
	PINSEL8_P4_2_A2  			= (1UL<<4),
	PINSEL8_P4_3_GPIO4_3  		= (0UL<<6),
	PINSEL8_P4_3_A3  			= (1UL<<6),
	PINSEL8_P4_4_GPIO4_4		= (0UL<<8),
	PINSEL8_P4_4_A4			   	= (1UL<<8),
	PINSEL8_P4_5_GPIO4_5		= (0UL<<10),
	PINSEL8_P4_5_A5			   	= (1UL<<10),
	PINSEL8_P4_6_GPIO4_6		= (0UL<<12),
	PINSEL8_P4_6_A6			   	= (1UL<<12),
	PINSEL8_P4_7_GPIO4_7		= (0UL<<14),
	PINSEL8_P4_7_A7			   	= (1UL<<14),
	PINSEL8_P4_8_GPIO4_8		= (0UL<<16),
	PINSEL8_P4_8_A8			   	= (1UL<<16),
	PINSEL8_P4_9_GPIO4_9		= (0UL<<18),
	PINSEL8_P4_9_A9			   	= (1UL<<18),
	PINSEL8_P4_10_GPIO4_10		= (0UL<<20),
	PINSEL8_P4_10_A10		   	= (1UL<<20),
	PINSEL8_P4_11_GPIO4_11		= (0UL<<22),
	PINSEL8_P4_11_A11		   	= (1UL<<22),
	PINSEL8_P4_12_GPIO4_12		= (0UL<<24),
	PINSEL8_P4_12_A12			= (1UL<<24),
	PINSEL8_P4_13_GPIO4_13		= (0UL<<26),
	PINSEL8_P4_13_A13			= (1UL<<26),
	PINSEL8_P4_14_GPIO4_14		= (0UL<<28),
	PINSEL8_P4_14_A14			= (1UL<<28),
	PINSEL8_P4_15_GPIO4_15		= (0UL<<30),
	PINSEL8_P4_15_A15			= (1UL<<30),
} PINSEL8_t;
#define PINSEL8_ALL_bm		(0xFFFFFFFF)
#define PINSEL8_P4_0_bm		(3UL<<0)
#define PINSEL8_P4_1_bm		(3UL<<2)
#define PINSEL8_P4_2_bm		(3UL<<4)
#define PINSEL8_P4_3_bm		(3UL<<6)
#define PINSEL8_P4_4_bm		(3UL<<8)
#define PINSEL8_P4_5_bm		(3UL<<10)
#define PINSEL8_P4_6_bm		(3UL<<12)
#define PINSEL8_P4_7_bm		(3UL<<14)
#define PINSEL8_P4_8_bm		(3UL<<16)
#define PINSEL8_P4_9_bm		(3UL<<18)
#define PINSEL8_P4_10_bm	(3UL<<20)
#define PINSEL8_P4_11_bm	(3UL<<22)
#define PINSEL8_P4_12_bm	(3UL<<24)
#define PINSEL8_P4_13_bm	(3UL<<26)
#define PINSEL8_P4_14_bm	(3UL<<28)
#define PINSEL8_P4_15_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 9 */
typedef enum PINSEL9_enum
{
	PINSEL9_P4_28_GPIO4_28		= (0UL<<24),
	PINSEL9_P4_28_MST2_0		= (2UL<<24),
	PINSEL9_P4_28_TXD3			= (3UL<<24),
	PINSEL9_P4_29_GPIO4_29		= (0UL<<26),
	PINSEL9_P4_29_MAT2_1		= (2UL<<26),
	PINSEL9_P4_28_RXD3			= (3UL<<26),

} PINSEL9_t;
#define PINSEL9_ALL_bm		(0xFFFFFFFF)
#define PINSEL9_P4_16_bm	(3UL<<0)
#define PINSEL9_P4_17_bm	(3UL<<2)
#define PINSEL9_P4_18_bm	(3UL<<4)
#define PINSEL9_P4_19_bm	(3UL<<6)
#define PINSEL9_P4_20_bm	(3UL<<8)
#define PINSEL9_P4_21_bm	(3UL<<10)
#define PINSEL9_P4_22_bm	(3UL<<12)
#define PINSEL9_P4_23_bm	(3UL<<14)
#define PINSEL9_P4_24_bm	(3UL<<16)
#define PINSEL9_P4_25_bm	(3UL<<18)
#define PINSEL9_P4_26_bm	(3UL<<20)
#define PINSEL9_P4_27_bm	(3UL<<22)
#define PINSEL9_P4_28_bm	(3UL<<24)
#define PINSEL9_P4_29_bm	(3UL<<26)
#define PINSEL9_P4_30_bm	(3UL<<28)
#define PINSEL9_P4_31_bm	(3UL<<30)


/* Register Definition of Pin Function Select register 10 */
typedef enum PINSEL10_enum
{
	PINSEL10_ETM_DISABLE		= (0UL<<3),
	PINSEL10_ETM_ENABLE			= (1UL<<3),
} PINSEL10_t;


#define PINSELx_ALL_bm		(0xFFFFFFFF)
#define PINSELx_Px_0_bm		(3UL<<0)
#define PINSELx_Px_1_bm		(3UL<<2)
#define PINSELx_Px_2_bm		(3UL<<4)
#define PINSELx_Px_3_bm		(3UL<<6)
#define PINSELx_Px_4_bm		(3UL<<8)
#define PINSELx_Px_5_bm		(3UL<<10)
#define PINSELx_Px_6_bm		(3UL<<12)
#define PINSELx_Px_7_bm		(3UL<<14)
#define PINSELx_Px_8_bm		(3UL<<16)
#define PINSELx_Px_9_bm		(3UL<<18)
#define PINSELx_Px_10_bm	(3UL<<20)
#define PINSELx_Px_11_bm	(3UL<<22)
#define PINSELx_Px_12_bm	(3UL<<24)
#define PINSELx_Px_13_bm	(3UL<<26)
#define PINSELx_Px_14_bm	(3UL<<28)
#define PINSELx_Px_15_bm	(3UL<<30)
#define PINSELx_Px_16_bm	(3UL<<0)
#define PINSELx_Px_17_bm	(3UL<<2)
#define PINSELx_Px_18_bm	(3UL<<4)
#define PINSELx_Px_19_bm	(3UL<<6)
#define PINSELx_Px_20_bm	(3UL<<8)
#define PINSELx_Px_21_bm	(3UL<<10)
#define PINSELx_Px_22_bm	(3UL<<12)
#define PINSELx_Px_23_bm	(3UL<<14)
#define PINSELx_Px_24_bm	(3UL<<16)
#define PINSELx_Px_25_bm	(3UL<<18)
#define PINSELx_Px_26_bm	(3UL<<20)
#define PINSELx_Px_27_bm	(3UL<<22)
#define PINSELx_Px_28_bm	(3UL<<24)
#define PINSELx_Px_29_bm	(3UL<<26)
#define PINSELx_Px_30_bm	(3UL<<28)
#define PINSELx_Px_31_bm	(3UL<<30)

#define PINSELx_Px_0_bp		(0)
#define PINSELx_Px_1_bp		(2)
#define PINSELx_Px_2_bp		(4)
#define PINSELx_Px_3_bp		(6)
#define PINSELx_Px_4_bp		(8)
#define PINSELx_Px_5_bp		(10)
#define PINSELx_Px_6_bp		(12)
#define PINSELx_Px_7_bp		(14)
#define PINSELx_Px_8_bp		(16)
#define PINSELx_Px_9_bp		(18)
#define PINSELx_Px_10_bp	(20)
#define PINSELx_Px_11_bp	(22)
#define PINSELx_Px_12_bp	(24)
#define PINSELx_Px_13_bp	(26)
#define PINSELx_Px_14_bp	(28)
#define PINSELx_Px_15_bp	(30)
#define PINSELx_Px_16_bp	(0)
#define PINSELx_Px_17_bp	(2)
#define PINSELx_Px_18_bp	(4)
#define PINSELx_Px_19_bp	(6)
#define PINSELx_Px_20_bp	(8)
#define PINSELx_Px_21_bp	(10)
#define PINSELx_Px_22_bp	(12)
#define PINSELx_Px_23_bp	(14)
#define PINSELx_Px_24_bp	(16)
#define PINSELx_Px_25_bp	(18)
#define PINSELx_Px_26_bp	(20)
#define PINSELx_Px_27_bp	(22)
#define PINSELx_Px_28_bp	(24)
#define PINSELx_Px_29_bp	(26)
#define PINSELx_Px_30_bp	(28)
#define PINSELx_Px_31_bp	(30)


/* Register Definition of Pin Mode Select register 0~9 */
typedef enum PINMODEx_enum
{
	PINMODEx_PULLUP			= (0UL),
	PINMODEx_FLOATING		= (2UL),
	PINMODEx_PULLDOWN		= (3UL),
} PINMODEx_t;
#define PINMODEx_ALL_bm		(0xFFFFFFFFUL)
#define PINMODEx_Px_0_bm	(3UL<<0)
#define PINMODEx_Px_1_bm	(3UL<<2)
#define PINMODEx_Px_2_bm	(3UL<<4)
#define PINMODEx_Px_3_bm	(3UL<<6)
#define PINMODEx_Px_4_bm	(3UL<<8)
#define PINMODEx_Px_5_bm	(3UL<<10)
#define PINMODEx_Px_6_bm	(3UL<<12)
#define PINMODEx_Px_7_bm	(3UL<<14)
#define PINMODEx_Px_8_bm	(3UL<<16)
#define PINMODEx_Px_9_bm	(3UL<<18)
#define PINMODEx_Px_10_bm	(3UL<<20)
#define PINMODEx_Px_11_bm	(3UL<<22)
#define PINMODEx_Px_12_bm	(3UL<<24)
#define PINMODEx_Px_13_bm	(3UL<<26)
#define PINMODEx_Px_14_bm	(3UL<<28)
#define PINMODEx_Px_15_bm	(3UL<<30)
#define PINMODEx_Px_16_bm	(3UL<<0)
#define PINMODEx_Px_17_bm	(3UL<<2)
#define PINMODEx_Px_18_bm	(3UL<<4)
#define PINMODEx_Px_19_bm	(3UL<<6)
#define PINMODEx_Px_20_bm	(3UL<<8)
#define PINMODEx_Px_21_bm	(3UL<<10)
#define PINMODEx_Px_22_bm	(3UL<<12)
#define PINMODEx_Px_23_bm	(3UL<<14)
#define PINMODEx_Px_24_bm	(3UL<<16)
#define PINMODEx_Px_25_bm	(3UL<<18)
#define PINMODEx_Px_26_bm	(3UL<<20)
#define PINMODEx_Px_27_bm	(3UL<<22)
#define PINMODEx_Px_28_bm	(3UL<<24)
#define PINMODEx_Px_29_bm	(3UL<<26)
#define PINMODEx_Px_30_bm	(3UL<<28)
#define PINMODEx_Px_31_bm	(3UL<<30)


/* Register Definition of GPIO port Direction register */
typedef enum IOxDIR_enum
{
	IOxDIR_INPUT		= (0UL),
	IOxDIR_OUTPUT		= (1UL),
} IOxDIR_t;


/* Register Definition of GPIO overall Interrupt Status register */
typedef enum IOIntStatus_enum
{ 
	P0Int_NO_PEND_INT		= (0UL<<0), /* There are no pending interrupts on PORT0. */
	P0Int_PENDED_INT		= (1UL<<0), /* There is at least one pending interrupt on PORT0. */
	P2Int_NO_PEND_INT		= (0UL<<2), /* There are no pending interrupts on PORT2. */
	P2Int_PENDED_INT		= (1UL<<2), /* There is at least one pending interrupt on PORT2. */
} IOIntStatus_t;


/* Register Definition of GPIO Interrupt Enable for Rising edge register */
/* Register Definition of GPIO Interrupt Enable for Rising edge register */
/* Register Definition of GPIO Interrupt Enable for Falling edge register */
/* Register Definition of GPIO Interrupt Enable for Falling edge register */
/* Register Definition of GPIO Status for Rising edge register */
/* Register Definition of GPIO Status for Falling edge register */
/* Register Definition of GPIO Interrupt Clear register */
/* Register Definition of GPIO overall Interrupt Status register */

/* Register Definition of GPIO Registers */
/* GPIO Bit Position Defines 32bit */
#define GPIO_Px_0_bp		(0)
#define GPIO_Px_1_bp		(1)
#define GPIO_Px_2_bp		(2)
#define GPIO_Px_3_bp		(3)
#define GPIO_Px_4_bp		(4)
#define GPIO_Px_5_bp		(5)
#define GPIO_Px_6_bp		(6)
#define GPIO_Px_7_bp		(7)
#define GPIO_Px_8_bp		(8)
#define GPIO_Px_9_bp		(9)
#define GPIO_Px_10_bp		(10)
#define GPIO_Px_11_bp		(11)
#define GPIO_Px_12_bp		(12)
#define GPIO_Px_13_bp		(13)
#define GPIO_Px_14_bp		(14)
#define GPIO_Px_15_bp		(15)
#define GPIO_Px_16_bp		(16)
#define GPIO_Px_17_bp		(17)
#define GPIO_Px_18_bp		(18)
#define GPIO_Px_19_bp		(19)
#define GPIO_Px_20_bp		(20)
#define GPIO_Px_21_bp		(21)
#define GPIO_Px_22_bp		(22)
#define GPIO_Px_23_bp		(23)
#define GPIO_Px_24_bp		(24)
#define GPIO_Px_25_bp		(25)
#define GPIO_Px_26_bp		(26)
#define GPIO_Px_27_bp		(27)
#define GPIO_Px_28_bp		(28)
#define GPIO_Px_29_bp		(29)
#define GPIO_Px_30_bp		(30)
#define GPIO_Px_31_bp		(31)
/* GPIO Bit Mask Defines 32bit */
#define GPIO_Px_0_bm		(1UL<<0)
#define GPIO_Px_1_bm		(1UL<<1)
#define GPIO_Px_2_bm		(1UL<<2)
#define GPIO_Px_3_bm		(1UL<<3)
#define GPIO_Px_4_bm		(1UL<<4)
#define GPIO_Px_5_bm		(1UL<<5)
#define GPIO_Px_6_bm		(1UL<<6)
#define GPIO_Px_7_bm		(1UL<<7)
#define GPIO_Px_8_bm		(1UL<<8)
#define GPIO_Px_9_bm		(1UL<<9)
#define GPIO_Px_10_bm		(1UL<<10)
#define GPIO_Px_11_bm		(1UL<<11)
#define GPIO_Px_12_bm		(1UL<<12)
#define GPIO_Px_13_bm		(1UL<<13)
#define GPIO_Px_14_bm		(1UL<<14)
#define GPIO_Px_15_bm		(1UL<<15)
#define GPIO_Px_16_bm		(1UL<<16)
#define GPIO_Px_17_bm		(1UL<<17)
#define GPIO_Px_18_bm		(1UL<<18)
#define GPIO_Px_19_bm		(1UL<<19)
#define GPIO_Px_20_bm		(1UL<<20)
#define GPIO_Px_21_bm		(1UL<<21)
#define GPIO_Px_22_bm		(1UL<<22)
#define GPIO_Px_23_bm		(1UL<<23)
#define GPIO_Px_24_bm		(1UL<<24)
#define GPIO_Px_25_bm		(1UL<<25)
#define GPIO_Px_26_bm		(1UL<<26)
#define GPIO_Px_27_bm		(1UL<<27)
#define GPIO_Px_28_bm		(1UL<<28)
#define GPIO_Px_29_bm		(1UL<<29)
#define GPIO_Px_30_bm		(1UL<<30)
#define GPIO_Px_31_bm		(1UL<<31)


/* GPIO Bit Position Defines 16bit */
#define GPIO_PxL_0_bp		(0)
#define GPIO_PxL_1_bp		(1)
#define GPIO_PxL_2_bp		(2)
#define GPIO_PxL_3_bp		(3)
#define GPIO_PxL_4_bp		(4)
#define GPIO_PxL_5_bp		(5)
#define GPIO_PxL_6_bp		(6)
#define GPIO_PxL_7_bp		(7)
#define GPIO_PxL_8_bp		(8)
#define GPIO_PxL_9_bp		(9)
#define GPIO_PxL_10_bp		(10)
#define GPIO_PxL_11_bp		(11)
#define GPIO_PxL_12_bp		(12)
#define GPIO_PxL_13_bp		(13)
#define GPIO_PxL_14_bp		(14)
#define GPIO_PxL_15_bp		(15)
/* GPIO Bit Mask Defines 16bit */
#define GPIO_PxL_bm			(0x0000FFFFUL)
#define GPIO_PxL_0_bm		(1UL<<0)
#define GPIO_PxL_1_bm		(1UL<<1)
#define GPIO_PxL_2_bm		(1UL<<2)
#define GPIO_PxL_3_bm		(1UL<<3)
#define GPIO_PxL_4_bm		(1UL<<4)
#define GPIO_PxL_5_bm		(1UL<<5)
#define GPIO_PxL_6_bm		(1UL<<6)
#define GPIO_PxL_7_bm		(1UL<<7)
#define GPIO_PxL_8_bm		(1UL<<8)
#define GPIO_PxL_9_bm		(1UL<<9)
#define GPIO_PxL_10_bm		(1UL<<10)
#define GPIO_PxL_11_bm		(1UL<<11)
#define GPIO_PxL_12_bm		(1UL<<12)
#define GPIO_PxL_13_bm		(1UL<<13)
#define GPIO_PxL_14_bm		(1UL<<14)
#define GPIO_PxL_15_bm		(1UL<<15)
#define GPIO_PxL_16_bm		(1UL<<16)

/* GPIO Bit Position Defines 16bit */
#define GPIO_PxH_0_bp		(0)
#define GPIO_PxH_1_bp		(1)
#define GPIO_PxH_2_bp		(2)
#define GPIO_PxH_3_bp		(3)
#define GPIO_PxH_4_bp		(4)
#define GPIO_PxH_5_bp		(5)
#define GPIO_PxH_6_bp		(6)
#define GPIO_PxH_7_bp		(7)
#define GPIO_PxH_8_bp		(8)
#define GPIO_PxH_9_bp		(9)
#define GPIO_PxH_10_bp		(10)
#define GPIO_PxH_11_bp		(11)
#define GPIO_PxH_12_bp		(12)
#define GPIO_PxH_13_bp		(13)
#define GPIO_PxH_14_bp		(14)
#define GPIO_PxH_15_bp		(15)
/* GPIO Bit Mask Defines 16bit */
#define GPIO_PxH_bm			(0xFFFF0000UL)
#define GPIO_PxH_0_bm		(1UL<<0)
#define GPIO_PxH_1_bm		(1UL<<1)
#define GPIO_PxH_2_bm		(1UL<<2)
#define GPIO_PxH_3_bm		(1UL<<3)
#define GPIO_PxH_4_bm		(1UL<<4)
#define GPIO_PxH_5_bm		(1UL<<5)
#define GPIO_PxH_6_bm		(1UL<<6)
#define GPIO_PxH_7_bm		(1UL<<7)
#define GPIO_PxH_8_bm		(1UL<<8)
#define GPIO_PxH_9_bm		(1UL<<9)
#define GPIO_PxH_10_bm		(1UL<<10)
#define GPIO_PxH_11_bm		(1UL<<11)
#define GPIO_PxH_12_bm		(1UL<<12)
#define GPIO_PxH_13_bm		(1UL<<13)
#define GPIO_PxH_14_bm		(1UL<<14)
#define GPIO_PxH_15_bm		(1UL<<15)
#define GPIO_PxH_16_bm		(1UL<<16)


/* GPIO Bit Position Defines 8bit */
#define GPIO_Px0_0_bp		(0)
#define GPIO_Px0_1_bp		(1)
#define GPIO_Px0_2_bp		(2)
#define GPIO_Px0_3_bp		(3)
#define GPIO_Px0_4_bp		(4)
#define GPIO_Px0_5_bp		(5)
#define GPIO_Px0_6_bp		(6)
#define GPIO_Px0_7_bp		(7)
/* GPIO Bit Mask Defines 8bit */
#define GPIO_Px0_bm			(0x000000FFUL)
#define GPIO_Px0_0_bm		(1UL<<0)
#define GPIO_Px0_1_bm		(1UL<<1)
#define GPIO_Px0_2_bm		(1UL<<2)
#define GPIO_Px0_3_bm		(1UL<<3)
#define GPIO_Px0_4_bm		(1UL<<4)
#define GPIO_Px0_5_bm		(1UL<<5)
#define GPIO_Px0_6_bm		(1UL<<6)
#define GPIO_Px0_7_bm		(1UL<<7)

/* GPIO Bit Position Defines 8bit */
#define GPIO_Px1_0_bp		(0)
#define GPIO_Px1_1_bp		(1)
#define GPIO_Px1_2_bp		(2)
#define GPIO_Px1_3_bp		(3)
#define GPIO_Px1_4_bp		(4)
#define GPIO_Px1_5_bp		(5)
#define GPIO_Px1_6_bp		(6)
#define GPIO_Px1_7_bp		(7)
/* GPIO Bit Mask Defines 8bit */
#define GPIO_Px1_bm			(0x0000FF00UL)
#define GPIO_Px1_0_bm		(1UL<<0)
#define GPIO_Px1_1_bm		(1UL<<1)
#define GPIO_Px1_2_bm		(1UL<<2)
#define GPIO_Px1_3_bm		(1UL<<3)
#define GPIO_Px1_4_bm		(1UL<<4)
#define GPIO_Px1_5_bm		(1UL<<5)
#define GPIO_Px1_6_bm		(1UL<<6)
#define GPIO_Px1_7_bm		(1UL<<7)

/* GPIO Bit Position Defines 8bit */
#define GPIO_Px2_0_bp		(0)
#define GPIO_Px2_1_bp		(1)
#define GPIO_Px2_2_bp		(2)
#define GPIO_Px2_3_bp		(3)
#define GPIO_Px2_4_bp		(4)
#define GPIO_Px2_5_bp		(5)
#define GPIO_Px2_6_bp		(6)
#define GPIO_Px2_7_bp		(7)
/* GPIO Bit Mask Defines 8bit */
#define GPIO_Px2_bm			(0x00FF0000UL)
#define GPIO_Px2_0_bm		(1UL<<0)
#define GPIO_Px2_1_bm		(1UL<<1)
#define GPIO_Px2_2_bm		(1UL<<2)
#define GPIO_Px2_3_bm		(1UL<<3)
#define GPIO_Px2_4_bm		(1UL<<4)
#define GPIO_Px2_5_bm		(1UL<<5)
#define GPIO_Px2_6_bm		(1UL<<6)
#define GPIO_Px2_7_bm		(1UL<<7)

/* GPIO Bit Position Defines 8bit */
#define GPIO_Px3_0_bp		(0)
#define GPIO_Px3_1_bp		(1)
#define GPIO_Px3_2_bp		(2)
#define GPIO_Px3_3_bp		(3)
#define GPIO_Px3_4_bp		(4)
#define GPIO_Px3_5_bp		(5)
#define GPIO_Px3_6_bp		(6)
#define GPIO_Px3_7_bp		(7)
/* GPIO Bit Mask Defines 8bit */
#define GPIO_Px3_bm			(0xFF000000UL)
#define GPIO_Px3_0_bm		(1UL<<0)
#define GPIO_Px3_1_bm		(1UL<<1)
#define GPIO_Px3_2_bm		(1UL<<2)
#define GPIO_Px3_3_bm		(1UL<<3)
#define GPIO_Px3_4_bm		(1UL<<4)
#define GPIO_Px3_5_bm		(1UL<<5)
#define GPIO_Px3_6_bm		(1UL<<6)
#define GPIO_Px3_7_bm		(1UL<<7)

/* UARTn Receiver Buffer Register */
/* UARTn Transmit Holding Register */
/* UARTn Divisor Latch LSB Register */
/* UARTn Interrupt Enable Register */
typedef enum UxIER_enum
{ 
	UxIER_RBR_INT_EN			= (1UL<<0), /* enables the Receive Data Available interrupt for UARTn. */
	UxIER_RBR_INT_DIS			= (0UL<<0), /* disables the Receive Data Available interrupt for UARTn. */
	UxIER_THRE_INT_EN			= (1UL<<1), /* enables the THRE interrupt for UARTn. */
	UxIER_THRE_INT_DIS			= (0UL<<1), /* disables the THRE interrupt for UARTn. */
	UxIER_RXLINE_INT_EN			= (1UL<<2), /* enables the UARTn RX line status interrupts. */
	UxIER_RXLINE_INT_DIS		= (0UL<<2), /* disables the UARTn RX line status interrupts. */
	UxIER_ABEO_INT_EN			= (1UL<<8), /* enables the end of auto-baud interrupt. */
	UxIER_ABEO_INT_DIS			= (0UL<<8), /* disables the end of auto-baud interrupt. */
	UxIER_ABTO_INT_EN			= (1UL<<9), /* enables the auto-baud time-out interrupt. */
	UxIER_ABTO_INT_DIS			= (0UL<<9), /* disables the auto-baud time-out interrupt. */
} UxIER_t;

/* UARTn Interrupt Identification Register */
typedef enum UxIIR_enum
{ 
	UxIIR_INT_NO_PENDING		= (0UL<<0), /* No interrupt is pending. */
	UxIIR_INT_PENDING			= (1UL<<0), /* Interrupt status. Note that U1IIR[0] is active low. The
												pending interrupt can be determined by evaluating
												UnIIR[3:1].  At least one interrupt is pending.*/
	UxIIR_INTLD_RLS				= (3UL<<1), /* Interrupt identification.Receive Line Status. */
	UxIIR_INTLD_RDA				= (2UL<<1), /* Interrupt identification.Receive Data Available. */
	UxIIR_INTLD_CTI 			= (6UL<<1), /* Character Time-out Indicator. */
	UxIIR_INTLD_THRE			= (1UL<<1), /* THRE Interrupt */
	UxIIR_INTLD_FIFO_EN			= (3UL<<6), /* These bits are equivalent to UnFCR[0]. */
	UxIIR_INT_ABEO				= (1UL<<8), /* True if auto-baud has finished successfully and interrupt is enabled */
	UxIIR_INT_ABTO				= (1UL<<9), /* True if auto-baud has timed out and interrupt is enabled. */
} UxIIR_t;

/* UARTn FIFO Control Register */
typedef enum UxFCR_enum
{ 
	UxFCR_FIFO_EN			= (1UL<<0), /* UARTn FIFOs are disabled. 
	                                       Must not be used in the application. */
	UxFCR_FIFO_DIS			= (0UL<<0), /* Active high enable for both UARTn Rx and TX
										   FIFOs and UnFCR[7:1] access. This bit must be set
										   for proper UARTn operation. Any transition on this
										   bit will automatically clear the UARTn FIFOs. */
	UxFCR_RX_RESET			= (1UL<<1), /* Writing a logic 1 to UnFCR[1] will clear all bytes in
										   UARTn Rx FIFO and reset the pointer logic. This bit
										   is self-clearing. */
	UxFCR_TX_RESET			= (1UL<<2), /* Writing a logic 1 to UnFCR[2] will clear all bytes in
										   UARTn TX FIFO and reset the pointer logic. This bit
										   is self-clearing. */
    UxFCR_RX_TRG_REVEL0     = (0UL<<6), /* These two bits determine how many receiver      */
    UxFCR_RX_TRG_REVEL1     = (1UL<<6), /* UARTn FIFO characters must be written before an */
    UxFCR_RX_TRG_REVEL2     = (2UL<<6), /* interrupt is activated.                         */
    UxFCR_RX_TRG_REVEL3     = (3UL<<6),
} UxFCR_t;

/* UARTn Line Control Register */
typedef enum UxLCR_enum
{ 
	UxLCR_CHR_5BIT			= (0UL<<0), /* 5 bit character length. */
	UxLCR_CHR_6BIT			= (1UL<<0), /* 6 bit character length. */
	UxLCR_CHR_7BIT			= (2UL<<0), /* 7 bit character length. */
	UxLCR_CHR_8BIT			= (3UL<<0), /* 8 bit character length. */
	UxLCR_1STOPBIT			= (0UL<<2), /* 1 stop bit. */
	UxLCR_2STOPBIT			= (1UL<<2), /* 2 stop bits (1.5 if UnLCR[1:0]=00). */
	UxLCR_PARITYBIT_DIS		= (0UL<<3), /* Disable parity generation and checking. */
	UxLCR_PARITYBIT_EN		= (1UL<<3), /* Enable parity generation and checking. */
	UxLCR_ODD_PARITY		= (0UL<<4), /* Odd parity. Number of 1s in the transmitted character and
										   the attached parity bit will be odd. */
	UxLCR_EVEN_PARITY		= (1UL<<4), /* Even Parity. Number of 1s in the transmitted character and
										   the attached parity bit will be even. */
	UxLCR_PARITY_ONE_FORCE  = (2UL<<4), /* Forced "1" stick parity. */
	UxLCR_PARITY_ZERO_FORCE = (3UL<<4), /* Forced "0" stick parity. */
	UxLCR_BREAK_DIS			= (0UL<<6), /* Disable break transmission. */
	UxLCR_BREAK_EN			= (1UL<<6), /* Enable break transmission. Output pin UART0 TXD is
										   forced to logic 0 when UnLCR[6] is active high. */
	UxLCR_DIVISOR_DIS		= (0UL<<7), /* Disable access to Divisor Latches. */
	UxLCR_DIVISOR_EN		= (1UL<<7), /* Enable access to Divisor Latches. */
} UxLCR_t;

/* UARTn Line Status Register */
typedef enum UxLSR_enum
{ 
	UxLSR_RDR				= (1UL<<0), /* UnRBR contains valid data. */
	UxLSR_OE				= (1UL<<1), /* Overrun error status is active. */
	UxLSR_PE				= (1UL<<2), /* Parity error status is active. */
	UxLSR_FE				= (1UL<<3), /* Framing error status is active. */
	UxLSR_BI				= (1UL<<4), /* Break interrupt status is active. */
	UxLSR_THRE				= (1UL<<5), /* UnTHR is empty.*/
	UxLSR_TEMT				= (1UL<<6), /* UnTHR and the UnTSR are empty. */
	UxLSR_RXFE				= (1UL<<7), /* UARTn RBR contains at least one UARTn RX error. */
} UxLSR_t;

/* UARTn Scratch Pad Register */

/* UARTn Auto-baud Control Register */
typedef enum UxACR_enum
{ 
	UxACR_STOP				= (0UL<<0), /* Auto-baud stop (auto-baud is not running). */
	UxACR_START				= (1UL<<0), /* Auto-baud start (auto-baud is running).Auto-baud run
								           bit. This bit is automatically cleared after auto-baud
										   completion. */
	UxACR_MODE0				= (0UL<<1), /* Auto-baud mode 0 */
	UxACR_MODE1				= (1UL<<1), /* Auto-baud mode 1 */
	UxACR_RESTART_OFF		= (0UL<<2), /* No restart. */
	UxACR_RESTART_ON		= (1UL<<2), /* Restart in case of time-out (counter restarts at next
										   UART0 Rx falling edge) */
	UxACR_ABEO_INTCLR		= (0UL<<8), /* End of auto-baud interrupt clear bit (write only accessible). */
	UxACR_ABTO_INTCLR		= (1UL<<9), /* Auto-baud time-out interrupt clear bit (write only accessible). */
} UxACR_t;

/* IrDA Control Register for UART3 only */
typedef enum U3ICR_enum
{ 
	U3ICR_IRDA_DIS			= (0UL<<0), /* IrDA mode on UART3 is disabled, */
	U3ICR_IRDA_EN			= (1UL<<0), /* IrDA mode on UART3 is enabled, */
	U3ICR_POL_NOMAL			= (0UL<<1), /* IrDA input is not  inverted, */
	U3ICR_POL_INV			= (1UL<<1), /* IrDA input is inverted, */
	U3ICR_FIXPULSE_DIS		= (0UL<<2), /* When 1, enabled IrDA fixed pulse width mode. */
	U3ICR_FIXPULSE_EN		= (1UL<<2), /* When 1, enabled IrDA fixed pulse width mode. */
	U3ICR_PULSEDIV_2		= (0UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_4		= (1UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_8		= (2UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_16		= (3UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_32		= (4UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_64		= (5UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_128		= (6UL<<3), /* Configures the pulse when FixPulseEn = 1. */
	U3ICR_PULSEDIV_256		= (7UL<<3), /* Configures the pulse when FixPulseEn = 1. */
} U3ICR_t;

/* UARTn Fractional Divider Register */

/* UARTn Transmit Enable Register */
typedef enum UxTER_enum
{ 
	UxTER_TXDIS				= (0UL<<7), /* UART Tx disable. */
	UxTER_TXEN				= (1UL<<7), /* UART Tx enable. */
} UxTER_t;




/* EtherNet MAC */
/* Register Definition of MAC configuration register 1 */
typedef enum MAC1_enum
{
	MAC1_RECEIVE_ENABLE						= (1UL<<0),
	MAC1_RECEIVE_DISABLE  					= (0UL<<0),
	MAC1_PASS_ALL_RECEIVE_FRAMES_ENABLE		= (1UL<<1),
	MAC1_PASS_ALL_RECEIVE_FRAMES_DISABLE	= (0UL<<1),
	MAC1_RX_FLOW_CONTROL_ENABLE				= (1UL<<2),
	MAC1_RX_FLOW_CONTROL_DISABLE  			= (0UL<<2),
	MAC1_TX_FLOW_CONTROL_ENABLE				= (1UL<<3),
	MAC1_TX_FLOW_CONTROL_DISABLE  			= (0UL<<3),
	MAC1_LOOPBACK_MODE						= (1UL<<4),
	MAC1_NOMAL_OPERATION_MODE				= (0UL<<4),
	MAC1_RESET_TX_ENABLE					= (1UL<<8),
	MAC1_RESET_TX_DISABLE  					= (0UL<<8),
	MAC1_RESET_MCS_TX_ENABLE				= (1UL<<9),
	MAC1_RESET_MCS_TX_DISABLE  				= (0UL<<9),
	MAC1_RESET_RX_ENABLE					= (1UL<<10),
	MAC1_RESET_RX_DISABLE  					= (0UL<<10),
	MAC1_RESET_MCS_RX_ENABLE				= (1UL<<11),
	MAC1_RESET_MCS_RX_DISABLE  				= (0UL<<11),
	MAC1_SIMULATION_RESET_ENABLE			= (1UL<<14),
	MAC1_SIMULATION_RESET_DISABLE			= (0UL<<14),
	MAC1_SOFT_RESET_ENABLE					= (1UL<<15),
	MAC1_SOFT_RESET_DISABLE					= (0UL<<15),
} MAC1_t;
#define MAC1_RECEIVE_bm						(1UL<<0)
#define MAC1_PASS_ALL_RECEIVE_FRAMES_bm		(1UL<<1)
#define MAC1_RX_FLOW_CONTROL_bm				(1UL<<2)
#define MAC1_TX_FLOW_CONTROL_bm				(1UL<<3)
#define MAC1_OPERATION_MODE_bm				(1UL<<4)
#define MAC1_RESET_TX_bm					(1UL<<8)
#define MAC1_RESET_MCS_TX_bm				(1UL<<9)
#define MAC1_RESET_RX_bm					(1UL<<10)
#define MAC1_RESET_MCS_RX_bm				(1UL<<11)
#define MAC1_SIMULATION_RESET_bm			(1UL<<14)
#define MAC1_SOFT_RESET_bm					(1UL<<15)


/* Register Definition of MAC configuration register 2 */
typedef enum MAC2_enum
{
	MAC2_FULL_DUPLEX						= (1UL<<0),
	MAC2_HALF_DUPLEX  						= (0UL<<0),
	MAC2_FRAME_LENGTH_CHECKING_ENABLE		= (1UL<<1),
	MAC2_FRAME_LENGTH_CHECKING_DISABLE		= (0UL<<1),
	MAC2_HUGE_FRAME_ENABLE					= (1UL<<2),
	MAC2_HUGE_FRAME_DISABLE  				= (0UL<<2),
	MAC2_DELAYED_CRC_ENABLE					= (1UL<<3),
	MAC2_DELAYED_CRC_DISABLE  				= (0UL<<3),
	MAC2_CRC_ENABLE							= (1UL<<4),
	MAC2_CRC_DISABLE						= (0UL<<4),
	MAC2_PAD_CRC_ENABLE						= (1UL<<5),
	MAC2_PAD_CRC_DISABLE  					= (0UL<<5),
	MAC2_VLAN_PAD_ENABLE					= (1UL<<6),
	MAC2_VLAN_PAD_DISABLE  					= (0UL<<6),
	MAC2_AUTO_DETECT_PAD_ENABLE				= (1UL<<7),
	MAC2_AUTO_DETECT_PAD_DISABLE  			= (0UL<<7),
	MAC2_PURE_PREAMBLE_ENFORCEMENT_ENABLE	= (1UL<<8),
	MAC2_PURE_PREAMBLE_ENFORCEMENT_DISABLE  = (0UL<<8),
	MAC2_LONG_PREAMBLE_ENFORCEMENT_ENABLE	= (1UL<<9),
	MAC2_LONG_PREAMBLE_ENFORCEMENT_DISABLE  = (0UL<<9),
	MAC2_NO_BACKOFF_ENABLE					= (1UL<<12),
	MAC2_NO_BACKOFF_DISABLE					= (0UL<<12),
	MAC2_BACK_PRESSURE_NO_BACKOFF_ENABLE	= (1UL<<13),
	MAC2_BACK_PRESSURE_NO_BACKOFF_DISABLE	= (0UL<<14),
	MAC2_EXCESS_DEFER_ENABLE				= (1UL<<14),
	MAC2_EXCESS_DEFER_DISABLE				= (0UL<<14),
} MAC2_t;
#define MAC2_FULL_DUPLEX					(1UL<<0)
#define MAC2_FRAME_LENGTH_CHECKING_bm		(1UL<<1)
#define MAC2_HUGE_FRAME_bm					(1UL<<2)
#define MAC2_DELAYED_CRC_bm					(1UL<<3)
#define MAC2_CRC_bm							(1UL<<4)
#define MAC2_PAD_CRC_bm						(1UL<<5)
#define MAC2_VLAN_PAD_bm					(1UL<<6)
#define MAC2_AUTO_DETECT_PAD_bm				(1UL<<7)
#define MAC2_PURE_PREAMBLE_ENFORCEMENT_bm	(1UL<<8)
#define MAC2_LONG_PREAMBLE_ENFORCEMENT_bm	(1UL<<9)
#define MAC2_NO_BACKOFF_bm					(1UL<<12)
#define MAC2_BACK_PRESSURE_NO_BACKOFF_bm	(1UL<<13)
#define MAC2_EXCESS_DEFER_bm				(1UL<<14)

/*~~~ret al~~~*/


#define SetMMRVal(MMR_REG,BIT_MASK,BIT_BALUE)	\
		MMR_REG = ( (MMR_REG & ~(BIT_MASK))| BIT_BALUE )



#ifdef __cplusplus
}
#endif

#endif /* __LPC23xx_REG_H */
