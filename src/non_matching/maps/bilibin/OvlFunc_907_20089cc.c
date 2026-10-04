void OvlFunc_907_20089cc(void)
{
    unsigned char *actor0;
    unsigned char *actor20;
    int z20;
    int x0;
    int z0;
    int x20;

    actor0 = (unsigned char *)__MapActor_GetActor(0);
    actor20 = (unsigned char *)__MapActor_GetActor(0x14);
    z20 = *(int *)(actor20 + 0x10) >> 20;
    x0 = *(int *)(actor0 + 8) >> 20;
    z0 = *(int *)(actor0 + 0x10) >> 20;
    x20 = *(int *)(actor20 + 8) >> 20;

    __Func_8010704(15, 11, 3, 1, 15, 12);
    __Func_8010704(15, 11, 3, 1, 15, 13);
    __Func_8010704(15, 11, 3, 1, 15, 14);
    __Func_8010704(1, 0, 1, 1, x20, z20);

    if (x20 != 16 || z20 != 13) {
        __Func_8010704(0, 0, 1, 1, 16, 13);
    }

    if (x0 == 16 && z0 == 13) {
        __CutsceneStart();
        API_MapActor_Emote(0, 0x80 << 1, 0x14);
        API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
        API_MapActor_Jump(0, 6, 0);
        if (z20 == 13) {
            API_MapActor_TravelToWait(0, 0x83 << 1, 0xc4);
            API_Func_8092adc(0, 0x80 << 7, 0x14);
        } else {
            API_MapActor_TravelToWait(0, 0x8f << 1, 0xda);
            API_Func_8092adc(0, 0x80 << 8, 0x14);
        }
        __CutsceneEnd();
    }
}
