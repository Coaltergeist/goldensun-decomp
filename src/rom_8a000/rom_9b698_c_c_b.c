#include "dma.h"

typedef struct SpriteOwner {
    void *sprite;
    unsigned char reserved4[0x44];
} SpriteOwner;

extern void _DeleteSprite(void *sprite);

void Func_809bb34(SpriteOwner *owner)
{
    if (owner->sprite != 0)
        _DeleteSprite(owner->sprite);
    DMA3_CLEAR(owner, sizeof(*owner));
}
