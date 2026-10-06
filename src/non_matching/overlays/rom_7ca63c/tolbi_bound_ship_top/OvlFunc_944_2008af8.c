void OvlFunc_944_2008af8(void)
{
    char *actor;
    int step = 0xccc;
    unsigned int i;

    __CutsceneStart();
    __Func_8092950(0, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
    __WaitFrames(1);
    __LoadFieldActors(gOvl_0200976c);
    __WaitFrames(1);
    __LoadFieldActors(Lm944_1844);
    __WaitFrames(1);

    OvlFunc_944_2008a84(9);
    OvlFunc_944_2008a84(10);
    OvlFunc_944_2008a84(11);
    OvlFunc_944_2008a84(12);
    OvlFunc_944_2008a84(13);
    OvlFunc_944_2008a84(14);
    OvlFunc_944_2008a84(15);

    __MapActor_SetBehavior(8, gScript_944__0200939c);

    *(int *)((char *)*(void **)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x43;

    __MapTransitionIn();
    __WaitMapTransition();
    API_CutsceneWait(0x96 << 1);
    __PlaySound(0x93);
    API_CutsceneWait(0x64);

    __MapActor_SetIdle(9);
    __MapActor_SetIdle(10);
    __MapActor_SetIdle(11);
    __MapActor_SetIdle(12);
    __MapActor_SetIdle(13);
    __MapActor_SetIdle(14);
    __MapActor_SetIdle(15);

    API_MapActor_SetSpeed(9, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(10, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(11, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(12, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(13, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(14, 0xc0 << 10, 0xc0 << 9);
    API_MapActor_SetSpeed(15, 0xc0 << 10, 0xc0 << 9);

    API_MapActor_TravelTo(9, 0, 0x64);
    API_MapActor_TravelTo(10, 0x3c, 0x64);
    API_MapActor_TravelTo(11, 0x78, 0x64);
    API_MapActor_TravelTo(12, 0xb4, 0x64);
    API_MapActor_TravelTo(13, 0xf0, 0x64);
    API_MapActor_TravelTo(14, 0xa0 << 1, 0x64);
    API_MapActor_TravelTo(15, 0xbe << 1, 0x64);

    API_CutsceneWait(0x28);
    API_MapActor_Emote(8, 0x101, 0);
    API_CutsceneWait(0x14);

    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(11, 0, 0);
    API_MapActor_SetPos(12, 0, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_MapActor_SetPos(14, 0, 0);
    API_MapActor_SetPos(15, 0, 0);

    API_CutsceneWait(0x64);

    actor = (char *)__MapActor_GetActor(0x12);
    *(int *)(actor + 0x18) = 0x1999;
    *(int *)(actor + 0x1c) = 0x1999;
    API_MapActor_SetPos(0x12, 0xac << 16, 0xaa << 17);

    __MapActor_SetIdle(8);
    __WaitFrames(1);
    API_Func_80925cc(8, 1);
    API_Func_8092adc(8, 0xc0 << 6, 0);
    __PlaySound(0x1d);
    API_SetFlag(0x8f << 4);

    for (i = 0; i <= 0x1f; i++) {
        *(int *)(actor + 0x18) += step;
        *(int *)(actor + 0x1c) += step;
        __WaitFrames(1);
    }

    API_MapActor_Emote(8, 0x101, 0x3c);
    API_Func_80925cc(8, 2);
    API_MapActor_TravelToAnimWait(8, 0xa8, 0xaa << 1);
    API_MapActor_TravelToAnimWait(8, 0xc8, 0xaa << 1);
    API_Func_8092adc(8, 0x80 << 8, 0);

    actor = (char *)__MapActor_GetActor(0x11);
    *(int *)(actor + 0x18) = 0x12666;
    *(int *)(actor + 0x1c) = 0x12666;
    *(int *)(actor + 8) = 0xac << 16;
    *(int *)(actor + 0xc) = 0xa0 << 16;
    *(int *)(actor + 0x10) = 0xaa << 17;
    {
        int rot = 0;
        *(unsigned short *)(actor + 6) = rot;
    }
    *(int *)(actor + 0x44) = 0x6666;
    *(int *)(actor + 0x48) = 0xc0 << 10;

    API_CutsceneWait(0x14);
    API_MapActor_Jump(8, 6, 0x14);
    __PlaySound(0x93);
    API_CutsceneWait(0x14);
    __MapActor_SetBehavior(8, gScript_944__020093ac);
    API_CutsceneWait(0x50);

    __Func_8092b08(0x11, 1);
    API_MapActor_SetSpeed(0x11, 0x80 << 9, 0x80 << 8);
    *(int *)(actor + 0x44) = 0x1999;
    *(int *)(actor + 0x48) = 0xb333;
    __PlaySound(0x99);
    *(int *)(actor + 0x28) = 0x80 << 12;
    API_MapActor_TravelTo(0x11, 0x84, 0xb4 << 1);
    API_MapActor_TravelTo(0x12, 0x84, 0xb4 << 1);

    API_CutsceneWait(0x28);
    API_MapActor_SetPos(0x11, 0, 0);

    actor = (char *)__MapActor_GetActor(8);
    *(int *)(actor + 0x18) = 0x80 << 9;
    *(int *)(actor + 0x1c) = 0x80 << 9;
    {
        int t = 0xa0;
        *(unsigned short *)(actor + 6) = t << 7;
    }
    API_CutsceneWait(0x28);

    *(int *)((char *)*(void **)iwram_3001ebc + (0xe0 << 1)) = (0xe0 << 1) + 0x42;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xd);
    __CutsceneEnd();
}
