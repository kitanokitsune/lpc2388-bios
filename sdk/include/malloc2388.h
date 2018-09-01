#ifndef _MALLOC2388_H_
#define _MALLOC2388_H_

/*
  malloc2388 : 簡易的な malloc 実装

  この実装では、クラスタ単位でメモリ領域を管理している。
  要求するメモリサイズがクラスタ単位に満たない場合でも、
  確保されるメモリはクラスタ単位である。メモリサイズは
  内部でクラスタ単位に切り上げられる。

  提供される関数は以下の３つ

    ULONG malloc2388_init(blksize,flg) : 初期化関数
    void *malloc2388(size)             : tiny版malloc()
    void  free2388(ptr)                : tiny版free()

  利用前に必ず１度だけ malloc2388_init() を実行して初期化
  する必要がある。malloc2388_init() の第一引数にはクラスタ
  のサイズ（バイト数）を指定する。第二引数でヒープとして利用
  するメモリ領域の種類を指定する（以下のマクロの論理和）。

    LPC_RAM   :  ユーザーRAM 領域  (0x40000000～0x4000FFFF)
    LPC_URAM  :  USB RAM 領域      (0x7FD00000～0x7FD03FFF)
    LPC_ERAM  :  Ethernet RAM 領域 (0x7FE00000～0x7FE03FFF)

    例：malloc2388_init(4, LPC_RAM | LPC_URAM | LPC_ERAM);
        関数の返値 = 利用可能な最大クラスタ数（※１）

  複数のメモリ領域を指定した場合、以下の優先順位で使用される。
     LPC_URAM (USB) → LPC_ERAM (Ethernet) → LPC_RAM (User)


  ※１
     ユーザーRAM領域にはモニタプログラム、ユーザープログラム、
     及びそれらが使用しているワーキングメモリが存在するため、
     実際にヒープへ割り当てられる領域は、これらを除外した残り
     である。

     ヒープとしてユーザーRAM領域を利用する場合、スタック
     ポインタはヒープへの侵入を検知しないので、malloc2388() が
     既に確保したメモリをスタックが破壊することがある。

     例えばユーザープログラムで関数呼び出しのネストが深くなる
     場合や自動変数を大量に使う場合には、スタックが大量に消費
     されて malloc2388() が確保した領域へ侵入するかもしれない。

     なお、メモリ確保時は malloc2388() がスタックポインタ
     との衝突判定をするので、メモリ確保動作でスタックが破壊
     されることはない。



  ※２
     malloc2388_init() はヒープを管理するためにメモリ領域
     の数％～２０％程度を管理用の領域としてリザーブする。
     この領域はヒープとして利用できない「デッド・スペース」
     となる。

     管理領域のサイズはメモリ領域のサイズとクラスタサイズに
     依存し、概ね次式で与えられる。

       管理領域 ＝ メモリ領域÷(４×クラスタサイズ＋１)

     クラスタサイズ＝１バイトの場合は、メモリ領域の約２０％
     が管理領域として消費される。クラスタサイズを大きくする
     と、この比率を下げることができる。

     適切なクラスタサイズは「管理領域」と「クラスタ単位への
     切り上げで発生する端数」とのトレード・オフで決定すべき
     である。

     確保するメモリサイズが、ある数の整数倍である場合は、
     その数をクラスタサイズにするとよい。そうでない場合は、
     経験的にクラスタサイズ＝２が効率がよい。


  ※３
     malloc2388()/free2388() と malloc()/free() の実装には
     互換性がない。このため、malloc2388()で取得したメモリを
     free()で解放したり、malloc()で取得したメモリをfree2388()
     で解放することはできない（してはいけない）。

*/

#include "tinymalloc.h"

#ifdef __cplusplus
extern "C" {
#endif

#define LPC_RAM   (1)
#define LPC_URAM  (1 << 1)
#define LPC_ERAM  (1 << 2)

extern long _heap_start_;
extern long _heap_end_;
#define beg_heap   ((uintptr_t)&_heap_start_)
#define end_heap   ((uintptr_t)&_heap_end_)

unsigned long __malloc2388_init(uint8_t, uint8_t, uintptr_t, uintptr_t);
#define malloc2388_init(bs, flg) __malloc2388_init(bs, flg, beg_heap, end_heap)
void *malloc2388(size_t memorysize);
void free2388(void *ptr);

#ifdef __cplusplus
}
#endif

#endif /* _MALLOC2388_H_ */
