extern void *__galloc_iwram(int, int);
extern void __gfree(int);
extern void __LoadItemIcon(int, void *);
extern int __UploadSpriteGFX(int, int, void *);
extern void __DeleteSpriteLayer(struct SpriteLayer *);

void OvlFunc_948_200a0c4(int actorId, int item)
{
    struct Actor *actor;
    struct Sprite *sprite;
    unsigned char *dst;
    u32 *dma;
    u32 zero;
    int tile;
    u8 visible;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    if (actor != NULL) {
        visible = actor->visible;
        if (visible == 1) {
            sprite = actor->sprite;
            dst = (unsigned char *)__galloc_iwram(0x11, sizeof(struct IconBuffer)) + 0x400;
            zero = 0;
            dma = (u32 *)0x040000d4;
            *dma++ = (u32)&zero;
            *dma++ = (u32)dst;
            *dma++ = 0x85000020;
            dma -= 3;
            __LoadItemIcon(item, dst);
            tile = __UploadSpriteGFX(sprite->slot, 0x80, dst);
            __gfree(0x11);
            actor->__unk5C = visible;
            __DeleteSpriteLayer(sprite->layers[0]);
            sprite->layers[0] = NULL;
            sprite->numLayers = 0;
            ((u8 *)&sprite->oam.attr0)[1] &= ~0x20;
            *(u16 *)&sprite->oam.attr2Lo = (*(u16 *)&sprite->oam.attr2Lo & 0xfc00) | (tile & 0x3ff);
            sprite->visible = 0;
            sprite->flags = 0;
        }
    }
}