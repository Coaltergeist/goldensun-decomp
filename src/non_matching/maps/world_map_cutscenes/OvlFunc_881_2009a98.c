void OvlFunc_881_2009a98(void)
{
    extern void *__MapActor_GetActor(int);
    extern unsigned int OvlFunc_881_200b41c(void);
    extern unsigned char gScript_881__0200d1b8[];
    extern unsigned char gScript_881__0200d158[];
    struct Actor *actor;
    short *wc;

    actor = (struct Actor *)__MapActor_GetActor(8);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_WaitFrames(1);
    API_MapActor_SetPos(0, 0, 0);
    API_MapActor_SetPos(8, 0x1f080000, 0xc8 << 16);
    actor->scale.x = 0xa0 << 9;
    actor->scale.y = 0xa0 << 9;
    API_WaitFrames(1);
    API_SetCameraTarget(8, 1);
    API_MapTransitionIn();
    API_MapActor_SetSpeed(8, 0x9999, 0x4ccc);
    wc = &actor->waveCounter;
    *wc = 0;
    if (OvlFunc_881_200b41c() == 11) {
        API_MapActor_SetBehavior(8, (int)gScript_881__0200d1b8);
    } else {
        API_MapActor_SetBehavior(8, (int)gScript_881__0200d158);
    }
    do {
        API_WaitFrames(1);
    } while (*wc == 0);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_SetFlag(0x927);
    API_Func_8091e9c(0x6a);
    API_CutsceneEnd();
}
