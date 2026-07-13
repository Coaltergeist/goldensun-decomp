#include "dma.h"

extern void Func_8003f3c(unsigned int slot);
extern void DeleteSpriteLayer(void *layer);

void DeleteSprite(u8 *sprite)
{
    if (sprite != 0) {
        register int i asm("r6");
        register void **layer asm("r5");

        if ((sprite[0x1d] & 1) == 0) {
            Func_8003f3c(sprite[0x1c]);
        }
        layer = (void **)(sprite + 0x28);
        asm volatile("" : "+r"(layer));
        i = 3;
        asm volatile("" : "+r"(i));
        do {
            DeleteSpriteLayer(*layer++);
            i--;
        } while (i >= 0);
        DMA3_CLEAR(sprite, 0x38);
    }
}
