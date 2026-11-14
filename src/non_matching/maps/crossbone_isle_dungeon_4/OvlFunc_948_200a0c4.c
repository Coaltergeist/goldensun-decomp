/* Remaining diff: +0x30..+0x42 swaps `r3` and `r2` (`0x400` vs `0`) because
 * `DMA3_CLEAR` in `include/dma.h` is a `static inline` function (evaluating
 * `dst + 0x400` before `vu32 value = 0`) rather than a `#define` macro where
 * `value = 0` is initialized before `dst + 0x400`.
 */
#include "dma.h"

struct SpriteOAMTileView {
    struct SpriteOAM *dest;
    u16 attr0;
    u16 attr1;
    u16 tile : 10;
    u16 priority : 2;
    u16 palette : 4;
};

extern void *__galloc_iwram(int, int);
extern void __gfree(int);
extern void __LoadItemIcon(int);
extern int __UploadSpriteGFX(int, int, void *);
extern void __DeleteSpriteLayer(struct SpriteLayer *);

void OvlFunc_948_200a0c4(int actorId, int item)
{
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *dst;
    int tile;
    u8 visible;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    if (actor != NULL) {
        visible = actor->visible;
        if (visible == 1) {
            sprite = actor->sprite;
            dst = (unsigned char *)__galloc_iwram(0x11, sizeof(struct IconBuffer));
            DMA3_CLEAR(dst + 0x400, 0x80);
            __LoadItemIcon(item);
            tile = __UploadSpriteGFX(sprite->slot, 0x80, dst + 0x400);
            __gfree(0x11);
            actor->__unk5C = visible;
            __DeleteSpriteLayer(sprite->layers[0]);
            sprite->layers[0] = NULL;
            sprite->numLayers = 0;
            sprite->oam.attr0Bits.bpp = 0;
            ((struct SpriteOAMTileView *)&sprite->oam)->tile = tile;
            sprite->visible = 0;
            sprite->flags = 0;
        }
    }
}
