typedef unsigned char u8;
typedef unsigned int u32;

extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);
extern u8 *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int);
extern void __PlaySound(int);
extern void OvlFunc_965_2008cd0(void);
extern void __Func_8092950(int, int);
extern void __Func_8091e9c(int);

void OvlFunc_965_2008eac(int arg)
{
    register int saved_arg asm("r6") = arg;
    register int zero asm("r5");
    register int a0 asm("r0");
    register int a1 asm("r1");
    register int a2 asm("r2");
    register int a3 asm("r3");
    u8 *actor;

    __CutsceneStart();
    a0 = 1;
    a1 = 1;
    a2 = 1;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    a2 = -a2;
    a1 = -a1;
    a3 = 0;
    a0 = -a0;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2), "+r"(a3));
    __Func_80933f8(a0, a1, a2, a3);
    __Func_800fe9c();
    __WaitFrames(1);
    *(u32 *)(__MapActor_GetActor(0) + 0x0c) = 0x820000;
    *(u32 *)(__MapActor_GetActor(0) + 0x48) = 0x4000;
    zero = 0;
    *(u32 *)(__MapActor_GetActor(0) + 0x44) = zero;
    __MapActor_GetActor(0)[0x55] = zero;
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(10);
    __PlaySound(0xcc);
    __MapActor_GetActor(0)[0x55] = 3;
    *(u32 *)(__MapActor_GetActor(0) + 0x28) = 0xfffb0000;
    (void)__MapActor_GetActor(0);
    OvlFunc_965_2008cd0();
    __Func_8092950(0, 0x0f);
    __Func_8091e9c(saved_arg);
    __CutsceneEnd();
}
