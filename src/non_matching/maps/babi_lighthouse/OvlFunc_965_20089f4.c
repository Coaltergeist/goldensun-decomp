extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_80929d8(void *, int);
extern void __Func_800c548(void *, int);


void *OvlFunc_965_20089f4(int x, int y, int z, int spriteId)
{
    struct Actor *actor;

    actor = API_CreateActor(spriteId, x, y, z);
    if (actor != NULL) {
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8(actor, 0xe);
        __Func_800c548(actor, 1);
        return actor;
    }
    return NULL;
}
