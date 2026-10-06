void *OvlFunc_922_2008ed8(int x, int y, int z, int id)
{
    extern void __Actor_SetSpriteFlags(int, int);
    extern void __Func_80929d8();
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(id, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        __Actor_SetSpriteFlags((int)actor, 0);
        __Func_80929d8(actor, 0xf);
        actor->flags |= 2;
        return actor;
    }
    return 0;
}
