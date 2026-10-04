extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_80929d8(void *, int);

struct Actor *OvlFunc_965_2008a4c(int x, int y, int z, int id)
{
    struct Actor *actor = __CreateActor(id, x, y, z);

    if (actor != NULL) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xf);
        actor->flags = (actor->flags & ~1) | 2;
        return actor;
    }
    return NULL;
}
