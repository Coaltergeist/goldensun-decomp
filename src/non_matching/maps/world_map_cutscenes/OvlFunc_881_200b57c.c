void OvlFunc_881_200b57c(void)
{
    extern void *__MapActor_GetActor(int);
    extern void __Func_80936a0(int, int);
    extern void __Func_8092950(int, int);
    extern void __Actor_SetSpriteFlags(void *, int);
    extern const unsigned char gScript_881__0200d218[];
    extern void OvlFunc_881_200b4a0(void);
    extern unsigned char iwram_3001ebc[];
    struct Actor *actor;
    unsigned char *base;

    actor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneWait(60);
    API_CutsceneStart();
    __Func_80936a0(0x9999, 1);
    actor->scale.x = 0x13333;
    actor->scale.y = 0x13333;
    API_SetCameraTarget(8, 1);
    API_WaitFrames(1);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
    API_MapActor_SetSpeed(8, 0x6666, 0x3333);
    actor->waveCounter = 0;
    API_MapActor_SetBehavior(8, (int)gScript_881__0200d218);
    API_StartTask(OvlFunc_881_200b4a0, 0xc8 << 4);

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = 0x100;
    API_Func_8091200(0x10003, 1);
    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe4 << 1)) = 0x20;
    API_MapTransitionIn();
    API_CutsceneWait(120);
    __Func_80936a0(0x16666, 300);
    API_CutsceneWait(270);
    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + (0xe4 << 1)) = 0x10;
    *(volatile u16 *)0x05000000 = 0x7fff;
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_Func_8091e9c(0x6f);
}
