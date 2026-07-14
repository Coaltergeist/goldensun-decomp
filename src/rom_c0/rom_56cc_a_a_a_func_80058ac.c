#include "gba/types.h"
#include "dma.h"

extern u8 *gSaveWorkspace asm("iwram_3001f1c");
extern void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
extern u32 Func_8005ae0(void);

u32 Func_80058ac(u32 sector)
{
    u8 *buffer = gSaveWorkspace + 0x40;
    u16 header[8];
    u32 checksum;

    ReadFlash((u16)sector, 0, buffer, 0x1000);

    DMA3_COPY(buffer, header, 0x10);
    {
        register vu32 *dma asm("r1") = (vu32 *)0x040000d4;

        while (dma[2] & 0x80000000) {
        }
    }

    checksum = Func_8005ae0();

    return (u16)checksum - header[4];
}
