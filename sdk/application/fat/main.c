
#include "lpc2300.h"
#include "bios2388.h"
#include "diskio.h"
#include "ff.h"			/* Declarations of FatFs API */
#include "xprintf.h"
#include "lcd1602.h"

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


void rc2msg(char *f, FRESULT rc)
{
    xprintf(f);
    switch (rc) {
      case RES_ERROR:  xprintf(": R/W Error\n"); break;
      case RES_NOTRDY: xprintf(": Drive Not Ready\n"); break;
      case RES_PARERR: xprintf(": Invalid Paramter\n"); break;
      case RES_OK:     xprintf(": OK\n"); break;
      case RES_WRPRT:  xprintf(": Media Write Protedted\n"); break;
      default: xprintf(": returns code=%d\n",rc);break;
    }
}

int main (void)
{
	FIL Fil;	/* File object needed for each open file */
    FATFS FatFs; /* FatFs work area needed for each volume */
    UINT bw;
    FRESULT rc;
    unsigned char rbuf[2];

    xdev_out(uart0_putc);
    xdev_in(uart0_getc);

    LCD_Init();
    LCD_Clear();
    LCD_Puts("Hello!",6);
    LCD_SetCursorPos(5, 0);

    FIO1DIR_B.B18=1; FIO1PIN_B.B18=1;
    xprintf("\n*** Mount Drive ***\n");
	rc = f_mount(&FatFs, "", 1);		/* Give a work area to the default drive */
    rc2msg("f_mount()", rc);

    xprintf("\n*** Create NEWFILE.TXT ***\n");
    rc = f_open(&Fil, "newfile.txt", FA_WRITE | FA_CREATE_ALWAYS);
    rc2msg("f_open()",rc);
	if (rc == FR_OK) {	/* Create a file */

        rc = f_write(&Fil, "Hello to world!\n", 18, &bw);	/* Write data to the file */
        rc2msg("f_write()",rc);

		rc = f_close(&Fil);								/* Close the file */
        rc2msg("f_close()",rc);

		if (bw == 18) {		/* Lights green LED if data written well */
			FIO1DIR_B.B18=1; FIO1PIN_B.B18=0;
		}
    }

    xprintf("\n*** Read NEWFILE.TXT ***\n");
    rc = f_open(&Fil, "newfile.txt", FA_READ);
    rc2msg("f_open()",rc);
    if (rc == FR_OK) {
        xprintf("---- f_read() start ----\n");
        do {
            rc = f_read(&Fil, rbuf, 1, &bw);
            xprintf("%c", rbuf[0]);
        } while (bw);
        xprintf("\n----- f_read() end -----\n");
		rc = f_close(&Fil);
        rc2msg("f_close()",rc);
    }

    wait_msec(1000);
    FIO1PIN_B.B18=1;
    wait_msec(1000);
    FIO1PIN_B.B18=0;
    wait_msec(1000);
    FIO1PIN_B.B18=1;
    LCD_Clear();
    LCD_Puts("Done",4);
    return 0;
}

