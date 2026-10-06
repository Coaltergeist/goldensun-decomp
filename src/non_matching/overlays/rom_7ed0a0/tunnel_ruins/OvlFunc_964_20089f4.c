extern void __Func_80929d8(struct Actor *, int);
extern void __Func_800c548(struct Actor *, int);

struct Actor *OvlFunc_964_20089f4(int x, int y, int z, int spriteId)
{
    struct Actor *actor;

    actor = (struct Actor *)API_CreateActor(spriteId, x, y, z);
    if (actor == 0)
        return 0;
    *((unsigned char *)actor->sprite + 9) &= ~0xc;
    actor->__unk55 = 0;
    actor->__unk59 = 8;
    __Actor_SetSpriteFlags(actor, 0);
    __Func_80929d8(actor, 0xe);
    __Func_800c548(actor, 1);
    return actor;
}
