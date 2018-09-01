/**
 * @file usrcmd.c
 * @author CuBeatSystems
 * @author Shinichiro Nakamura
 * @copyright
 * ===============================================================
 * Natural Tiny Shell (NT-Shell) Version 0.3.1
 * ===============================================================
 * Copyright (c) 2010-2016 Shinichiro Nakamura
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or
 * sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */


/*
    SD Card : http://wentwayup.tamaliver.jp/e412430.html
 */

#include "ntopt.h"
#include "ntlibc.h"
#include "uart.h"
#include "diskio.h"
#include "ff.h"			/* Declarations of FatFs API */
#include "xprintf.h"
#include <stdio.h>      /* for sprintf() */
#include <stdlib.h>     /* for strtoul() */

typedef int (*USRCMDFUNC)(int argc, char **argv);

static int usrcmd_ntopt_callback(int argc, char **argv, void *extobj);
static int usrcmd_help(int argc, char **argv);
static int usrcmd_info(int argc, char **argv);
static int usrcmd_dumpm(int argc, char **argv);
static int usrcmd_setm(int argc, char **argv);
static int usrcmd_sload(int argc, char **argv);
static int usrcmd_call(int argc, char **argv);
static int usrcmd_exec(int argc, char **argv);
static int usrcmd_list(int argc, char **argv);
static int usrcmd_del(int argc, char **argv);
static int usrcmd_move(int argc, char **argv);

typedef struct {
    char *cmd;
    char *desc;
    USRCMDFUNC func;
} cmd_table_t;

static const cmd_table_t cmdlist[] = {
    { "?", "This help", usrcmd_help },
    { "info", "Show system information", usrcmd_info },
    { "dump", "Dump memory", usrcmd_dumpm },
    { "setm", "Set memory", usrcmd_setm },
    { "load", "Load data into memory", usrcmd_sload },
    { "call", "Call address as a subroutine", usrcmd_call },
    { "exec", "(SD/MMC) Load and exec a program file", usrcmd_exec },
    { "list", "(SD/MMC) List files", usrcmd_list },
    { "del", "(SD/MMC) Delete a file/directory", usrcmd_del },
    { "move", "(SD/MMC) Move/Rename a file/directory", usrcmd_move },
};

union param32{
	long l32;
	int i32;
	unsigned long ul32;
	short s16[2];
	unsigned short us16[2];
	char c8[4];
	unsigned char uc8[4];
	char *cpoint;
	unsigned char *ucpoint;
	short *spoint;
	unsigned short *uspoint;
	long *lpoint;
	unsigned long *ulpoint;
	union param32 *upoint;
	int (*ppoint)();
};

static union param32 param[2];
static int ret;
static unsigned long ul;
static FIL Fil;
static FILINFO fno;
static FRESULT rc;
static FATFS FatFs;
static unsigned char ucbuf[2];
static UINT bw;


int usrcmd_execute(const char *text)
{
    return ntopt_parse(text, usrcmd_ntopt_callback, 0);
}

static int usrcmd_ntopt_callback(int argc, char **argv, void *extobj)
{
    if (argc == 0) {
        return 0;
    }
    const cmd_table_t *p = &cmdlist[0];
    for (int i = 0; i < sizeof(cmdlist) / sizeof(cmdlist[0]); i++) {
        if (ntlibc_strcmp((const char *)argv[0], p->cmd) == 0) {
            ret = p->func(argc, argv);
            xputs("\n");
            return ret;
        }
        p++;
    }
    xprintf(" Illegal command: %s.\n", argv[0]);
    xprintf(" Please type ? for help.\n");
    return 0;
}

static int usrcmd_help(int argc, char **argv)
{
    const cmd_table_t *p = &cmdlist[0];
    for (int i = 0; i < sizeof(cmdlist) / sizeof(cmdlist[0]); i++) {
        xprintf("%s\t:%s\n", p->cmd, p->desc);
        p++;
    }
    return 0;
}

