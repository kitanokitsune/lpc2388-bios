
/* LCD SC1602 Control Library

  LCDのR/W端子を接続している場合は

      #define _LCD_READ_SUPPORT_

  を定義しておくとLCDからのデータ読み込み機能が有効になります。
  また、自動でLCDのBusyFlagをチェックするようになります。

  もしR/Wを使う場合でLCDのBusyFlagチェックをしたくない場合は

      #define _LCD_NO_BF_CHECK_

  を定義しておきます。

*/

#include <lpc2300.h>
#include "lcd1602.h"

#ifndef _LCD_READ_SUPPORT_
#define _LCD_READ_SUPPORT_
#endif


/* ----------------------------------------------------------------------- /
/  下記にプロトタイプ宣言されているstatic関数はユーザーが実装する          /
/   （実装部分は、このファイルの最後）                                     /
/ ----------------------------------------------------------------------- */

/* wait 100ns */
static void _lcd_wait_100ns(void);

/* wait 300ns */
static void _lcd_wait_300ns(void);

/* wait T usec */
static void _lcd_wait_usec(unsigned int t);

/* write to LCD without BF check */
static void _lcd_write_no_busy_check(unsigned char rs, unsigned char data);

/* read 4bits from LCD */
static unsigned char _lcd_read_4bit(unsigned char rs);

/* read 1byte (8bits) from LCD without BF check */
static unsigned char _lcd_read_no_busy_check(unsigned char rs);

/* initialize hardware (CPU,Board,etc.) specific function */
static void _lcd_init_hw_specific(void);




/* ----------------------------------------------------------------------- /
   資料
   SC1602コマンド・テーブル
   
   Instruction          | RS RW | DB7 DB6 DB5 DB4 DB3 DB2 DB1 DB0 | Description
   ---------------------+-------+-------------------------+---------------------------------
   Clear Display        |  0  0 |  0   0   0   0   0   0   0   1  | DDRAM Clear
   Return Home          |  0  0 |  0   0   0   0   0   0   1   -  | Reset Cursor&Shift
   Entry Mode Set       |  0  0 |  0   0   0   0   0   1  I/D SH  | Cur move/Disp shift on writing
   Display ON/OFF       |  0  0 |  0   0   0   0   1   D   C   B  | Disp/Cur/Blink on/off
   Cursor/Display Shift |  0  0 |  0   0   0   1  S/C R/L  -   -  | Cursor move / Disp Shift
   Function Set         |  0  0 |  0   0   1  DL   N   F   -   -  | DataBusWidth,Line,Font
   Set CGRAM Addr       |  0  0 |  0   1  AC5 AC4 AC3 AC2 AC1 AC0 | Set CGRAM address in AC
   Set DDRAM Addr       |  0  0 |  1  AC6 AC5 AC4 AC3 AC2 AC1 AC0 | Set DDRAM address in AC
   Read Addr/BF         |  0  1 | BF  AC6 AC5 AC4 AC3 AC2 AC1 AC0 | Read BF and AC
   Write Data           |  1  0 | D7  D6  D5  D4  D3  D2  D1  D0  | Write data
   Read Data            |  1  1 | D7  D6  D5  D4  D3  D2  D1  D0  | Read data
   ---------------------+-------+-------------------------+---------------------------------
     AC: Address Counter, CGRAM: Character Generator RAM, DDRAM: Display Data RAM
	 I/D: 1=increment, 0=decrement   SH: 1=Shift Enable, 0=Shift Disable
	 D:   1=Display ON, 0=Display OFF   C: 1=Cursor On, 0=Cursor Off   B: 1=Blink On, 0=Blink off
	 S/C: 1=Shift Display, 0=Move Cursor   R/L: 1=Right, 0=Left
	 DL:  1=8-bit, 0=4-bit   N: 1=2-line, 0=1-line    F: 1=5x10 dots, 0=5x7 dots
	 BF:  1=Busy, 0=Ready
/ ----------------------------------------------------------------------- */




/* *********************************************************************** */
/*                           関数実装の部分                                */
/* *********************************************************************** */

#ifndef _LCD_READ_SUPPORT_
  #ifndef _LCD_NO_BF_CHECK_
    #define _LCD_NO_BF_CHECK_
  #endif
#endif

/* ----------------------------------------------------------------------- /
/  ユーザーに提供される関数の実装                                          /
/  ハードウェアに依存しないので変更する必要はない                          /
/ ----------------------------------------------------------------------- */

