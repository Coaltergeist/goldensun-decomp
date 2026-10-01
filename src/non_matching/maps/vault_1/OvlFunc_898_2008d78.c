void OvlFunc_898_2008d78(void)
{
    unsigned short *p;

    p = (unsigned short *)((unsigned char *)__MapActor_GetActor(0xf) + 0x64);
    *p |= 2;
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x123d);
    } else {
        __MessageID(0x134b);
    }
    OvlFunc_898_2008938(0xf);
    __CutsceneEnd();
    p = (unsigned short *)((unsigned char *)__MapActor_GetActor(0xf) + 0x64);
    *p &= 1;
}
