#include "tinymalloc.h"

#ifndef min
#define min(x,y) ((x)>(y) ? (y) : (x))
#endif
#ifndef max
#define max(x,y) ((x)>(y) ? (x) : (y))
#endif


#define clustersize(mem)   (mem->cluster_size)
#define maxcluster(mem)    (mem->max_cluster_id)
#define total_banks(mem)   (mem->number_of_banks)
#define alloc_stat(mem)    (mem->mark_alloc)
#define chain_stat(mem)    (mem->mark_chain)
#define heap_base(mem)     (mem->heap_base_address)
#define is_sp_active(mem)  (mem->chk_sp_collision)


unsigned long _s_tiny_malloc_init_(
    _TN_MALLOC_INFO_t *mem,
    _CLUSTER_SIZE_t bs,
    uintptr_t _heap_start_,
    uintptr_t _heap_end_
    )
{
    uintptr_t memSize;

#ifdef _sp_margin_
    if (is_sp_active(mem)) {
        if ( _heap_start_ >= (current_sp()-_sp_margin_) ) {
            clustersize(mem) = 0;
            total_banks(mem) = 0;
            return 0L;
        }
        memSize = min(_heap_end_, current_sp()-_sp_margin_) - _heap_start_;
    } else {
        memSize = _heap_end_ - _heap_start_;
    }
#else
    memSize = _heap_end_ - _heap_start_;
#endif

    clustersize(mem) = (_CLUSTER_SIZE_t)max(bs,1);
    total_banks(mem) = (memSize - 1)/(sizeof(_BANK_BIT_t)*(8*clustersize(mem) + 2)) + 1;
    maxcluster(mem) =
        min(
            (memSize - (sizeof(_BANK_BIT_t)*2*total_banks(mem))) / clustersize(mem),
            total_banks(mem)*sizeof(_BANK_BIT_t)*8
        );
    alloc_stat(mem) = (_BANK_BIT_t *)_heap_start_;
    chain_stat(mem) = (_BANK_BIT_t *)_heap_start_ + total_banks(mem);
    heap_base(mem) = (_BANK_BIT_t *)_heap_start_ + 2*total_banks(mem);

    memset((uint8_t *)_heap_start_, 0, sizeof(_BANK_BIT_t)*2*total_banks(mem));

    return (unsigned long)maxcluster(mem);
}

void * _s_tiny_malloc_(_TN_MALLOC_INFO_t *mem, size_t size)
{
    _BANK_IDX_t startBank, endBank;
    _CLUSTER_IDX_t start_cluster_id, end_cluster_id, block_qty;
    _BANK_BIT_t startBit, endBit;

    if (clustersize(mem) < 1) return NULL;

    block_qty = (size - 1) / clustersize(mem) + 1;
    if (block_qty < 1) return NULL;

    startBank = 0;
    startBit = 1;
    start_cluster_id = 0;

  _findblock:
    /* Find a free block */
    if(start_cluster_id >= maxcluster(mem)) return NULL;
    while(alloc_stat(mem)[startBank] & startBit) {
        start_cluster_id++;
        if(start_cluster_id >= maxcluster(mem)) return NULL;
        startBit <<= 1;
        if(!startBit) { /* bit overflow: search next bank */
            startBit = 1;
            startBank++;
        }
    }

    /* check length of the free space */
    endBank = startBank;
    endBit  = startBit;
    end_cluster_id  = start_cluster_id;
    while(!(alloc_stat(mem)[endBank] & endBit)) {
        if(end_cluster_id >= start_cluster_id + block_qty - 1) goto _blk_found;
        end_cluster_id++;
        if(end_cluster_id >= maxcluster(mem)) return NULL;
        endBit <<= 1;
        if(!endBit) { /* bit overflow: search next bank */
            endBit = 1;
            endBank++;
        }
    }
    startBank = endBank;
    startBit = endBit;
    start_cluster_id = end_cluster_id;
    goto _findblock;

  _blk_found:
#ifdef _sp_margin_
    if (is_sp_active(mem)) {
        if ((uintptr_t)heap_base(mem) + start_cluster_id*clustersize(mem) + _sp_margin_ >= current_sp())
            return NULL;
    }
#endif
    /* mark flags: "in use" and "group block" */
    endBank = startBank;
    endBit  = startBit;
    for (end_cluster_id=start_cluster_id; end_cluster_id < start_cluster_id+block_qty-1; end_cluster_id++) {
        alloc_stat(mem)[endBank] |= endBit;
        chain_stat(mem)[endBank]  |= endBit;
        endBit <<= 1;
        if(!endBit) {
            endBit = 1;
            endBank++;
        }
    }
    alloc_stat(mem)[endBank] |= endBit;
    chain_stat(mem)[endBank]  &= (~endBit);

    return (void *)((uintptr_t)heap_base(mem) + start_cluster_id*clustersize(mem));
}

void _s_tiny_free_(_TN_MALLOC_INFO_t *mem, void *ptr)
{
    _BANK_IDX_t bank;
    _BANK_BIT_t bit;
    _CLUSTER_IDX_t cluster_id;

    if (ptr == NULL || clustersize(mem) < 1) return;

    cluster_id = ((uintptr_t)ptr - (uintptr_t)heap_base(mem)) / clustersize(mem);
    if (cluster_id >= maxcluster(mem) || cluster_id < 0) return;

    bank = cluster_id / (8*sizeof(_BANK_BIT_t));
    bit = 1 << (cluster_id % (8*sizeof(_BANK_BIT_t)));

    /* clear flags */
    alloc_stat(mem)[bank] &= (~bit);
    while (chain_stat(mem)[bank] & bit) {
        chain_stat(mem)[bank] &= (~bit);
        bit <<= 1;
        if(!bit) {
            bit = 1;
            bank++;
        }
        alloc_stat(mem)[bank] &= (~bit);
    }
}

