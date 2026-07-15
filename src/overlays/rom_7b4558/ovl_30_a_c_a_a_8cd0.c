typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern int __TestCollision(u8 *, u8 *);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Actor_SetAnim(u8 *, int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __WaitFrames(int);
extern void __PlaySound(int);
extern void __Func_8092158(int, int, int);

int OvlFunc_927_2008cd0(u8 *other)
{
    int result;
    register u8 *target asm("r7") = other;
    register u8 *actor asm("r5") = __MapActor_GetActor(0);
    register u8 *flags asm("r6") = actor + 0x55;
    register int savedFlags asm("r8") = *flags;

    if (__TestCollision(actor, target) != 0)
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
    __Func_8092158(0, *(s16 *)(target + 2), *(s16 *)(target + 0xa));
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
