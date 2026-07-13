/* OvlFunc_915_2008d9c: restore both 0x1c0-byte palette buffers, then refresh
 * the palette state.  Keeping the first buffer in a local makes GCC retain it
 * in r4 across the two inline DMA3 transfers, as in the original object. */
#include "dma.h"

extern void *iwram_3001ed0;
extern void __Func_8091220(unsigned int arg0, unsigned int arg1);

void OvlFunc_915_2008d9c(void)
{
    void *paletteBuffer = iwram_3001ed0;

    DMA3_COPY((void *)(0xa0 << 19), paletteBuffer, 0x1c0);
    DMA3_COPY((void *)0x05000200,
              (unsigned char *)paletteBuffer + 0x1c0, 0x1c0);
    __Func_8091220(0x10000, 0);
}
