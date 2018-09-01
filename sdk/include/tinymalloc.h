#ifndef _TINYMALLOC_H_
#define _TINYMALLOC_H_

#include <string.h>   /* needed for memset() and NULL */
#include <stdint.h>   /* typedef : uint8_t, uintptr_t, etc. */

#ifdef __cplusplus
extern "C" {
#endif

#define _sp_margin_  ((uintptr_t)16)  /* heap margin to stack pointer */

typedef unsigned short _CLUSTER_IDX_t;
typedef unsigned short _CLUSTER_SIZE_t;
typedef unsigned short _BANK_IDX_t;
typedef unsigned short _BANK_BIT_t;
typedef struct {
    _BANK_BIT_t      *mark_alloc;
    _BANK_BIT_t      *mark_chain;
    void             * heap_base_address;
    _CLUSTER_SIZE_t  cluster_size;
    _CLUSTER_IDX_t   max_cluster_id;
    _BANK_IDX_t      number_of_banks;
#ifdef _sp_margin_
    uint8_t          chk_sp_collision;  // check sp collision if true
#endif
} _TN_MALLOC_INFO_t;
/****

(1) The above typedef must satisfy the following conditions:

 [a] MAXVALUE(_CLUSTER_IDX_t)
     > MEMORY_SIZE / _TN_MALLOC_INFO_t.cluster_size

 [b] MAXVALUE(_BANK_IDX_t)
     > MEMORY_SIZE / (8*sizeof(_BANK_BIT_t)*_TN_MALLOC_INFO_t.cluster_size)

  where MAXVALUE(t) indicates the maximum representable value of type 't'.
  for e.g., MAXVALUE(signed char)=127, MAXVALUE(unsigned char)=255


(2) tinymalloc requires _TN_MALLOC_INFO_t object which holds memory
    configuration. The first argument of each _s_tiny_* function must be
    a pointer to that object.

    If you make a large heap assembled with discrete memory areas, each memory
    area should have an individual _TN_MALLOC_INFO_t object.


(3) Defining macro _sp_margin_ enables collision check against stack pointer.
    You need to prepare a function 'current_sp()', which tells current value
    of stack pointer.
    A variable chk_sp_collision, a member of _TN_MALLOC_INFO_t, controls a
    collision check in an individual memory area. If chk_sp_collision is set
    to zero, collision check is disabled in a corresponding memory area.

****/


#ifdef _sp_margin_
uintptr_t current_sp(void);
#endif

unsigned long _s_tiny_malloc_init_(_TN_MALLOC_INFO_t *, _CLUSTER_SIZE_t, uintptr_t, uintptr_t);
void * _s_tiny_malloc_(_TN_MALLOC_INFO_t *, size_t);
void _s_tiny_free_(_TN_MALLOC_INFO_t *, void *);

#ifdef __cplusplus
}
#endif

#endif /* _TINYMALLOC_H_ */
