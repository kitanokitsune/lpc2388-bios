/*
    BIOS test
*/

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "lpc2300.h"
#include "bios2388.h"
#include "lcd1602.h"
#include "malloc2388.h"
#include "xprintf.h"

int main(void)
{
    static char *pc;
    static int i,j;
    static char buf[50];
    static char dbuf[26];

    /* set xprintf stream to UART0 */
    xdev_out(uart0_putc);
    xdev_in(uart0_getc);
    xprintf("\n");

    /* LCD test */
    LCD_Init();
    LCD_Clear();
    LCD_Puts(" <LPC2388 BIOS>",40);
    LCD_SetCursorPos(0, 1);
    LCD_Puts(" COM:115200bps",40);

    /* malloc test */
    malloc2388_init( /* cluster size     */ 4,
                     /* config heap area */ LPC_RAM|LPC_URAM|LPC_ERAM);
    xprintf("\n=== malloc test ===\n");
    if( (pc = (char*)malloc2388(sizeof(char)*50)) == NULL ) {
        xprintf("malloc error\n");
    } else {
        sprintf(pc, "malloc2388(sizeof(char)*50) = (void *)%08p\n", (unsigned long)pc);
        xprintf(pc);
        free2388(pc); pc = NULL;
    }

    /* division */
    xprintf("\n=== integer division test ===\n");
    j = 355;
    for ( i=3 ; i<6 ; i++) {
        j--;
        xprintf("%d/%d = %d ... %d\n", j,i,j/i,j%i);
    }

    /* floating point */
    xprintf("\n=== floating point test ===\n");
    for( i=3 ; i>=2 ; i--) {
        sprintf(buf, "sqrt(%d)   = %s\n", i, d2sf(dbuf, sqrt((double)i), 12, 9));
        xprintf(buf);
    }
    sprintf(buf, "4*atan(%d) = %s\n", i, d2sf(dbuf, 4.0*atan((double)i), 12, 9));
    xprintf(buf);

    /* random number */
    xprintf("\n=== random number test ===\n");
    srand((unsigned)T0TC);
    sprintf(buf, "rand() = %d\n", rand());
    xprintf(buf);


    return 1234; /* BIOS monitor shows this return value */

}

