#include "malloc2388.h"

/**********************************

    ３つのRAM領域（Main RAM / USB RAM / Ethernet RAM）をヒープに使うので
    _tn_malloc_info[] を３つ分確保する。このうち、Main RAM はスタックポインタ
    との衝突判定を行う。残りの二つのRAMは衝突判定は不要。

 **********************************/
_TN_MALLOC_INFO_t _tn_malloc_info[3];
#define MAIN_RAM  0     /* _tn_malloc_info[0] */
#define USB_RAM   1     /* _tn_malloc_info[1] */
#define ETH_RAM   2     /* _tn_malloc_info[2] */

/**********************************

    各RAM領域の定義

 **********************************/
#define RAM_BEG     0x40000000L  /* Main RAM begin address */
#define URAM_BEG    0x7FD00000L  /* USB RAM begin address */
#define ERAM_BEG    0x7FE00000L  /* Eth RAM begin address */

#define RAM_SIZE    0x10000L  /* Main RAM Size = 64KB */
#define URAM_SIZE   0x4000L   /* USB  RAM Size = 16KB */
#define ERAM_SIZE   0x4000L   /* Eth  RAM Size = 16KB */

#define RAM_END    (RAM_BEG+RAM_SIZE)    /* Main RAM end address + 1 */
#define URAM_END   (URAM_BEG+URAM_SIZE)  /* USB RAM end address + 1 */
#define ERAM_END   (ERAM_BEG+ERAM_SIZE)  /* Eth RAM end address + 1 */

#define IS_RAM(x)  (RAM_END > (unsigned long)(x) && (unsigned long)(x) >= RAM_BEG)
#define IS_URAM(x) (URAM_END > (unsigned long)(x) && (unsigned long)(x) >= URAM_BEG)
#define IS_ERAM(x) (ERAM_END > (unsigned long)(x) && (unsigned long)(x) >= ERAM_BEG)


/**********************************

    RAM領域を区別するためのフラグ

 **********************************/
uint8_t _tiny_malloc_flag;

#define USE_RAM_P  (_tiny_malloc_flag & LPC_RAM)
#define USE_URAM_P (_tiny_malloc_flag & LPC_URAM)
#define USE_ERAM_P (_tiny_malloc_flag & LPC_ERAM)


/**********************************

    その他のマクロ等

 **********************************/
#define AttachMemToHeap(x)  _tiny_malloc_flag |= (x);
#define DetachMemFromHeap(x) _tiny_malloc_flag &= ~(x)
#define InitMalloc(r,b,s,e) _s_tiny_malloc_init_(&_tn_malloc_info[r], b, s, e)

#ifdef _sp_margin_
#define ChkSpCollision(n,x) _tn_malloc_info[n].chk_sp_collision = (x)
#else
#define ChkSpCollision(n,x)
#endif


/**********************************

    以下、関数の定義

 **********************************/

#ifdef TRUE
#undef TRUE
#endif
#define TRUE 1

#ifdef FALSE
#undef FALSE
#endif
#define FALSE 0

/* 管理領域を初期化し、確保可能なヒープ領域サイズを計算する */
unsigned long __malloc2388_init(uint8_t bs, uint8_t flag, uintptr_t heap_start_adr, uintptr_t heap_end_adr)
{
    unsigned long s;

    s = 0;
/*    _tiny_malloc_flag = 0; */
    DetachMemFromHeap( LPC_RAM | LPC_URAM | LPC_ERAM );

    /* Main RAM をヒープに登録。管理領域を初期化 : スタックとの衝突判定あり */
    if (flag & LPC_RAM) {
        AttachMemToHeap(LPC_RAM);
        ChkSpCollision(MAIN_RAM,TRUE);
        s += InitMalloc(MAIN_RAM, bs, heap_start_adr, heap_end_adr);
    }

    /* USB RAM をヒープに登録。管理領域を初期化 : スタックとの衝突判定なし */
    if (flag & LPC_URAM) {
        AttachMemToHeap(LPC_URAM);
        ChkSpCollision(USB_RAM,FALSE);
        s += InitMalloc(USB_RAM, bs, URAM_BEG, URAM_END);
    }

    /* Eth RAM をヒープに登録。管理領域を初期化 : スタックとの衝突判定なし */
    if (flag & LPC_ERAM) {
        AttachMemToHeap(LPC_ERAM);
        ChkSpCollision(ETH_RAM,FALSE);
        s += InitMalloc(ETH_RAM, bs, ERAM_BEG, ERAM_END);
    }

    return s;
}


/* メモリを確保する。Main RAM はスタックと衝突する恐れがあるので最後にする */
void * malloc2388(size_t s)
{
    void *p;

    /* まず USB RAM から空きメモリを探す */
    if (USE_URAM_P) {
        if (p = _s_tiny_malloc_(&_tn_malloc_info[USB_RAM], s)) return p;
    }

    /* 上の領域に空きがなかったら、次に Eth RAM を探す*/
    if (USE_ERAM_P) {
        if (p = _s_tiny_malloc_(&_tn_malloc_info[ETH_RAM], s)) return p;
    }

    /* 上２つの領域に空きがなかったら、Main RAM を探す*/
    if (USE_RAM_P) {
        if (p = _s_tiny_malloc_(&_tn_malloc_info[MAIN_RAM], s)) return p;
    }

    return NULL;
}


/* 確保されたメモリを解放する */
void free2388(void *ptr)
{
    if (IS_RAM(ptr)) {
        if (USE_RAM_P)  _s_tiny_free_(&_tn_malloc_info[MAIN_RAM], ptr);
    } else if (IS_URAM(ptr)) {
        if (USE_URAM_P) _s_tiny_free_(&_tn_malloc_info[USB_RAM], ptr);
    } else if (IS_ERAM(ptr)) {
        if (USE_ERAM_P) _s_tiny_free_(&_tn_malloc_info[ETH_RAM], ptr);
    }
}

