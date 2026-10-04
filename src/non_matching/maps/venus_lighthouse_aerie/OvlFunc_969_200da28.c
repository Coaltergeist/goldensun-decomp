extern struct Actor *MapActor_GetActor(int) __asm__("__MapActor_GetActor");
extern void __MapActor_SetPos(int, int, int);
extern struct Actor *__CreateActor(int, fx32, fx32, fx32);
extern int _divsi3_RAM(int, int);
extern void __Actor_SetScript(struct Actor *, const void *);
extern void __Func_80929d8(struct Actor *, int);
extern unsigned int __Random(void);
extern int __sin(int);
extern void OvlFunc_969_200db90(struct Actor *);
extern const u8 gScript_969__0200e734[];
extern void *iwram_3001e70;
extern unsigned int iwram_3001e40;

void OvlFunc_969_200da28(void)
{
    struct Actor *actor;
    struct Actor *newActor;
    struct Sprite *sprite;
    u8 *ptr;
    int r8;
    int flags;

    actor = MapActor_GetActor(0x17);
    ptr = (u8 *)iwram_3001e70;
    r8 = ((__Random() * 48) >> 16) << 16;
    if (((s16 *)(ptr + 0xe8))[1] <= 0x81) {
        if (iwram_3001e40 & 1) {
            __MapActor_SetPos(0x17, 0x1300000, 0xa40000);
            MapActor_GetActor(0x17)->scale.x = 0x10000;
            MapActor_GetActor(0x17)->scale.y = 0x10000;
        } else {
            __MapActor_SetPos(0x17, 0x1300000, 0xab0000);
            MapActor_GetActor(0x17)->scale.x = 0x14ccc;
            MapActor_GetActor(0x17)->scale.y = 0x14ccc;
        }
    } else {
        __MapActor_SetPos(0x17, 0, 0);
    }

    if (actor != NULL) {
        flags = iwram_3001e40 & 0xf;
        if (flags == 0) {
            newActor = __CreateActor(0x11c,
                                     actor->pos.x + 0x80000,
                                     actor->pos.y + r8 + 0x80000,
                                     actor->pos.z);
            r8 = _divsi3_RAM(r8, 0x60000) << 16;
            if (newActor != NULL) {
                sprite = newActor->sprite;
                __Actor_SetScript(newActor, gScript_969__0200e734);
                __Func_80929d8(newActor, 5);
                newActor->__unk55 = flags;
                newActor->waveCounter = __Random() & 0x0ffff000;
                newActor->__unk66 = flags;
                newActor->linkedActor = actor;
                newActor->update = (actorfun_t *)OvlFunc_969_200db90;
                newActor->speed = (__sin((r8 & 0xfffff) >> 4) * 24) >> 16;
                sprite->flags = 0;
                sprite->oam.priority = actor->sprite->oam.priority;
            }
        }
    }
}
