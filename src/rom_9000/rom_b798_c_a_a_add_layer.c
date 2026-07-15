#include "gba/types.h"
typedef struct Sprite {
    u8 pad0[0x18]; int scaled; u8 pad1c[4];
    u8 width; u8 height; u8 field22; u8 field23;
    u8 pad24[3]; u8 layerCount;
    void *layers[4];
} Sprite;
typedef struct SpriteInfo { u8 width,height; u16 scale; u8 pad4[2]; u8 field22,field23; } SpriteInfo;
extern void *CreateSpriteLayer(int spriteId);
extern SpriteInfo *_GetSpriteInfo(int spriteId);

void *Sprite_AddLayer(Sprite *sprite, int spriteId)
{
    int index = 0;
    void *layer = sprite->layers[0];
    if (layer != 0) {
        void **slot = sprite->layers;
        do {
            index++;
            if (index > 3)
                break;
            slot++;
            layer = *slot;
        } while (layer != 0);
    }
    if (index == 4)
        return (void *)-1;
    layer = CreateSpriteLayer(spriteId);
    if (layer == 0)
        return 0;
    sprite->layers[index] = layer;
    {
        SpriteInfo *info = _GetSpriteInfo(spriteId);
        if (sprite->layerCount == 0) {
            sprite->width = info->width;
            sprite->height = info->height;
            sprite->scaled = info->scale << 8;
            sprite->field23 = info->field23;
            sprite->field22 = info->field22;
        }
    }
    if (index == sprite->layerCount)
        sprite->layerCount = index + 1;
    return layer;
}
