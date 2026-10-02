struct Actor *OvlFunc_946_20089f4(int x, int y, int z, int sprite)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_80929d8(struct Actor *, int);
    extern void __Func_800c548(struct Actor *, int);
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(sprite, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xe);
        __Func_800c548(actor, 1);
        return actor;
    }
    return 0;
}
