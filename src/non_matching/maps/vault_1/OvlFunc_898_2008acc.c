extern void OvlFunc_898_2009724(unsigned int, unsigned int);
extern void __WaitFrames(int);

void OvlFunc_898_2008acc(void)
{
    unsigned char *actor;
    unsigned short *flags;
    short saved;

    actor = (unsigned char *)__MapActor_GetActor(0xf);
    saved = *(short *)(actor + 6);
    flags = (unsigned short *)(actor + 0x64);
    *flags |= 2;
    __CutsceneStart();
    __MessageID(0x133b);
    __MapActor_SetAnim(0xf, 0);
    OvlFunc_898_200973c(0xf, 0, 2);
    OvlFunc_898_2009724(0xf, 0xa);
    *(short *)(actor + 6) = saved;
    __WaitFrames(1);
    __CutsceneEnd();
    *flags &= 1;
}
