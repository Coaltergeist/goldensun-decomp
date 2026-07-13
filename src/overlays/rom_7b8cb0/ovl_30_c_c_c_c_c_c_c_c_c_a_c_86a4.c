extern unsigned char *iwram_3001ebc;
extern void __CutsceneStart(void);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __PlaySound(int sound);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneEnd(void);

void OvlFunc_931_20086a4(void)
{
    unsigned char *state = iwram_3001ebc;
    unsigned char *actor;
    register int transition_y asm("r2");
    register int transition_mode asm("r1");

    __CutsceneStart();
    actor = __MapActor_GetActor(0);
    actor[0x55] = 0;
    __PlaySound(0x7b);
    transition_y = 0x10;
    transition_mode = 2;
    asm volatile("" : "+r" (transition_y), "+r" (transition_mode));
    transition_y = -transition_y;
    __Func_8092208(0, transition_mode, transition_y);
    __Func_8091e9c(*(short *)(state + 0x16c));
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
