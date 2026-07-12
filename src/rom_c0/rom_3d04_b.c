/* Cluster Func_8003dec..Func_8003dec extracted from goldensun/asm/rom_c0/rom_3d04.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3d04_a.o and asm/rom_c0/rom_3d04_c.o in
 * goldensun/stage1.ld.
 */

#include "dma.h"

extern unsigned int gRAMLib_end[248];

void Func_8003dec(unsigned int *arg0, int index)
{
    unsigned int *slot;
    unsigned int old;

    if (index > 255) index = 255;
    if (index < 0) index = 0;
    slot = &gRAMLib_end[index];
    old = *slot;
    *slot = (unsigned int)arg0;
    *arg0 = old;
}

extern u8 _Func_8001dc8_SIZE[];

extern void *Func_8004938(unsigned size); //IWramMalloc
extern void free(void *mem);
extern void Func_8001dc8(void *a);

void Func_8003e10(void *arg0) {
    do {
        void (*func)(void*);
        func = Func_8004938((u32)_Func_8001dc8_SIZE);
        DMA3_COPY(Func_8001dc8, func, (u32)_Func_8001dc8_SIZE);
        func(arg0);
        free(func);
    } while (0);
}