static int usrcmd_info(int argc, char **argv)
{
    if (argc != 2) {
        xprintf("Usage: info sys\n"
                "       info ver\n");
        return 0;
    }
    if (ntlibc_strcmp(argv[1], "sys") == 0) {
        xprintf("Board\t:CQ-FRK-NXP-ARM\n"
                "CPU\t:NXP LPC2388FBD144\n"
                "\t ARM7TDMI-S Core\n"
                "\t 512KB Flash\n"
                "\t 64KB SRAM\n"
                "Peripheral\n"
                "LED\t:P1[18] (Low active)\n"
                "LCD\t:P3[6:0]=RS,R/W,EN,D[7:4]\n"
                "SD/MMC\t:P0[22:18]=DAT0/DO,CD,CMD/DI,CLK,WP\n"
                "\t P2[13:11]=DAT3/CS,DAT[2:1]\n");
        return 0;
    }
    if (ntlibc_strcmp(argv[1], "ver") == 0) {
        xprintf("Firmware Version 1.3\n");
        return 0;
    }
    xprintf(" Illegal sub command: %s.\n", argv[1]);
    return -1;
}

#define swapw(x) (unsigned short)(((x<<8) & 0xFF00)|((x>>8) & 0xFF))

static int arg2ul(char *str, unsigned long *ul)
{
    char *endp;
    *ul = strtoul(str, &endp, 0);
    if (endp == str) return -1;
    if (*endp != '\0') return -1;
    return 0;
}

static void xputc_printable(short s)
{
    s &= 0xff;
    if(((s >= 0x20) && ( s <= 0x7e)))
    {
        uart0_putc(s);
    }
    else
    {
        uart0_putc(0x2e);
    }
}

static int usrcmd_dumpm(int argc, char **argv)
{
    short *sp;
    short s,i;
    short sbuf[8];

    if (argc != 2 && argc != 3) {
        xprintf("Usage: dump <begin address> [<end address>]\n"
                "e.g. : dump 0x40000000 0x40000080\n");
        return 0;
    }
    if (arg2ul(argv[1], &ul)) {
        xprintf("Illegal argument!\n");
        return -1;
    }
    param[0].l32 = ul;
    if (argc == 3) {
        if (arg2ul(argv[2], &ul)) {
            xprintf("Illegal argument!\n");
            return -1;
        }
        param[1].l32 = ul;
    } else {
        param[1].l32 = param[0].l32 + 0x40;
    }
    param[0].l32 &= 0xfffffff0l;
    param[1].l32 &= 0xffffffffl;
    sp=param[0].spoint;

    xprintf("\n  ADDR  :  0 1  2 3  4 5  6 7  8 9  A B  C D  E F  << ascii dump >>\n");

    while(1)
    {

    xprintf("%08lX: ",(long)sp);
    for(i=0;i<8;i++)
    {
        s= *sp++;    sbuf[i]=s;
        xprintf("%04X ",(long)swapw(s));
        if(uart0_dataReady())
        {
            if(uart0_getc()==3) return 0;
            if(uart0_getc()==3) return 0;
        }
    }
    uart0_putc(' ');
    for(i=0;i<8;i++)
    {
        s=sbuf[i];
        xputc_printable(s);
        xputc_printable(s >> 8);
    }
    if(sp >= param[1].spoint)
    {
        uart0_puts("\r\n");
        return 0;
    }
    param[0].spoint=sp;
    if((param[0].l32 & 0xf)==0)
    {
        uart0_puts("\r\n");
    }

    }
    return 0;
}

