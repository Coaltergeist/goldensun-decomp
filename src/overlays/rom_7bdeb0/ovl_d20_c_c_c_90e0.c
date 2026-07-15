typedef unsigned char u8;
typedef unsigned int u32;
typedef short s16;

extern u8 *__MapActor_GetActor(int);
extern int __TestCollision(u8 *, u8 *);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Actor_SetAnim(u8 *, int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void __Func_8092158(int, int, int);

int OvlFunc_934_20090e0(void)
{
    int result;
    u32 buf[3];
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    register u8 *flags asm("r7") = actor + 0x55;
    register u32 *target asm("r6") = buf;
    register int savedFlags asm("r8") = *flags;

    target[0] = (*(u32 *)(actor + 8) & 0xfff00000) + 0x80000;
    target[1] = *(u32 *)(actor + 0xc);
    target[2] = (*(u32 *)(actor + 0x10) & 0xfff00000) + 0x280000;

    if (__TestCollision(actor, (u8 *)target) != 0)
        goto collision;

    __CutsceneStart();
    __Actor_SetAnim(actor, 6);
    __WaitFrames(6);
    __PlaySound(0x98);
    __Actor_SetAnim(actor, 7);
    *(int *)(actor + 0x30) = 0x30000;
    *(int *)(actor + 0x34) = 0x20000;
    *(int *)(actor + 0x28) = 0x40000;
    *flags &= 0x7e;
    __Actor_SetSpriteFlags(actor, 0);
    __Func_8092158(0, *(s16 *)((u8 *)target + 2), *(s16 *)((u8 *)target + 0xa));
    __Actor_SetAnim(actor, 6);
    __Actor_SetSpriteFlags(actor, 1);
    *flags = savedFlags;
    __CutsceneEnd();
    result = 1;
    goto done;
collision:
    result = 0;
done:
    return result;
}
