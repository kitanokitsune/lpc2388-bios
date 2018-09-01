/*
 FLASH ROM 内のモニタプログラム lpc2388_monitor を OS として利用する実験。
 このアプリは、FLASH ROM 内にある機能（シリアル通信等）を BIOS として利用する、
 モニタから RAM にロードして実行するアプリケーション。

 使い方：
    電源投入でモニタプログラムが起動したら、
    lコマンドでmotファイルをロードして g40008000 で実行する。
    すると、シリアルコンソールとLCDディスプレイにカウントダウンが
    表示され、10秒後にモニタプログラムに制御が戻ってくる。
*/

#include "lpc2300.h"
#include "lcd1602.h"
#include "xprintf.h"

/* タイマーを使った msec 単位の wait */
void wait_msec(unsigned int msec)
{
    unsigned int usec;
    usec = msec * 1000;

    T0TCR = 0x02; //Reset Timer
    T0TCR = 0x01; //Enable timer
    while(T0TC < usec);
//    T0TCR = 0x00; //Disable timer
}


/* メイン関数。この実行が終わるとモニタプログラムに制御を返す */
int main(void){
    int i,j;

    j = 0;
    LCD_Init();
    LCD_Clear();
	LCD_SetCursorPos(0,0);
    LCD_Puts("Wait:", 5);
    xprintf("\nOK");
    for (i=9;i>=0;i--) {
        LCD_DisplayOff();
        FIO1PIN &= ~0x00040000;  /* P1[18] '0' -> LED ON */
        xprintf(" %d",j);
        j++;
        wait_msec(500);
        LCD_DisplayOn();
		LCD_SetCursorPos(6,0);
    	LCD_PutHex(i, 1);
        FIO1PIN = 0x00040000;	 /* P1[18] '1' -> LED OFF */
        xprintf(" %d",j);
        j++;
        wait_msec(500);
    }
    LCD_Clear();
    LCD_Puts("Hello!",6);
    FIO1PIN &= ~0x00040000;  /* P1[18] '0' -> LED ON */
    xprintf("\n");

  return 0x123; /* ここで返した値は、モニタプログラムが返値として表示する */

}

