extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int sound);
extern void OvlFunc_923_2008cc0(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_801776c(int message, int arg1);
extern void __Func_809228c(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void __Func_8092950(int actor, int arg1);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __CutsceneWait(int frames);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int arg0);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_8092b08(int actor, int arg1);
extern void __MapActor_SetPos(int actor, int x, int y);

void OvlFunc_923_2008eac(void)
{
    __CutsceneStart();
    __MapActor_SetAnim(0, 1);
    __Func_801776c(0x1632, 1);
    __CutsceneEnd();
}

void OvlFunc_923_2008ed0(int arg0)
{
    register int saved_arg asm("r6") = arg0;
    register unsigned char *actor asm("r5");

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    __PlaySound(0xe4);
    *(void (**)(void))(actor + 0x6c) = OvlFunc_923_2008cc0;
    *(unsigned int *)(actor + 0x30) = 0x3333;
    __MapActor_SetAnim(0, 2);
    __Func_809228c(0, 0, -6);
    __MapActor_WaitMovement(0);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    *(unsigned int *)(actor + 0x6c) = 0;
    __CutsceneWait(0x1e);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(saved_arg);
    __CutsceneEnd();
}

void OvlFunc_923_2008f48(int arg0)
{
    register int position asm("r5") = arg0;

    __CutsceneStart();
    __PlaySound(0xe4);
    {
        register int r0 asm("r0");
        register int r1 asm("r1");
        register int r2 asm("r2");

        r2 = 0x3333;
        asm volatile("" : "+r"(r2));
        r0 = 0;
        asm volatile("" : "+r"(r0), "+r"(r2));
        r1 = 0x6666;
        asm volatile("" : "+r"(r0), "+r"(r1), "+r"(r2));
        __MapActor_SetSpeed(r0, r1, r2);
    }
    __Func_8092b08(0, 2);
    __Func_809228c(0, 0, -8);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __CutsceneWait(8);
    {
        register int r3 asm("r3") = 0x80;

        r3 <<= 12;
        position <<= 19;
        position += r3;
    }
    __MapActor_SetPos(0, position, 0);
    __CutsceneWait(0x1e);
}
