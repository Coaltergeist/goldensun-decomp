typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed short s16;

typedef struct SpriteInfo {
    u8 width;
    u8 height;
    u16 scale;
    u8 flags;
    u8 pad5;
    u8 field22;
    u8 field23;
    u8 pad8[2];
    u8 layerByte;
    u8 padB;
    void *graphics;
    u32 data;
} SpriteInfo;

typedef struct Sprite {
    u8 pad0[0x18];
    u32 scaled;
    u8 pad1c[4];
    u8 width;
    u8 height;
    u8 field22;
    u8 field23;
    u8 pad24[3];
    u8 layerCount;
    u8 *layers[4];
} Sprite;

extern SpriteInfo *_GetSpriteInfo(int spriteId);
extern void *GetCachedSpriteGFX(int spriteId);

int InitSprite(Sprite *sprite)
{
    int i;
    int zero;
    u8 *layer;
    SpriteInfo *info;
    void *graphics;
    u8 **layers;

    i = 0;
    if (i < sprite->layerCount) {
        layers = sprite->layers;
        zero = i;
        do {
            layer = *layers++;
            info = _GetSpriteInfo(*(s16 *)layer);
            if (info->width != 0) {
                if (i == 0) {
                    sprite->width = info->width;
                    sprite->height = info->height;
                    sprite->scaled = info->scale << 8;
                    sprite->field23 = info->field23;
                    sprite->field22 = info->field22;
                }
                graphics = info->graphics;
                if (graphics == 0) {
                    graphics = GetCachedSpriteGFX(*(s16 *)layer);
                }
                layer[4] = info->flags;
                *(void **)(layer + 8) = graphics;
                *(u32 *)(layer + 0xc) = info->data;
                layer[7] = info->layerByte;
                layer[0x16] = 0xff;
                *(u32 *)(layer + 0x10) = zero;
                layer[0x14] = zero;
            }
            i++;
        } while (i < sprite->layerCount);
    }
    return 0;
}
