void OvlFunc_943_200a9d4(void)
{
    struct Actor *actor;

    API_CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    API_WaitFrames(1);

    API_MapActor_SetPos(0x14, 0xb60000, 0x26a0000);
    API_MapActor_SetPos(0x17, 0xee0000, 0x2720000);
    API_MapActor_SetPos(0x16, 0x86 << 17, 0x2a60000);

    actor = (struct Actor *)__MapActor_GetActor(0x16);
    actor->facing = 0;
    API_MapActor_SetBehavior(0x16, (int)gScript_943__0200c980);

    actor = (struct Actor *)__MapActor_GetActor(0x15);
    actor->__unk59 |= 0x80;
    API_MapActor_SetSpeed(0x15, 0xcccc, 0x6666);
    API_MapActor_SetBehavior(0x15, (int)gScript_943__0200c628);

    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x100;
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_CutsceneWait(0x14);

    API_MapActor_SetSpeed(0x14, 0x19999, 0xcccc);
    API_MapActor_TravelToAnimWait(0x14, 0xb6, 0x89 << 2);
    OvlFunc_943_200ba00(0x14, 0);
    OvlFunc_943_200ba00(0, 0x8000);
    API_Func_80925cc(0x14, 1);
    API_MessageID(0x1ee1);
    OvlFunc_943_200b9ec(0x14);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(0x28);
    API_Func_8092adc(0x14, 0x5000, 0x14);
    API_MapActor_Emote(0x14, 0x105, 0x3c);
    API_ActorMessage_Wait(0x14, 0, 0x28);
    OvlFunc_943_200ba00(0x14, 0);
    OvlFunc_943_200b9ec(0x14);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(0x14, 3);
    API_MapActor_TravelToAnimWait(0x14, 0xb6, 0x96 << 2);
    API_MapActor_TravelToAnimWait(0x14, 0xd8, 0x96 << 2);
    OvlFunc_943_200ba00(0x14, 0xc000);
    OvlFunc_943_2008bb8();
    API_CutsceneWait(0xa);
    API_MapActor_TravelToAnimWait(0x14, 0xd8, 0x91 << 2);
    API_MapActor_SetPos(0x14, 0, 0);

    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x209;
    API_SetFlag(0x92b);
    API_ClearFlag(0x302);
    API_CutsceneEnd();
}
