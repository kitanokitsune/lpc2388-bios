
#include "lpc2300.h"
#include "bios2388.h"
#include "ff.h"			/* Declarations of FatFs API */
#include "xprintf.h"


FATFS fs;
char buff[256];

FRESULT scan_files (
    char* path        /* 開始ノード (ワークエリアとしても使用) */
)
{
    FRESULT res;
    DIR dir;
    UINT i;
    static FILINFO fno;


    res = f_opendir(&dir, path);                       /* ディレクトリを開く */
    if (res == FR_OK) {
        for (;;) {
            res = f_readdir(&dir, &fno);                   /* ディレクトリ項目を1個読み出す */
            if (res != FR_OK || fno.fname[0] == 0) break;  /* エラーまたは項目無しのときは抜ける */
            if (fno.fattrib & AM_DIR) {                    /* ディレクトリ */
                i = xstrlen(path);
                xsprintf(&path[i], "/%s", fno.fname);
                res = scan_files(path);                    /* 一つ下へ */
                if (res != FR_OK) break;
                path[i] = 0;
            } else {                                       /* ファイル */
                if (xstrcmp(path,"/")) xprintf("%s/%s\n", path, fno.fname);
                else xprintf("/%s\n", fno.fname);
            }
        }
        f_closedir(&dir);
    }

    return res;
}


int main (void)
{
    FRESULT res;


    xprintf("\n");
    res = f_mount(&fs, "", 1);
    if (res == FR_OK) {
        xstrncpy_n(buff, "/", 255);
        res = scan_files(buff);
    } else {
        xprintf("Drive not ready\n");
    }

    return res;
}
