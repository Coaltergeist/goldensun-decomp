extern unsigned char iwram_3001ebc[];

void OvlFunc_903_200843c(void)
{
    short *ptr = *(short **)iwram_3001ebc;
    int diff;

    API_CutsceneStart();
    API_MapActor_SetAnim(0, 8);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0x3333, 0x1999);
    API_MapActor_SetSpeed(9, 0x3333, 0x1999);
    API_PlaySound(0xb9);
    ptr += 0xb6;
    diff = (11 - *ptr * 2) << 4;
    API_MapActor_TravelBy(0, diff, 0);
    API_MapActor_TravelBy(9, diff, 0);
    API_MapActor_WaitMovement(0);
    API_MapActor_WaitMovement(9);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 1);
    OvlFunc_903_2008348();
    API_MapActor_PlayPendingSound();
    API_CutsceneEnd();
}
