extern unsigned char Lm909_2308[] __asm__(".Lm909_2308");

__asm__(".equ .Lm909_2308, 0");

void OvlFunc_909_200a1bc(void)
{
    unsigned char *base;
    int zero = 0;
    int facing;

    __CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    ((unsigned char *)__Func_8093554())[0x55] = zero;
    API_Func_80933f8(0x9d << 18, -1, 0xbb << 18, 0);
    API_Func_8010704(0x26, 0x37, 4, 1, 0x26, 0x2d);
    API_Func_8010704(0x2a, 0x37, 4, 1, 0x26, 0x2e);

    *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) = zero;
    API_MapActor_SetPos(0, 0x2410000, 0xbe << 18);

    *(unsigned short *)((char *)__MapActor_GetActor(0x13) + 6) = zero;
    API_MapActor_SetPos(0x13, 0x94 << 18, 0xbe << 18);

    facing = 0x9000;
    *(unsigned short *)((char *)__MapActor_GetActor(0x11) + 6) = facing;
    API_MapActor_SetPos(0x11, 0x2960000, 0xbf << 18);

    API_MapActor_SetPos(0x15, 0x9a << 18, 0xb6 << 18);
    API_MapActor_SetPos(0x16, 0x9e << 18, 0xb6 << 18);
    API_MapActor_SetPos(0x17, 0xa2 << 18, 0xb6 << 18);
    API_MapActor_SetPos(0x18, 0xa6 << 18, 0xb6 << 18);

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x15), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

    ((unsigned char *)__MapActor_GetActor(0x15))[0x55] = (int)Lm909_2308;
    ((unsigned char *)__MapActor_GetActor(0x16))[0x55] = (int)Lm909_2308;
    ((unsigned char *)__MapActor_GetActor(0x17))[0x55] = (int)Lm909_2308;
    ((unsigned char *)__MapActor_GetActor(0x18))[0x55] = (int)Lm909_2308;

    *(int *)((char *)__MapActor_GetActor(0x15) + 0xc) = 0xfffc0000;
    *(int *)((char *)__MapActor_GetActor(0x16) + 0xc) = 0xfffc0000;
    *(int *)((char *)__MapActor_GetActor(0x17) + 0xc) = 0xfffc0000;
    *(int *)((char *)__MapActor_GetActor(0x18) + 0xc) = 0xfffc0000;

    __Func_800fe9c();
    __WaitFrames(1);

    base = iwram_3001ebc;
    *(int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x41;
    *(int *)(base + (0xe4 << 1)) = 0x10;

    __MapTransitionIn();
    __WaitMapTransition();

    API_MapActor_SetSpeed(0x13, 0x9999, 0x4ccc);
    API_MapActor_SetSpeed(0, 0x9999, 0x4ccc);

    API_MapActor_TravelToAnim(0x13, 0x9d << 2, 0xbf << 2);
    API_MapActor_TravelToAnimWait(0, 0x99 << 2, 0xbf << 2);

    API_MapActor_SetAnim(0x13, 1);
    __CutsceneWait(0x14);

    __Func_80925cc(0x13, 1);
    __MessageID(0x1746);
    API_ActorMessage_Wait(0x13, 0, 10);

    API_MapActor_TravelToAnimWait(0x13, 0x26e, 0xc3 << 2);
    API_Func_8092adc(0x13, 0xc0 << 8, 10);

    __Func_80925cc(0x11, 2);
    API_ActorMessage_Wait(0x11, 0, 10);

    API_MapActor_DoAnim(0, 3);
    __ClearFlag(0x12f);
    __SetFlag(0x202);
    __CutsceneEnd();
}
