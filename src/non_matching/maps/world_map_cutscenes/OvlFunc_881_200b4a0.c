void OvlFunc_881_200b4a0(void)
{
    extern unsigned int iwram_3001e40;
    extern struct Actor *__MapActor_GetActor(int);
    extern struct Actor *__CreateActor(int, int, int, int);
    extern unsigned int __Random(void);
    extern void __Func_80929d8(struct Actor *, int);
    extern void __Actor_SetAnim(struct Actor *, int);
    extern unsigned char gScript_881__0200e73c[];
    extern void __Actor_SetScript(struct Actor *, const void *);
    struct Actor *other;
    struct Actor *actor;
    struct Sprite *sprite;
    int offset;

    if (iwram_3001e40 & 0xf) {
        return;
    }

    other = __MapActor_GetActor(8);
    actor = __CreateActor(0xde, other->pos.x - 0x200000, other->pos.y, other->pos.z - 0x100000);
    if (actor == NULL) {
        return;
    }

    actor->scale.x = 0x80 << 8;
    actor->scale.y = 0x80 << 8;
    sprite = actor->sprite;

    if ((__Random() * 2) >> 16) {
        offset = ((__Random() * 48) >> 16) << 16;
        actor->pos.x -= offset >> 1;
        actor->pos.z -= offset;
    } else {
        offset = ((__Random() * 32) >> 16) << 16;
        actor->pos.x += offset;
        actor->pos.z += offset >> 1;
    }

    sprite->flags = 0;
    sprite->oam.priority = other->sprite->oam.priority;
    actor->flags |= 2;
    actor->__unk55 = other->__unk55;

    __Func_80929d8(actor, 9);
    __Actor_SetAnim(actor, 2);
    __Actor_SetScript(actor, gScript_881__0200e73c);
}
