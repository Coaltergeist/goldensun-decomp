#include "gba/types.h"

extern u8 *gSaveWorkspace asm("iwram_3001f1c");
extern u32 gFlashSectorCheck[] asm("ewram_2004c04");
extern u32 VerifyFlashSector(u32, u8 *);

typedef u16 (*FlashSectorCheck)(u32, u8 *);

u32 Func_8005868(u32 sector)
{
    register u8 *workspace asm("r3") = gSaveWorkspace;
    register u32 *checkSlot asm("r2");
    register u32 rawSector asm("r0") = sector;
    register u8 *data asm("r6");
    register u32 sectorId asm("r5");

    asm volatile("" : "+r"(workspace) : : "memory");
    checkSlot = gFlashSectorCheck;

    /* Preserve the ROM's interleaved narrowing and workspace setup. */
    asm volatile(
        "lsl\tr0, #16\n\t"
        "mov\tr6, r3\n\t"
        "lsr\tr5, r0, #16\n\t"
        "add\tr6, #0x40"
        : "+r"(rawSector), "=r"(data), "=r"(sectorId)
        : "r"(workspace), "r"(checkSlot));

    if (((FlashSectorCheck)*checkSlot)(sectorId, data) != 0)
        return 1;

    {
        u32 result = VerifyFlashSector(sectorId, data);
        return (-result | result) >> 31;
    }
}
