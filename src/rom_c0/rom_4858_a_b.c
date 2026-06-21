/* Cluster Func_800488c..Func_800488c extracted from goldensun/asm/rom_c0/rom_4858_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_4858_a_a.o and asm/rom_c0/rom_4858_a_c.o in
 * goldensun/stage1.ld.
 */

#include "gba/types.h"
#include "dma.h"

extern unsigned int gIWRAMHeap_end;
extern void *gPtrs[];

extern u8 gIWRAMHeap[];
extern u8 gEWRAMHeap[];

void ClearHeap(void) {
    DMA3_CLEAR(gPtrs, 0x100);
    gPtrs[1] = gIWRAMHeap;
    gPtrs[0] = gEWRAMHeap;
}

u32 Func_800488c(void) {
    return (void *)&gIWRAMHeap_end - gPtrs[1];
}

u32 Func_80048a0(void) {
    return (void*)(0x02040000) - gPtrs[0];
}

void *galloc_iwram(s32 index, u32 size) {
    void *ewramPtr;
    void *ptr;

    ptr = gPtrs[index];

    if (ptr != 0) return ptr;

    ptr = gPtrs[1];
    size = ((size + 3) / 4) * 4;
    if (ptr + size > (void*)0x030077ff) {
        ewramPtr = gPtrs[0];
        if (ewramPtr + size >= (void*)0x02040000) {
            return NULL;
        }
        gPtrs[0] = ewramPtr + size;
        gPtrs[index] = ewramPtr;
        return ewramPtr;
    }
    gPtrs[1] = ptr + size;
    gPtrs[index] = ptr;
    return ptr;
}
