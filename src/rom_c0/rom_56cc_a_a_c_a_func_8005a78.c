#include "gba/types.h"

extern u8 *gSaveWorkspace asm("iwram_3001f1c");
extern u32 Func_8005b24(u32);
extern u32 Func_80058ac(u32);

u32 Func_8005a78(u32 value, void *destination)
{
    u8 *workspace = gSaveWorkspace;
    u32 sector = Func_8005b24(value);

    if (sector > 0xf)
        return 1;

    Func_80058ac(sector);
    {
        register vu32 *dma asm("r3") = (vu32 *)0x040000d4;
        register const void *source asm("r0") = workspace + 0x50;
        register void *target asm("r1") = destination;
        register u32 control asm("r2") = 0x840003fc;

        /* The ROM uses one three-register DMA write, then restores r3. */
        asm volatile(
            "stmia\tr3!, {r0, r1, r2}\n\t"
            "sub\tr3, #0xc"
            :
            : "r"(dma), "r"(source), "r"(target), "r"(control)
            : "memory");
    }

    {
        register vu32 *dma asm("r1") = (vu32 *)0x040000d4;

        while (dma[2] & 0x80000000) {
        }
    }

    return 0;
}
