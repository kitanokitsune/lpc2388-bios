#include "lpc2300.h"
#include "vic_lpc23xx.h"

#define UART_INT_BIT 0x00000040

/* CPU固有初期化処理 */
static void CPU_Initialize(void)
{
  /*** PLLクロック発振初期化 ***/

  /* すでにPLLが動作中だった場合は停止させる */
  if ( PLLSTAT & (1<<25) ) {
    /* PLLCON - PLL Enable & disconnected */
    PLLCON   =0x00000001;
    /* PLL Feed operation */
    PLLFEED  =0x000000AA;
    PLLFEED  =0x00000055;
  }
  /* PLLCON - PLL Disable & disconnected(PLL完全停止) */
  PLLCON   =0x00000000;
  /* PLL Feed operation */
  PLLFEED  =0x000000AA;
  PLLFEED  =0x00000055;

  SCS = 0x21;	/* 12MHz OSC Enable & FGPIO Select */
  while((SCS & 0x40) == 0){}	/* OSCSTAT Wait */

  /* CLKSRCSEL - MASTER oscillator select */
  CLKSRCSEL=0x00000001;

  /* PLLCFG - MCLK=12MHz use, FCC0 = 288MHz M=144,N=12 */
  PLLCFG   =0x000B008F;
  /* PLL Feed operation. */
  PLLFEED  =0x000000AA;
  PLLFEED  =0x00000055;

  /* PLLCON - PLL Enable & disconnected */
  PLLCON   =0x00000001;
  /* PLL Feed operation */
  PLLFEED  =0x000000AA;
  PLLFEED  =0x00000055;

  /* CPU Clock Divider 1/4 */
  CCLKCFG  =0x00000003;
  /* USB Clock Divider 1/6 */
  USBCLKCFG=0x00000005;

  while ( ((PLLSTAT & (1<<26)) == 0) ); /* Check lock bit status */

  /* PLLCON - PLL Enable & Connected */
  PLLCON   =0x00000003;
  /* PLL Feed operation. */
  PLLFEED  =0x000000AA;
  PLLFEED  =0x00000055;
  while ( ((PLLSTAT & (1<<25)) == 0) ); /* Check connect bit status */
}

void LPC2388_Initialize(void)
{
  CPU_Initialize();
  VIC_Init();

  SCS = SCS | 1;	/* FGPIO Select */
  // LEDはP1[18]に接続されているので、これをデジタルI/Oに設定
  PINSEL1 =0;			/* GPIO Select */
  PINMODE1=0;			/* PullUp Enable */

  /* LED点灯制御設定 */
  FIO1DIR =0x00040000;	/* P1[18] OutPut */
  FIO1MASK=0x00000000;	/* P1[18] Non Mask */
  FIO1PIN =0x00040000;	/* P1[18] '1' -> LED OFF */
//  FIO1PIN &= ~0x00040000;/* P1[18] '0' -> LED ON */

  // UARTはTXD0とRXD0を使う
  /* ポートをUARTモードに設定(UART0) */
  PINSEL0=(PINSEL0 & 0xFFFFFF0F) | 0x50;	/* TXD0&RXD0選択 */
  /* UART0供給クロック 72MHz/4=18MHz */
  PCLKSEL0=(PCLKSEL0 & 0xFFFFFF3F);
  /* UART0パワーイネーブル */
  PCONP = PCONP | 8;	/* UART0 */

  /* 割り込みコントローラ設定(UARTx) */
//  VICIntSelect = VICIntSelect & (~UART_INT_BIT);
//  VICIntEnable = VICIntEnable |   UART_INT_BIT;

  /* UART設定 */
  U0LCR =0x80;   /* 分周設定レジスタ選択 */
  U0DLL =9;     /* 18MHz供給時の115200 bps設定 */
  U0DLM =0;
  U0FDR =(/*MULVAL=*/ 12 <<4)|/*DIVADDVAL=*/1; /* FDRレジスタ設定 */
  U0LCR =0x03;		/* パリティなし/ストップビット1/データ8ビット */

//  *U0IER =1;		/* 受信割り込み使用 */

// ３行追加。これが無いと、処理がかなり遅い。
	MAMCR = 0;//	Stop MAM
	MAMTIM = 4;// over 60MHz
	MAMCR = 2;//	Start MAM

	T0PR = 17;// LPC2388 のタイマー０のプリスケーラを、1/18 にする。
	T0TCR = 1;// タイマーカウンタを、１μ秒で１カウントする。
}

