extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetScript(struct Actor *, void *);
extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, const void *);
extern void __gfree(int);
extern void __WaitFrames(int);
extern unsigned char gScript_888__0200b8f8[];
extern unsigned char gScript_888__0200ba9c[];

void OvlFunc_888_200b098(int item, int x, int y, int z)
{
    struct Actor *actor;
    struct Sprite *sprite;
    u8 *buffer;
    u32 i;
    u32 zero;

    actor = (struct Actor *)__CreateActor(0x16, x, y, z);
    if (actor != NULL) {
        __Actor_SetScript(actor, gScript_888__0200b8f8);
        sprite = actor->sprite;
        sprite->flags = 0;
        sprite->numLayers = 0;
        ((u8 *)&sprite->oam.attr0)[1] &= -0x21;
        sprite->oam.palette = 0;
        actor->motion.y = 0x80 << 10;
        actor->gravity = 0x80 << 7;
        buffer = (u8 *)__galloc_iwram(0x11, sizeof(struct IconBuffer));
        __LoadItemIcon(item);
        buffer += 0x400;
        __UploadSpriteGFX(sprite->slot, 0x80, buffer);
        __gfree(0x11);
        zero = 0;
        i = 0;
        do {
            if ((u32)(actor->motion.y + 255) <= 510) {
                actor->__unk55 = zero;
            } 
            __WaitFrames(1);
        } while (++i <= 59);
        __Actor_SetScript(actor, gScript_888__0200ba9c);
    }
}
