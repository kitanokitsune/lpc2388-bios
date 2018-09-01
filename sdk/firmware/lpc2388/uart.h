/**
 */

#ifndef UART_H
#define UART_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

void uart0_init(void);
char uart0_getc(void);
void uart0_putc(char c);
void uart0_puts(char *str);
char uart0_dataReady(void);

#ifdef __cplusplus
}
#endif

#endif

