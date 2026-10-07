extern void *__galloc_iwram(int, int);
extern void __LoadItemIcon(int);
extern void __UploadSpriteGFX(int, int, void *);
extern void __gfree(int);

void OvlFunc_936_200ba3c(int actorId)
{
    struct Actor *actor;
    struct Sprite *sprite;
    void *buffer;

    actor = (struct Actor *)__MapActor_GetActor(actorId);
    sprite = actor->sprite;

    sprite->oam.priority = 1;
    sprite->oam.attr0 &= ~0x2000;
    sprite->oam.palette = 0;

    sprite->numLayers = 0;
    __Actor_SetSpriteFlags(actor, 0);

    actor->__unk5C = 0;
    actor->__unk55 = 0;

    if (!__GetFlag(0x109)) {
        actor->pos.y += 0x200000;
    }

    actor->flags &= 0xfe;
    actor->__unk61 = 1;

    buffer = __galloc_iwram(0x11, 0x608);
    __LoadItemIcon(0xb5);
    __UploadSpriteGFX(sprite->slot, 0x80, (char *)buffer + 0x400);
    __gfree(0x11);

    actor->prevPos.x = actor->pos.x;
    actor->speed = 0;
    actor->prevPos.y = actor->pos.y;
    actor->__unk5C = 1;
    actor->update = (void *)OvlFunc_936_200b9d4;
    actor->__unk56 = 0;
}
