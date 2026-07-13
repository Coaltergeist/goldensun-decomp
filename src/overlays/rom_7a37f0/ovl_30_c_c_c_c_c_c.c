#include "dma.h"

extern void *iwram_3001ed0;
extern unsigned char alternatePalette[] asm(".L19d0");
extern unsigned char basePalette[] asm(".L12d0");
extern void __Func_8091200(unsigned int value, unsigned int mode);
extern void OvlFunc_916_2008f74(void);

/* Copy one of the overlay's two 0x380-byte palette images into the shared
 * palette buffer, run the palette update, then restore the hardware palette. */
void OvlFunc_916_2008fb4(int useAlternate)
{
    register void **paletteSlot asm("r3") = &iwram_3001ed0;
    register void *paletteBuffer asm("r1") = *paletteSlot;
    register volatile unsigned int *dma asm("r3");
    register void *source asm("r0");
    register unsigned int control asm("r2");

    asm volatile("" : "+r"(useAlternate), "+r"(paletteSlot),
                  "+r"(paletteBuffer));
    if (useAlternate != 0) {
        dma = &REG_DMA3SAD;
        source = alternatePalette;
    } else {
        dma = &REG_DMA3SAD;
        source = basePalette;
    }
    control = 0x840000e0;
    asm volatile(
        "stmia\tr3!, {r0, r1, r2}\n\t"
        "sub\tr3, #0xc"
        : "+r"(dma)
        : "r"(source), "r"(paletteBuffer), "r"(control)
        : "memory");

    __Func_8091200(0x80 << 9, 0);
    OvlFunc_916_2008f74();
}
