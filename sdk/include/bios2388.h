#ifndef _BIOS2388_H_
#define _BIOS2388_H_

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

char uart0_dataReady(void);
char uart0_getc(void);
void uart0_putc(char);
long xstrncpy_n(char *dst,char *src,long len);
int xstrcmp(char *,char *);
long xstrlen(char *);

void sys_exit(unsigned long);
#define exit(x) sys_exit(x)

char *_dbl2str(char *, double, int, int, int);
#define d2sf(b, d, w, p) _dbl2str(b, d, w, p, 'f') /* floating point */
#define d2se(b, d, w, p) _dbl2str(b, d, w, p, 'e') /* scientific notation */
#define d2sg(b, d, w, p) _dbl2str(b, d, w, p, 'g') /* shortest representation */

uintptr_t current_sp(void);

#ifdef __cplusplus
}
#endif

/*
static __inline__ void * gcc_current_pc(void)  {
    void *pc;
    asm("mov %0, pc" : "=r"(pc));
    return pc;
}
*/
static inline unsigned long gcc_current_pc(void)  {
    volatile unsigned long pc;
    asm volatile ("mov %0, pc" : "=r"(pc));
    return pc;
}
/*
static inline unsigned long gcc_current_sp(void)
{
    volatile register unsigned sp asm("sp");
    return sp;
}
*/


// split double into two unsigned longs: this is for sprintf()
typedef union {
    double d;
    unsigned long l[2];
} d2ul_t;


#endif // _BIOS2388_H_
