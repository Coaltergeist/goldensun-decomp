extern void __Actor_SetSpriteFlags(void *, int);
extern void __Func_80929d8(int a, int b);
extern void __Func_800c548(void *actor, int a);

struct Actor *OvlFunc_927_20089f4(int x, int y, int z, int spriteId)
{
    struct Actor *actor;

    actor = API_CreateActor(spriteId, x, y, z);
    if (actor != 0) {
        actor->sprite->oam.priority = 0;
        actor->__unk55 = 0;
        actor->__unk59 = 8;
        __Actor_SetSpriteFlags(actor, 0);
        __Func_80929d8((int)actor, 14);
        __Func_800c548(actor, 1);
        return actor;
    }
    return 0;
}