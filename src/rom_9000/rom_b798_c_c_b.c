#include "dma.h"

void DeleteSpriteLayer(void *layer)
{
    if (layer != 0)
        DMA3_CLEAR(layer, 0x18);
}
