void OvlFunc_926_200a508(void)
{
    unsigned char *p;

    p = __MapActor_GetActor(0);
    __CutsceneStart();
    if ((unsigned int)(*(unsigned short *)(p + 6) - 0xa001) <= 0x3ffe) {
        __UI_Sanctum(0xd);
    } else {
        __MessageID(0x1a1c);
        __ActorMessage(0xd, 0);
    }
    __CutsceneEnd();
}
