#include "nonmatching.h"
#include "dma.h"
#include "sprite.h"

INCLUDE_ASM("asm/field_engine/sprite/sprite/UpdateSpriteAnim.s");

INCLUDE_ASM("asm/field_engine/sprite/sprite/Func_800b074.s");
INCLUDE_ASM("asm/field_engine/sprite/sprite/UpdateSprite.s");
INCLUDE_ASM("asm/field_engine/sprite/sprite/Func_800b388.s");

void Sprite_SetColorswap(unsigned char *sprite, int colorswap) {
    unsigned char count;
    unsigned int *p;
    int i;

    if (sprite == (unsigned char *)0)
        return;

    count = sprite[0x27];
    if (count != 0) {
        p = (unsigned int *)(sprite + 0x28);
        for (i = count; i != 0; i--) {
            unsigned int e;
            e = *p++;
            if (*(unsigned char *)((char *)e + 5) != 0xf)
                *(unsigned char *)((char *)e + 5) = colorswap;
        }
    }
    sprite[0x25] = 1;
}

INCLUDE_ASM("asm/field_engine/sprite/sprite/PreloadSpriteGFX.s");

extern unsigned int iwram_3001e68;

unsigned char **GetCachedSpriteGFX(unsigned int spriteID)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)iwram_3001e68;
    r2 = (unsigned char *)base + 0x1c;
    for (i = 0; i <= 7; i++) {
        if (*(unsigned int *)r2 == spriteID)
            return *(unsigned char ***)(r2 + 4);
        r2 += 8;
    }
    return (unsigned char **)0;
}

INCLUDE_ASM("asm/field_engine/sprite/sprite/InitSprite.s");
extern void *_GetSpriteInfo(int id);
void InitSpriteLayer(struct SpriteLayer *layer)
{
    struct SpriteInfo *info;
    const u8 **gfx;

    if (layer == 0)
        return;
    info = _GetSpriteInfo((short)layer->spriteID);
    if (info->width == 0)
        return;
    gfx = info->gfx;
    if (gfx == 0)
        gfx = (const u8 **)GetCachedSpriteGFX((short)layer->spriteID);
    layer->type = info->type;
    layer->anims = info->anims;
    layer->gfx = gfx;
    layer->gfxFormat = info->gfxFormat;
    layer->frameID = 0xff;
    layer->curAnim = 0;
    layer->animCmdIndex = 0;
}
INCLUDE_ASM("asm/field_engine/sprite/sprite/Sprite_AddLayer.s");
void DeleteSpriteLayer(struct SpriteLayer *layer);
void Sprite_DeleteLayer(struct Sprite *sprite, struct SpriteLayer *layer)
{
    u32 i, j;
    int n;
    if (sprite == NULL || layer == NULL) return;
    DeleteSpriteLayer(layer);
    for (i = 0; i < 4; i++) {
        if (layer == sprite->layers[i]) break;
    }
    if (i == 4) return;
    sprite->layers[i] = NULL;
    n = 0;
    for (j = i + 1; j <= 3; j++) {
        if (sprite->layers[j] != NULL) n++;
    }
    if (n == 0) sprite->numLayers = i;
}
void Sprite_DeleteLayerIndex(struct Sprite *sprite, u32 idx)
{
    u32 i;
    int n;
    if (sprite == NULL || idx > 3) return;
    if (sprite->layers[idx] == NULL) return;
    DeleteSpriteLayer(sprite->layers[idx]);
    sprite->layers[idx] = NULL;
    n = 0;
    for (i = idx + 1; i <= 3; i++) {
        if (sprite->layers[i] != NULL) n++;
    }
    if (n == 0) sprite->numLayers = idx;
}

extern void *_GetSpriteInfo(int id);

