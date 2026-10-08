struct Actor *OvlFunc_927_2008a4c(int x, int y, int z, int id)
{
    struct Actor *actor;

    actor = API_CreateActor(id, x, y, z);
    if (actor != NULL) {
        actor->sprite->oam.priority = 1;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 15);
        actor->flags = (actor->flags & ~1) | 2;
        return actor;
    }
    return NULL;
}