/* write to LCD with BF check */
void LCD_Write(unsigned char rs, unsigned char data) {
#ifndef _LCD_NO_BF_CHECK_
    int i;
    i = 1000;
    while(i && (_lcd_read_no_busy_check(0)&0x80)) i--;;  /* check busy flag */
	_lcd_write_no_busy_check(rs, (data >> 4));   /* write data high */
	_lcd_write_no_busy_check(rs, (data & 0x0F)); /* write data low  */
#else  /* #ifdef _LCD_NO_BF_CHECK_ */
	_lcd_wait_usec(100);
	_lcd_write_no_busy_check(rs, (data >> 4));   /* write data high */
	_lcd_write_no_busy_check(rs, (data & 0x0F)); /* write data low  */
#endif
	/* wait 1.5msec in case of Clear Display and Return Home */
	if((rs==0) && (data < 0x04)) _lcd_wait_usec(1500);
}

/* read from LCD with BF check */
#ifdef _LCD_READ_SUPPORT_
  unsigned char LCD_Read(unsigned char rs) {
  #ifndef _LCD_NO_BF_CHECK_
      int i;
      i = 1000;
      while(i && (_lcd_read_no_busy_check(0)&0x80)) i--;  /* check busy flag */
  #else
      _lcd_wait_usec(100);
  #endif
    return _lcd_read_no_busy_check(rs);
}
#endif /* _LCD_READ_SUPPORT_ */

/* initialize LCD */
void LCD_Init(void) {
    _lcd_init_hw_specific();
/* BUSY FLAG can not be checked while the following instructions */
	_lcd_wait_usec(16000);            /* wait 16msec after POR   */
	_lcd_write_no_busy_check(0,0x03); /* Function Set: 0011      */
	_lcd_wait_usec(5000);             /* wait 5msec              */
	_lcd_write_no_busy_check(0,0x03); /* Function Set: 0011      */
	_lcd_wait_usec(150);              /* wait 150usec            */
	_lcd_write_no_busy_check(0,0x03); /* Function Set: 0011      */
	_lcd_wait_usec(100);

/* BUSY FLAG can be checked here */
	_lcd_write_no_busy_check(0,0x02); /* Function Set: 4-bit mode */
	LCD_Write(0,0x28);  /* Function Set: 4-bit, 2-line      */
	LCD_Write(0,0x08);  /* Display=OFF                      */
	LCD_Write(0,0x01);  /* Display CLEAR                    */
	LCD_Write(0,0x06);  /* Entry Mode Set: Insert, No Shift */
	LCD_Write(0,0x0D);  /* Display=ON,Cursor=OFF, Blink=ON  */
}

void LCD_PutChar(unsigned char c)
{
    LCD_Putc(c);
}

void LCD_Puts(unsigned char *buf, unsigned char maxlen)
{
	while((*buf != '\0') && (*buf != 0x0a) && (*buf != 0x0d) && (maxlen > 0)) {
		LCD_Putc(*buf);
		buf++;
		maxlen--;
	}
}

void LCD_PutHex(unsigned long n, signed char len)
{
	unsigned char c;

	if (len > 8) len = 8;
	while(len > 0) {
		len--;
		c = ((unsigned char)(n>>(len*4))) & 0x0f;  /* c = (n >> (4*len)) & 0x0f; */
		c = (c > 9) ? (c + ('A'-10)) : (c + '0');
		LCD_Putc(c);
	}
	return;
}

void LCD_wait_msec(unsigned short t)
{
	while(t--){
		_lcd_wait_usec(1000);
	}
	return;
}

void LCD_ShiftDisp(signed int n)
{
    if (n>0) {
        while(n) {
            LCD_Write(0,0x1C); // Shift display to right
            n--;
        }
    } else if (n<0) {
        while(n) {
            LCD_Write(0,0x18); // Shift display to left
            n++;
        }
    }
}

void LCD_ShiftCursor(signed int n)
{
    if (n>0) {
        while(n) {
            LCD_Write(0,0x14); // Move cursor to right
            n--;
        }
    } else if (n<0) {
        while(n) {
            LCD_Write(0,0x10); // Move cursor to left
            n++;
        }
    }
}

/* ----------------------------------------------------------------------- /
/  以下はハードウェア依存部分の実装                                        /
/  ここではCQ-FRK-NXP-ARMマイコン用マザーボードに合わせた内容になっている  /
/  LCD Pin Assign                                                          /
/     D[4..7]  P3[0..3]                                                    /
/     RS       P3[6]                                                       /
/     R/W      P3[5]                                                       /
/     EN       P3[4]                                                       /
/ ----------------------------------------------------------------------- */