void SpriteLayer_SetAnim(void *self, int anim) {
    unsigned char *r5;
    int r6;
    int r7;
    void *r0;
    unsigned int *arr;
    unsigned int r2;

    r5 = (unsigned char *)self;
    r6 = anim;
    r7 = 0x80 & r6;
    if (*(int *)(r5 + 0xc) == 0) {
        return;
    }
    r0 = _GetSpriteInfo(*(short *)r5);
    if (r6 >= *((unsigned char *)r0 + 5)) {
        return;
    }
    arr = *(unsigned int **)(r5 + 0xc);
    r2 = arr[r6];
    *(r5 + 4) = *((unsigned char *)r0 + 4);
    *(unsigned int *)(r5 + 0x10) = r2;
    *(r5 + 0x15) = 0x10;
    if (r7 != 0) {
        return;
    }
    *(r5 + 0x14) = r7;
    *(unsigned short *)(r5 + 2) = r7;
}

INCLUDE_ASM("asm/field_engine/sprite/sprite/Sprite_SetAnim.s");

unsigned int Sprite_SetAnimTimer(unsigned char *sprite, unsigned int timer)
{
    unsigned char count;
    unsigned char **p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count != 0) {
        timer <<= 4;
        p = (unsigned char **)(sprite + 0x28);
        i = count;
        do {
            unsigned char *e = *p;
            p++;
            if (e != 0 && *(int *)(e + 0xc) != 0)
                *(unsigned short *)(e + 2) = timer;
            i--;
        } while (i != 0);
    }
    return 0;
}
void Sprite_SetAnimSpeed(unsigned char *sprite, int speed) {
    int count;
    unsigned int *p;
    int i;

    count = *(unsigned char *)(sprite + 0x27);
    if (count == 0)
        return;
    p = (unsigned int *)(sprite + 0x28);
    i = count;
    do {
        unsigned int e;
        e = *p++;
        if (e != 0 && *(unsigned int *)((char *)e + 0xc) != 0) {
            *(unsigned char *)((char *)e + 0x15) = speed;
        }
        i--;
    } while (i != 0);
}

extern unsigned char L12f20[] __asm__(".L12f20");
INCLUDE_ASM("asm/field_engine/sprite/sprite/InitSprites.s");
INCLUDE_ASM("asm/field_engine/sprite/sprite/CreateSpriteLayer.s");

void DeleteSpriteLayer(struct SpriteLayer *layer) {
    if (layer != (struct SpriteLayer *)0) {
        DMA3_CLEAR(layer, sizeof(struct SpriteLayer));
    }
}

INCLUDE_ASM("asm/field_engine/sprite/sprite/CreateSprite.s");
extern s32 Func_8003f3c(int slot);
void DeleteSprite(struct Sprite *sprite)
{
    struct SpriteLayer **layers;
    int i;

    if (sprite == 0)
        return;
    if ((sprite->__unk1D & 1) == 0)
        Func_8003f3c(sprite->slot);
    layers = sprite->layers;
    for (i = 3; i >= 0; i--)
        DeleteSpriteLayer(*layers++);
    DMA3_CLEAR(sprite, sizeof(struct Sprite));
}
INCLUDE_ASM("asm/field_engine/sprite/sprite/Func_800be20.s");

INCLUDE_ASM("asm/field_engine/sprite/sprite/Func_800be70.s");

extern void Func_800be70(unsigned int arg0, unsigned int arg1);
extern void WaitFrames(unsigned int nframes);

void Func_800befc(unsigned int arg0) {
    unsigned int i;

    i = 0;
    do {
        Func_800be70(arg0, i);
        Func_800be70(arg0, i + 1);
        Func_800be70(arg0, i + 2);
        Func_800be70(arg0, i + 3);
        i += 4;
        WaitFrames(1);
    } while (i <= 0x7f);
}

INCLUDE_ASM("asm/field_engine/sprite/sprite/Func_800bf34.s");
INCLUDE_ASM("asm/field_engine/sprite/sprite/rom_be70_c.rodata.s");
