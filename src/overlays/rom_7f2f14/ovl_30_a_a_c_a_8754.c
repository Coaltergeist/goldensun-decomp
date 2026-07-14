extern unsigned char *__MapActor_GetActor(int actor);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __PlaySound(int sound);
extern void OvlFunc_968_20086a0(void);
extern void __MapActor_SetAnim(int actor, int anim);
extern void __Func_809228c(int actor, int x, int y);
extern void __MapActor_WaitMovement(int actor);
extern void __Func_8092950(int actor, int arg1);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __CutsceneWait(int frames);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int arg0);
extern unsigned char *iwram_3001ebc;

void OvlFunc_968_2008754(void)
{
    register unsigned char *base asm("r6") = iwram_3001ebc;
    register unsigned char *actor asm("r5");

    actor = __MapActor_GetActor(0);
    __CutsceneStart();
    __PlaySound(0xe4);
    *(void (**)(void))(actor + 0x6c) = OvlFunc_968_20086a0;
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
    base += 0x16c;
    __Func_8091e9c(*(short *)base);
    __CutsceneEnd();
}
