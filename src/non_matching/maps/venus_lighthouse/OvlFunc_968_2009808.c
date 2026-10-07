void OvlFunc_968_2009808(void)
{
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __MapActor_SetAnimSpeed(int, int);
    extern void __Func_8092950(int, int);
    extern void OvlFunc_968_2008058(int, int, int, int);
    struct Actor *actor;

    actor = (struct Actor *)__MapActor_GetActor(0);
    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    actor->facing = 0x80 << 7;
    API_MapActor_SetSpeed(0, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_TravelToWait(0, ((short *)&actor->pos.x)[1], 0x8a << 2);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 0x16);
    API_CutsceneWait(30);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(20);
    actor->facing = 0xc0 << 8;
    API_MapActor_SetAnim(0, 5);
    __MapActor_SetAnimSpeed(0, 0x18);
    API_CutsceneWait(40);
    actor->gravity = 0x9999;
    actor->bounce = 0;
    OvlFunc_968_2008058(actor->pos.x, 0, actor->pos.z + (0x90 << 15), 0xdf);
    API_Func_8010704(0x22, 0x23, 5, 1, 0x22, 0x22);
    OvlFunc_968_200894c(0);
    __Func_8092950(0, 0xf);
    API_Func_8091e9c(0x14);
    API_MapTransitionOut();
    API_WaitMapTransition();
    API_CutsceneEnd();
}
