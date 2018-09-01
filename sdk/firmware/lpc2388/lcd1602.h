#ifndef __LCD1602_H__
#define __LCD1602_H__

/* LCD SC1602 Control Library */

#ifdef __cplusplus
extern "C" {
#endif

/* ----------------------------------------------------------------------- /
/  ユーザーに提供される関数／マクロ                                        /
/ ----------------------------------------------------------------------- */

void LCD_Init(void);
     /* LCDを初期化する。
	    最初に呼び出す必要がある。 */

void LCD_Write(unsigned char rs, unsigned char data);
     /* LCDに data (8bit) を書き込む。
	    rs=0のとき命令レジスタ、rs=1のときCGRAM/DDRAM にアクセス*/

unsigned char LCD_Read(unsigned char rs);
     /* LCDからデータ (8bit) を読み込む。
	    rs=0のとき命令レジスタ、rs=1のときCGRAM/DDRAM にアクセス*/

void LCD_PutChar(unsigned char c);
     /* １文字出力マクロ LCD_Putc(c) のラッパー関数。
        関数ポインタが必要な場合に使用。通常は使用しない */

void LCD_Puts(unsigned char *buf, unsigned char maxlen);
     /* LCDに文字列を表示する。bufは文字列へのポインタ。
	    文字列がmaxlenより長い場合は、maxlenの長さまで表示 */

void LCD_PutHex(unsigned long n, signed char len);
     /* LCDに16進数（８桁まで）を表示する。
	    ｎは表示する数値、lenは表示桁数（１８） */

void LCD_wait_msec(unsigned short t);
     /* msec 単位のウェイト。
	    ウェイト時間はおおよそであり、精度は良くない */

void LCD_ShiftDisp(signed int n);
     /* 画面のシフト。
	    ｎ＞０で右へｎ回シフト、ｎ＜０で左へｎ回シフト */

void LCD_ShiftCursor(signed int n);
     /* カーソルのシフト。
	    ｎ＞０で右へｎ回シフト、ｎ＜０で左へｎ回シフト */

#define LCD_Clear()				LCD_Write(0, 0x01)
     /* LCD画面をクリア */

#define LCD_ReturnHome()		LCD_Write(0, 0x02)
     /* カーソルをホームポジションへ移動 */

#define LCD_Putc(c)				LCD_Write(1, c)
     /* キャラクタコード c の文字を１文字出力 */

#define LCD_SetCursorPos(x, y)	LCD_Write(0, ((y<<6)|x) | 0x80)
     /* カーソル位置を設定する */

#define LCD_DisplayOff()		LCD_Write(0, 0x08)
     /* ディスプレイをOFFにする */

#define LCD_DisplayOn()			LCD_Write(0, 0x0C)
     /* ディスプレイON、カーソルOFFにする */

#define LCD_CursorOff()			LCD_Write(0, 0x0C)
     /* ディスプレイON、カーソルOFFにする */

#define LCD_CursorOn()			LCD_Write(0, 0x0E)
     /* ディスプレイON、カーソルON、Blink OFFにする */

#define LCD_BlinkOn()			LCD_Write(0, 0x0F)
     /* ディスプレイON、カーソルON、Blink ONにする */

#define _LCDSTR(s)				((unsigned char*)(s))
     /* 文字列変換マクロ */


#ifdef __cplusplus
}
#endif

#endif /* __LCD1602_H__ */
