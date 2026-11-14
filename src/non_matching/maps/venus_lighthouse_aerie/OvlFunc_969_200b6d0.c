/*
 * Non-matching reason (2 instruction diffs):
 * 1. At +0x5a, camelot-gcc schedules `lsl r0, r0, #1` before loading `parent->pos.x` / `parent->pos.y`
 *    instead of between `ldr r3, [r5, #0xc]` and `ldr r3, [pc, #0x78]`.
 * 2. At +0x6c, `reload_cse_noop_set_p` (`reload1.c:7866`) eliminates `mov r0, r7` after
 *    `mov r7, r0; cmp r7, #0; beq` because `r0` already holds `actor`.
 */
extern unsigned int iwram_3001e40;
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern unsigned int __Random(void);
extern int __sin(int);
extern struct Actor *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern struct Actor *__CreateActor(int, fx32, fx32, fx32);
extern unsigned char gScript_969__0200e16c[];
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Func_80929d8(struct Actor *, int);
extern void OvlFunc_969_200b600(struct Actor *);

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

    parent = __MapActor_GetActor(0x18);
    if (GetFlag(0x236)) {
        offset = __Random();
        offset <<= 8;
    } else {
        offset = __Random();
        offset <<= 6;
    }

    actor = __CreateActor(0x11c, parent->pos.x, ((offset >> 16) << 16) + parent->pos.y + 0xffe40000, parent->pos.z);
    if (actor != NULL) {
        sprite = actor->sprite;
        __Actor_SetScript(actor, gScript_969__0200e16c);
        __Func_80929d8(actor, 1);
        actor->__unk55 = 0;
        mask = __Random() & 0x0ffff000;
        actor->waveCounter = mask;
        actor->__unk66 = 0;
        actor->update = (actorfun_t)OvlFunc_969_200b600;
        flags = 0;
        actor->speed = (24 * __sin(((u32)__Random() * 0xffff) >> 20)) >> 16;
        *(char *)&sprite->flags = flags;
        sprite->oam.priority = 1;
    }
}