static int usrcmd_setm(int argc, char **argv)
{
    char s, l, n;
    char *cp;

    if (argc != 2) {
        xprintf("Usage: setm <address>\n"
                "e.g. : setm 0x40002000\n");
        return 0;
    }
    if (arg2ul(argv[1], &ul)) {
        xprintf("Illegal argument!\n");
        return -1;
    }
    cp = ((char *)ul);

    while (1) {
_s0001:
        xprintf("%08X  ", (unsigned long)cp);
        xputc_printable(*cp);
        xprintf(" : %02X ", *cp);
        l = 0;
        n = 0;
        while (n < 2) {
            s = uart0_getc();
            if (s == '.' || s == 'Q' || s == 'q' || s == 3) return 0;
            if (s == 13) {
                if (n == 0) {
                    xprintf("\n");
                    cp++;
                    goto _s0001;
                } else {
                    *cp = l;
                    xprintf("\n");
                    cp++;
                    goto _s0001;
                }
            } else if (s == 'r' || s == 'R' || s == 'u' || s == 'U') {
                xprintf("\n");
                cp--;
                goto _s0001;
            } else if (s == 'n' || s == 'N' || s == 'v' || s == 'V') {
                xprintf("\n");
                cp++;
                goto _s0001;
            } else if (s == 0x1b) {
                s = uart0_getc();
                if (s == '[') {
                    s = uart0_getc();
                    switch (s) {
                      case 'A':
                        xprintf("\n");
                        cp--;
                        goto _s0001;
                        break;
                      case 'B':
                        xprintf("\n");
                        cp++;
                        goto _s0001;
                        break;
                      default:
                        continue;
                        break;
                    }
                }
            }
            if (s >= '0' && s <= '9') {
                l = (l<<4) | (s-'0');
            } else if (s >= 'a' && s <= 'f') {
                l = (l<<4) | (s-'a'+10);
            } else if (s >= 'A' && s <= 'F') {
                l = (l<<4) | (s-'A'+10);
            } else {
                continue;
            }
            xprintf("%1X", (l & 0xf));
            n++;
        }
        *cp = l;
        xprintf("\n");
        cp++;
    }

    return 0;
}

static int xctoh(char c)
{
    if((c >= 'a') && (c <= 'z')) c -= ' ';
    if((c >= '0') && (c <= '9')) return(c & 0xf);
    if((c >= 'A') && (c <= 'F')) return(c -= 0x37);
    return (-1);
}

void *srload(char (*getcfunc)(void), int silent)
{
    char *cp,*cpb;
    register unsigned long l;
    register int i,j,k,sm;
    int ii,flag;
    long len;

    len=0;    flag=0;

SRLDL:
    if((i=getcfunc()) ==3)    goto SRLDE;

    if(i != 'S')goto SRLDL;
    if((i=getcfunc())==3)    goto SRLDE;

    if(i == '9')        goto SRLDE;
    if(i == '8')        goto SRLDE;
    if(i == '7')        goto SRLDE;
    if(i == '0')        goto SRLDL;
    if(i == '5')        goto SRLDL;
    if((i >= '1') && (i <= '3'))
    {
        j=(i & 3)+1;
        if((i=getcfunc()) ==3)    goto SRLDE;
        k=xctoh(i);
        if((i=getcfunc()) ==3)    goto SRLDE;
        i=xctoh(i);
        k= k*16 + i;
        if(k==0)
        {
            i='9';    goto SRLDE;
        }
        sm = 0xFF;
        sm -= k;    k--;
        l=0;
        while(j--)
        {
            if((i=getcfunc()) ==3)    goto SRLDE;
            ii=xctoh(i);
            if((i=getcfunc()) ==3)    goto SRLDE;
            ii = ii*16 +xctoh(i);
            sm -= ii;
            l = (l << 8) + ii;
            k--;
        }
        cp = (char *)l;
        if(flag==0)
        {
            flag=1;
            cpb=cp;
        }
        while(k--)
        {
            if((i=getcfunc()) ==3)    goto SRLDE;
            ii=xctoh(i);
            if((i=getcfunc()) ==3)    goto SRLDE;
            ii = ii*16 + xctoh(i);
            sm -= ii;
            *cp++ = ii;
            len++;
        }
        if((i=getcfunc()) ==3)    goto SRLDE;
        ii=xctoh(i);
        if((i=getcfunc()) ==3)    goto SRLDE;
        ii = ii*16+ xctoh(i);
        if((sm & 0xFF) != (ii & 0xff))
        {
            if (!silent) {
                xprintf("checksum error !!  ");
                xprintf("%04X %04X",(short)sm,(short)ii);
            }
            i = -2;    goto SRLDE;
        }
        goto SRLDL;
    }
    else
    {
        if (!silent) xprintf("unsupported record type: S%c\n", i);
        return (void*)0;
    }
SRLDE:
    if(i == -1 || i == 3)
    {
        if (!silent) xprintf("breaked by console\n");
        return (void*)0;
    }
    if(i == -2)
    {
        if (!silent) xprintf("data might be corrupted\n");
        return (void*)0;
    }
    if((i == '9')||(i == '8')||(i == '7'))
    {
        k = 1;
        for(j=26-(i & 0xf)*2;j>0  && k;j--)
            k = getcfunc();
        if (!silent) {
            xprintf("start loading address = 0x%08lX\n",(long)cpb);
            xprintf("END.     bytes loaded = 0x%08lX\n",len);
        }
        return (void*)cpb;
    }
    if (!silent) xprintf("Abnormal terminate\n");
    return (void*)0;
}

