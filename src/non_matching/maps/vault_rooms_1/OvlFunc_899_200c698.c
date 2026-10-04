void OvlFunc_899_200c698(u32 itemId)
{
    extern void *__CreateActor();
    extern void *__galloc_iwram(int, int);
    extern void __LoadItemIcon(u32);
    extern void __UploadSpriteGFX(int, int, void *);
    extern void __gfree(int);

    struct Actor *actor;
    struct Sprite *sprite;
    u8 *buf;
    int zero = 0;

    actor = __CreateActor(0x16);
    if (actor != NULL) {
        sprite = actor->sprite;
        sprite->flags = zero;
        sprite->numLayers = zero;
        ((u8 *)&sprite->oam.attr0)[1] &= ~0x20;
        sprite->oam.palette = 0;
        actor->__unk55 = zero;
        actor->__unk5C = 1;
        buf = __galloc_iwram(0x11, sizeof(struct IconBuffer));
        __LoadItemIcon(itemId);
        __UploadSpriteGFX(sprite->slot, 0x80, buf + 0x400);
        __gfree(0x11);
    }
}
