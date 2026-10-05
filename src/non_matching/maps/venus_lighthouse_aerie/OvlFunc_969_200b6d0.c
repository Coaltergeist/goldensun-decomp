extern int __GetFlag(int);
extern struct Actor *__CreateActor(int, fx32, fx32, fx32);
extern unsigned char gScript_969__0200e16c[];
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Func_80929d8(struct Actor *, int);

static inline int GetFlag(int flag)
{
    return __GetFlag(flag);
}

void OvlFunc_969_200b6d0(void)
{
    struct Actor *parent;
    struct Actor *actor;
    struct Sprite *sprite;
    u32 offset;
    u32 mask;
    int flags;

    if (!GetFlag(0x236)) {
        if (_umodsi3_RAM(iwram_3001e40, 3) != 0) {
            return;
        }
    }

    parent = MapActor_GetActor(0x18);
    if (GetFlag(0x236)) {
        offset = __Random();
        offset <<= 8;
    } else {
        offset = __Random();
        offset <<= 6;
    }

    actor = __CreateActor(0x11c, parent->pos.x, ((offset >> 16) << 16) + parent->pos.y + 0xffe40000, parent->pos.z);
    if (actor == NULL) {
        return;
    }

    sprite = actor->sprite;
    __Actor_SetScript(actor, gScript_969__0200e16c);
    __Func_80929d8(actor, 1);
    actor->__unk55 = 0;
    mask = 0x0ffff000;
    mask &= __Random();
    actor->waveCounter = mask;
    actor->__unk66 = 0;
    actor->update = (actorfun_t *)OvlFunc_969_200b600;
    flags = 0;
    actor->speed = (24 * __sin(((u32)__Random() * 0xffff) >> 20)) >> 16;
    sprite->flags = flags;
    sprite->oam.priority = 1;
}
