void OvlFunc_944_2008564(void)
{
    int *iwram_ptr;
    int *coords;
    int off;
    char *actor;
    int v;

    iwram_ptr = (int *)&iwram_3001e70;
    coords = *(int **)*(int **)iwram_ptr;

    __CutsceneStart();
    __LoadFieldActors(Lm944_16f4);
    __WaitFrames(1);
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __MapActor_SetBehavior(8, gScript_944__0200939c);

    iwram_ptr = (int *)((char *)iwram_ptr + 0x4c);
    {
        char *base = *(char **)iwram_ptr;
        int val = 0x203;
        off = 0xe0 << 1;
        *(int *)(base + off) = val;
    }

    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0x14);

    Lm944_1938[0] = *coords++;
    Lm944_1938[1] = *coords;

    API_MapActor_SetPos(9, 0xa0 << 15, 0xd2 << 16);

    {
        char *actor = (char *)__MapActor_GetActor(9);
        int zero = 0;
        int pos_x = 0xa0 << 15;
        actor[0x55] = zero;
        Lm944_1930[0] = pos_x;
        Lm944_1930[1] = zero;
        __MapActor_SetBehavior(9, ActorCmd_ARRAY_944__02009314);
    }

    API_CutsceneWait(0x14);
    __PlaySound(0x1d);
    __SetFlag(0x8f << 4);

    __MapActor_SetIdle(8);
    __WaitFrames(1);
    API_MapActor_Emote(8, 0x80 << 1, 0);
    API_Func_8092adc(8, 0xb000, 0);

    __MessageID(0x1e3e);
    __ActorMessage_Wait(8, 0, 10);

    API_MapActor_SetPos(10, 0xa0 << 15, 0xd2 << 16);
    API_MapActor_SetPos(11, 0xa0 << 15, 0xd2 << 16);
    API_MapActor_SetPos(12, 0xa0 << 15, 0xd2 << 16);

    __Func_8092b08(10, 3);
    __Func_8092b08(11, 3);
    __Func_8092b08(12, 3);

    __Func_8092950(10, 3);
    __Func_8092950(11, 3);
    __Func_8092950(12, 3);

    v = 0x80 << 8;
    actor = (char *)__MapActor_GetActor(10);
    *(int *)(actor + 0x1c) = v;
    *(int *)(actor + 0x18) = v;
    *(void **)(actor + 0x6c) = OvlFunc_944_20080a4;

    actor = (char *)__MapActor_GetActor(11);
    *(int *)(actor + 0x1c) = v;
    *(int *)(actor + 0x18) = v;
    *(void **)(actor + 0x6c) = OvlFunc_944_20080a4;

    actor = (char *)__MapActor_GetActor(12);
    *(int *)(actor + 0x1c) = v;
    *(int *)(actor + 0x18) = v;
    *(void **)(actor + 0x6c) = OvlFunc_944_20080a4;

    __WaitFrames(1);

    API_MapActor_SetSpeed(10, 0x851e, 0x428f);
    API_MapActor_SetSpeed(11, 0x7333, 0x3999);
    API_MapActor_SetSpeed(12, 0x9999, 0x4ccc);

    API_MapActor_TravelTo(10, 0x80, 0x159);
    API_MapActor_TravelTo(11, 0x88, 0xa5 << 1);
    API_MapActor_TravelTo(12, 0x9c, 0xaa << 1);

    API_CutsceneWait(0x3c);
    API_Func_80925cc(8, 2);
    API_MapActor_TravelToAnimWait(8, 0xa4, 0xac << 1);

    API_MapActor_Jump(8, 4, 10);
    API_MapActor_Jump(8, 6, 0x28);

    API_Func_809259c(8, 3);
    __ActorMessage_Wait(8, 0, 0x14);

    *(int *)(*(char **)iwram_ptr + off) = 0x202;

    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xb);
    __CutsceneEnd();
}
