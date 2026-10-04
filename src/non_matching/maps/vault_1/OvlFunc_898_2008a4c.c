extern void OvlFunc_898_2009724(unsigned int, unsigned int);

void OvlFunc_898_2008a4c(void)
{
    unsigned char *actor;
    unsigned short *flags;
    unsigned short *p;
    unsigned short f;
    short saved;

    actor = (unsigned char *)__MapActor_GetActor(0xe);
    flags = (unsigned short *)(actor + 0x64);
    f = *flags;
    saved = *(short *)(actor + 6);
    *flags = f | 2;
    __CutsceneStart();
    __MessageID(0x1339);
    if (__GetFlag(2)) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __MapActor_SetAnim(0xe, 0);
    OvlFunc_898_200973c(0xe, 0, 2);
    OvlFunc_898_2009724(0xe, 0xa);
    *(short *)(actor + 6) = saved;
    API_WaitFrames(1);
    __CutsceneEnd();
    *flags &= 1;
}
