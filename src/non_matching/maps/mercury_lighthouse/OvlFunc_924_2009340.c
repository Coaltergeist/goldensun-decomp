extern void OvlFunc_924_200ba64(void);

void OvlFunc_924_2009340(void)
{
    char *state;
    short mode;

    state = (char *)iwram_3001ebc;
    __CutsceneStart();
    API_StartTask(OvlFunc_924_200ba64, 0xc80);
    __MapActor_SetSpeed(0, 0x28000, 0x14000);
    __MapActor_SetAnim(0, 1);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A &= ~1;
    __PlaySound(0xe4);

    mode = *(short *)(state + 0x16c);
    if (mode == 2) {
        API_MapActor_TravelTo(0, 0xe8, 0x268);
    } else if (mode == 3) {
        API_MapActor_TravelTo(0, 0x168, 0x2d8);
    } else if (mode == 4) {
        API_MapActor_TravelTo(0, 0xf8, 0x318);
    } else {
        API_MapActor_TravelToWait(0, 0x2b8, 0x250);
        API_MapActor_TravelTo(0, 0x2b8, 0x258);
        __CutsceneWait(0x1e);
    }

    __MapActor_WaitMovement(0);
    ((struct Actor *)__MapActor_GetActor(0))->__unk5A |= 1;
    API_StopTask(OvlFunc_924_200ba64);
    __CutsceneEnd();
}
