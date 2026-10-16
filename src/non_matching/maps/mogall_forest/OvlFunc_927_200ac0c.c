struct LocalSpriteOAM {
    struct SpriteOAM *dest;
    u8 attr0Lo;
    u8 unk_attr0 : 5;
    u8 bpp : 1;
    u8 shape : 2;
    u16 attr1;
    u8 attr2Lo;
    u8 tileHi : 2;
    u8 priority : 2;
    u8 palette : 4;
};

extern void *__galloc_iwram(int, int);
extern void __gfree(int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);

void OvlFunc_927_200ac0c(unsigned int id)
{
    struct Actor *actor;
    struct Sprite *sprite;
    struct LocalSpriteOAM *oam;
    unsigned char *buf;

    actor = (struct Actor *)__MapActor_GetActor(id);
    sprite = actor->sprite;
    oam = (struct LocalSpriteOAM *)&sprite->oam;
    oam->priority = 1;
    oam->bpp = 0;
    oam->palette = 0;
    sprite->numLayers = 0;
    __Actor_SetSpriteFlags(actor, 0);
    actor->__unk5C = 0;
    actor->__unk55 = 0;
    if (API_GetFlag(0x109) == 0)
        actor->pos.y += 0x200000;
    actor->flags &= ~1;
    actor->__unk61 = 1;
    buf = (unsigned char *)__galloc_iwram(0x11, sizeof(struct IconBuffer));
    __LoadItemIcon(0xb5);
    buf += 0x400;
    __UploadSpriteGFX(sprite->slot, 0x80, buf);
    __gfree(0x11);
    actor->prevPos.x = actor->pos.x;
    actor->speed = 0;
    actor->prevPos.y = actor->pos.y;
    actor->__unk5C = 1;
    actor->update = (actorfun_t *)OvlFunc_927_200aba4;
    actor->__unk56 = 0;
}
