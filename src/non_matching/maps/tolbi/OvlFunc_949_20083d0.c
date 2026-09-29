extern void __CutsceneStart(void);

void OvlFunc_949_20083d0(void)
{
    char *iwram;
    char *actor;
    short saved;
    unsigned short *flags;
    unsigned int r2;
    unsigned int r3;
    short val;

    iwram = (char *)iwram_3001ebc;
    actor = (char *)__MapActor_GetActor(0x11);
    saved = *(short *)(actor + 6);
    flags = (unsigned short *)(actor + 0x64);
    __CutsceneStart();
    r2 = 0xbf;
    r2 <<= 1;
    *flags |= 2;
    r3 = (unsigned int)iwram + r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val == 0) {
        if (__GetFlag(0x95 << 4))
            __MessageID(0x2366);
        else if (__GetFlag(0x962))
            __MessageID(0x21e3);
        else
            __MessageID(0x1f96);
    } else {
        if (__GetFlag(0x95 << 4))
            __MessageID(0x2372);
        else if (__GetFlag(0x962))
            __MessageID(0x21f6);
        else
            __MessageID(0x1fab);
    }
    __MapActor_SetAnim(0x11, 0);
    __MapActor_TurnToFaceActor(0x11, 0, 2);
    __ActorMessage_Wait(0x11, 0, 0xa);
    *(short *)(actor + 6) = saved;
    __WaitFrames(1);
    *flags &= 1;
    __CutsceneEnd();
}
