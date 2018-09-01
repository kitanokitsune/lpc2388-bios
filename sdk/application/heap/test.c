/*
    Heap Test
*/

#include "bios2388.h"
#include "xprintf.h"
#include "malloc2388.h"

extern _TN_MALLOC_INFO_t _tn_malloc_info[];
extern uint8_t _tiny_malloc_flag;

int i,j;
unsigned long p;
void test(void)
{
    unsigned char *pc;

    pc = malloc2388(sizeof(char)*0x410);
    p = gcc_current_pc();
    xprintf("\npc=0x%08x, addr=%08x\n", p,pc);
    i = 0;
    do {
        i++;
        pc = (unsigned char *)malloc2388(0x800);
        xprintf("(%2d) heap = %08x, sp=%08x\n", i, pc, current_sp());
        if (pc != NULL) {
            for(j=0; j<0x800; j++) {
                pc[j] = (unsigned char)(-j);
                if (pc[j] != (unsigned char)(-j)) xprintf("! %08x:%X\n",pc,j);
            }
        }
    } while (pc != NULL);

    xprintf("Exit internally with return code 0x975.\n");
    exit(0x975);
}


int main(void)
{
    int i;
    unsigned char blk, memcfg;
    void *k;

    blk = 4; /* cluster size */
    /* Memory configration for malloc2388 */
    memcfg = LPC_RAM | LPC_URAM | LPC_ERAM; /* Use main, USB and Ether RAM */

    xprintf("\nmalloc2388_init(clustersize=%d, memcfg=%d): %ld clusters available\n", blk, memcfg, malloc2388_init(blk, memcfg));


    xprintf("* alloc(5) = %08x\n",malloc2388(5));

    for (i=0 ; i<3; i++) {
        xprintf("* alloc(8) = %08x\n", malloc2388(8));
    }

    for (i=0 ; i<3; i++) {
        xprintf("* alloc(1) = %08x\n", malloc2388(1));
    }

    xprintf("* alloc(3) = %08x\n",k = malloc2388(3));

    for (i=0 ; i<3; i++) {
        xprintf("* alloc(8) = %08x\n", malloc2388(8));
    }

    xprintf("* free(3 @ %08x)\n", k);
    free2388(k);

    for (i=8 ; i>0; i--) {
        xprintf("* alloc(%d) = %08x\n",i , malloc2388(i));
    }


    test(); /* internally exit(0x975) */

    /* never processed */
    xprintf("complete.\n");

    return 1;
}

