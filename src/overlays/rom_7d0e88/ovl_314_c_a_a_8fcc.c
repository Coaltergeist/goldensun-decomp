#include "gba/types.h"
#include "gba/io.h"
#include "dma.h"

extern u8 iwram_3001e70[];

void OvlFunc_947_2008fcc(u32 param1, u32 param2, u32 param3, void *dst)
{
    u8 *bufferTable = *(u8 **)iwram_3001e70;

    if (bufferTable != 0) {
        u32 offset = (param1 * 3) << 4;
        u8 *tileBuffer;
        void *src;

        offset += 0x130;
        tileBuffer = *(u8 **)(bufferTable + offset);
        src = tileBuffer + ((param2 + (param3 << 7)) << 2);

        DMA3_COPY(src, dst, 4);

        {
            vu32 *dma = (vu32 *)&REG_DMA3SAD;
            while (dma[2] & 0x80000000) ;
        }
    }
}
