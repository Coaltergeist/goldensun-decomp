struct Actor *OvlFunc_946_2008a4c(int x, int y, int z, int a)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_80929d8(void *, int);
    struct Actor *actor;

    actor = API_CreateActor(a, x, y, z);
    if (actor != NULL) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 15);
        actor->flags = (actor->flags & ~1) | 2;
        return actor;
    }

    return NULL;
}