static char fatfs_getc(void)
{
    if (uart0_dataReady()) {
        if (uart0_getc() == 3) return 3; /* Ctrl-C by console */
    }

    rc = f_read(&Fil, ucbuf, 1, &bw);
    if (rc != FR_OK || bw != 1) return 0;
    return (char)ucbuf[0];
}

static int usrcmd_sload(int argc, char **argv)
{
    if (argc == 2) {
        if (ntlibc_strcmp(argv[1], "<") == 0) {
            if (!srload(uart0_getc,0)) return -1;
            return 0;
        } else {
            if(f_mount(&FatFs, "", 1) != FR_OK) {
                xprintf("SD card is not ready.\n");
                return -1;
            }
            if(f_open(&Fil, argv[1], FA_READ) != FR_OK) {
                xprintf("%s not found.\n", argv[1]);
                return -1;
            }
            if (!srload(fatfs_getc,0)) return -1;
            return 0;
        }
    }
    xprintf("Usage 1) load <          (load data from this console)\n"
            "      2) load filename   (load data from a file)\n"
            "  data must be given in Motorola S-record format\n");
    return 0;
}

static int usrcmd_call(int argc, char **argv)
{
    if (argc != 2) {
        xprintf("Usage: call <address>\n"
                " e.g.: call 0x40002000\n");
        return 0;
    }
    if (arg2ul(argv[1], &ul)) {
        xprintf("Illegal argument!\n");
        return -1;
    }

    ret = ((int (*)(int, char**))ul)(argc-1, &argv[1]);
    xprintf("ret=%d\n",ret);
    return 0;
}

int exec_file(int argc, char **argv)
{
    int (*subfunc)(int, char**);

    if (argc < 1) return 2;

    if(f_mount(&FatFs, "", 1) != FR_OK) return 1;
    if(f_open(&Fil, argv[0], FA_READ) != FR_OK) return 2;
    subfunc = (int (*)(int, char**))srload(fatfs_getc,1);
    f_close(&Fil);

    if (!subfunc) return 3;
    xprintf("ret=%d\n", subfunc(argc, argv));

    return 0;
}

static int usrcmd_exec(int argc, char **argv)
{
    if (argc < 2) {
        xprintf("Usage: exec filename [arguments ...]\n"
                "  file must be in Motorola S-record format\n");
        return 0;
    }

    switch (exec_file(argc-1, &argv[1])) {
      case 1: xprintf("SD card is not ready.\n"); break;
      case 2: xprintf("%s not found.\n", argv[1]); break;
      case 3: xprintf("%s: Invalid S-record format.\n", argv[1]); break;
      default: break;
    }
    return 0;
}

