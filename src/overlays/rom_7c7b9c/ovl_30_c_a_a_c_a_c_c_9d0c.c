extern unsigned int iwram_3001ebc;

extern unsigned char FieldActors_5160[] asm(".L5160");

extern void __CutsceneStart(void);
extern void __LoadFieldActors(const void *actors);
extern void __WaitFrames(int frames);
extern void __Func_8092950(int actor, int value);
extern unsigned char *__MapActor_GetActor(int id);
extern void __Actor_SetSpriteFlags(unsigned char *actor, int flags);
extern void __MapTransitionIn(void);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __CutsceneWait(int frames);
extern void __Func_80925cc(int actor, int value);
extern int __MessageID(int id);
extern void __Func_8093040(int actor, int a, int b);
extern void OvlFunc_943_200ba00(int actor, int value);
extern void __MapActor_Jump(int actor, int height, int duration);
extern void __Func_809259c(int actor, int value);
extern void __Func_8091e9c(int arg0);

void OvlFunc_943_2009d0c(void)
{
    unsigned char *actor;

    __CutsceneStart();
    __LoadFieldActors(FieldActors_5160);
    __WaitFrames(1);
    __Func_8092950(0, 0xf);
    actor = __MapActor_GetActor(0);
    __Actor_SetSpriteFlags(actor, 0);
    *(unsigned int *)((char *)iwram_3001ebc + 0x1c0) = 0x1c0 + 0x42;
    __MapTransitionIn();
    __WaitMapTransition();
    __CutsceneWait(0x14);
    __Func_80925cc(0x14, 1);
    __MessageID(0x1e41);
    __Func_8093040(0x14, 0, 0xa);
    OvlFunc_943_200ba00(0x16, 0xa0 << 7);
    __MapActor_Jump(0x16, 4, 0x14);
    __Func_809259c(0x16, 2);
    __Func_8093040(0x6016, 0, 0x14);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xb);
}
