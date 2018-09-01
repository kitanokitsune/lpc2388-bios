/**
 */

#include "lpc2300.h"

void uart0_init()
{
}

char uart0_getc(void)
{
    while((U0LSR & 0x1) == 0L){};
    return (char)U0RBR;
}

void uart0_putc(char c)
{
    while((U0LSR & 0x20)==0) {};
    U0THR = c;
}

void uart0_puts(char *str)
{
    while (*str) {
        uart0_putc(*str++);
    }
}

char uart0_dataReady(void)
{
    if(U0LSR & 0x1)
        return 1;
    else
        return 0;
}