static FRESULT scan_files (
    char* path        /* 開始ノード (ワークエリアとしても使用) */
)
{
    DIR dir;

    rc = f_opendir(&dir, path);                       /* ディレクトリを開く */
    if (rc == FR_OK) {
        for (;;) {
            rc = f_readdir(&dir, &fno);                   /* ディレクトリ項目を1個読み出す */
            if (rc != FR_OK || fno.fname[0] == 0) break;  /* エラーまたは項目無しのときは抜ける */
            xprintf("%04d/%02d/%02d ",
                    ((fno.fdate >> 9) & 0x7f)+1980,
                    (fno.fdate >> 5) & 0x0f,
                    (fno.fdate) & 0x1f
                    );
            xprintf("%02d:%02d:%02d ",
                    (fno.ftime >> 11) & 0x1f,
                    (fno.ftime >> 5)  & 0x3f,
                    ((fno.ftime)  & 0x1f) << 1
                    );
            if (fno.fattrib & AM_DIR) xprintf("<DIR>      ");  /* Directory */
            else xprintf("%10d ", fno.fsize); /* fsize is DWORD (4294967295) */
            if (ntlibc_strcmp(path,"/")) xprintf("%s/%s\n", path, fno.fname);
            else xprintf("%s\n", fno.fname);
        }
        f_closedir(&dir);
    }

    return rc;
}

static int usrcmd_list(int argc, char **argv)
{
    if (argc != 2) {
        xprintf("Usage: list <directory>\n"
                " e.g.: list /\n");
        return 0;
    }
    if(f_mount(&FatFs, "", 1) != FR_OK) {
        xprintf("SD card is not ready.\n");
        return -1;
    }
    if (scan_files(argv[1]) == FR_OK) return 0;

    return -1;
}

static int usrcmd_del(int argc, char **argv)
{
    if (argc != 2) {
        xprintf("Usage: del <path>\n");
        return 0;
    }
    if(f_mount(&FatFs, "", 1) != FR_OK) {
        xprintf("SD card is not ready.\n");
        return -1;
    }
    if (f_unlink(argv[1]) == FR_OK) return 0;
    xprintf("error\n");
    return -1;
}

static int usrcmd_move(int argc, char **argv)
{
    if (argc != 3) {
        xprintf("Usage: move <oldpath> <newpath>\n");
        return 0;
    }
    if(f_mount(&FatFs, "", 1) != FR_OK) {
        xprintf("SD card is not ready.\n");
        return -1;
    }
    if (f_rename(argv[1], argv[2]) == FR_OK) return 0;
    xprintf("error\n");
    return -1;
}

typedef union {
    double d;
    unsigned long l[2];
} d2ul_t;

char *_dbl2str(char *str, double d, int width, int prec, int flag)
{
    char fmt[12];
    d2ul_t v;

    if (width < 0) width = -width;
    if (prec < 0) prec = -prec;
    if (width > 24) width = 24;
    if (prec > 21) prec = 21;
    xsprintf(fmt, "%%s%%%d.%dl%c", width, prec, flag);

    v.d = d;
    sprintf(str, fmt, "", v.l[0], v.l[1]);

    return str;
}

#define _XSTRLEN_MAX_STRLEN_ 32767
long xstrlen(char *cp)
{
    long i;

    for(i=0;i<_XSTRLEN_MAX_STRLEN_;i++)
    {
        if(*cp++ == '\0')
            return i;
    }
    return i;
}

long xstrncpy_n(char *d,char *s,long n)
{
    register char c;
    register long l;
    l=0;
    while(n--)
    {
        c= *s++;
        if((c == ' ') || (c == '\0'))break;
        *d++ = c;
        l++;
    }
    *d++ = '\0'; 
    return(l);
}

int xstrcmp(char *d,char *s)
{
    register long l;
    register char c1,c2;
    l=250l;
    while(l--)
    {
        c1= *s++;
        c2= *d++;
        if(c1 > c2)
        {
            return(1);
        }
        if(c1 < c2)
        {
            return(-1);
        }
        if((c1 == 0) && (c2 == 0))
        {
            return(0);
        }
        if((c1 == 0) || (c2 == 0))
        break;
    }
    return(1);
}