/* wait 100 nano second or more */
static void _lcd_wait_100ns(void)
{
	/* 100ns = 7.2 clock cycles @ 72MHz */
    /* NOP takes 1 cycles */
    asm volatile(
        "mov r0, r0\n\t"
        "mov r0, r0\n\t"
        "mov r0, r0\n\t"
        "mov r0, r0\n\t"
        "mov r0, r0\n\t"
        "mov r0, r0\n\t"
        "mov r0, r0"
        );
}


/* wait 300 nano second or more */
static void _lcd_wait_300ns(void)
{
	/* 300ns = 21.6 clock cycles @ 72MHz */
    /* NOP takes 1 cycles */
    int i;
    for(i=0; i< 3; i++) {
        asm volatile(
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0"
            );
    }
}


/* wait T micro second or more */
static void _lcd_wait_usec(unsigned int t)
{
	/* 1us = 72 clock cycles @ 72MHz */
    unsigned long i;
    i = t;
    i <<= 3;            /* t = t * 8; */
    while(i) {          /* 'while' takes ? cycles */
        asm volatile(
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0\n\t"
            "mov r0, r0"
            );
		i--;            /* 'i--' takes ? cycle */
	}
}


#define LCD_NOP() asm volatile("mov r0, r0")

#define EN_PIN(x)   LCD_NOP(); FIO3PIN = ((FIO3PIN & 0xFFFFFFEF) | (x << 4))
#define RW_PIN(x)   LCD_NOP(); FIO3PIN = ((FIO3PIN & 0xFFFFFFDF) | (x << 5))
#define RS_PIN(x)   LCD_NOP(); FIO3PIN = ((FIO3PIN & 0xFFFFFFBF) | (x << 6))
#define PUT_DATA(x) LCD_NOP(); FIO3PIN = ((FIO3PIN & 0xFFFFFFF0) | x)
#define GET_DATA()  (FIO3PIN & 0x0000000F)
/* LPC2388 の問題: NOP が入っていないと、なぜかうまく動作しない */
/* GFIO の出力がパイプラインの働きでくずれてしまうのか？        */


/* write to LCD without BusyFlag check

 ENABLE cycle period needs minimum 1200 nsec.
*/
static void _lcd_write_no_busy_check(unsigned char rs, unsigned char data)
{
    FIO3DIR0 |= 0x7F;

    EN_PIN(0);           /* EN =0  */
    RW_PIN(0);           /* R/W=W  */
    RS_PIN(rs);          /* RS =rs */
    _lcd_wait_300ns();

    /* EN=1                  */
    EN_PIN(1);
    _lcd_wait_300ns();

    /* write data to D[4..7] */
    PUT_DATA(data);
    _lcd_wait_300ns();

    /* EN=0                  */
    EN_PIN(0);
    _lcd_wait_300ns();

    FIO3DIR0 |= 0x70;
    FIO3DIR0 &= 0xF0;
}


/* read from LCD without BusyFlag check

 ENABLE cycle period needs minimum 1200 nsec.
 */
#ifdef _LCD_READ_SUPPORT_
static unsigned char _lcd_read_4bit(unsigned char rs)
{
    unsigned char data;

    /* config D[4..7](data) as Input */
    FIO3DIR0 |= 0x70;
    FIO3DIR0 &= 0xF0;

    /* EN=0, R/W=R, RS=rs    */
    EN_PIN(0);           /* EN =0  */
    RW_PIN(1);           /* R/W=R  */
    RS_PIN(rs);          /* RS =rs */
    _lcd_wait_300ns();

    /* EN=1                  */
    EN_PIN(1);
    _lcd_wait_300ns();

    /* read data             */
    LCD_NOP();
    data = GET_DATA();
    _lcd_wait_300ns();

    /* EN=0                  */
    EN_PIN(0);
    _lcd_wait_300ns();

    RW_PIN(0);           /* R/W=0  */
    FIO3DIR0 |= 0x7F;

    return data;
}

static unsigned char _lcd_read_no_busy_check(unsigned char rs)
{
    return (_lcd_read_4bit(rs)<<4) | (_lcd_read_4bit(rs) & 0x0F);
}
#endif /* _LCD_READ_SUPPORT_ */


static void _lcd_init_hw_specific(void)
{
    PINSEL6 &= 0xFFFFC000;  /* set P3[0..6] as GPIO */
    PINMODE6 &= 0xFFFFC000; /* set P3[0..6] as pullup (default) */
    /* set P3[0..3] as Input, P3[4..6] as Output */
    FIO3DIR0 = (FIO3DIR0 & 0x80) | 0x70;
    FIO3MASK &= 0xFFFFFF80; /* set P3[0..6] mask off */
    FIO3PIN &= 0xFFFFFF80;  /* clear P3[0..6] */
}



/* ------------------------------------------------------------------------------ */

