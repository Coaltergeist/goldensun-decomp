extern void OvlFunc_898_2009724(unsigned int, unsigned int);

void OvlFunc_898_200885c(void)
{
    unsigned char *actor;
    unsigned short *flags;
    short saved_dir;

    actor = (unsigned char *)__MapActor_GetActor(0xf);
    saved_dir = *(short *)(actor + 6);
    flags = (unsigned short *)(actor + 0x64);
    *flags |= 2;
    __CutsceneStart();
    __MessageID(0x122d);
    __MapActor_SetAnim(0xf, 0);
    OvlFunc_898_200973c(0xf, 0, 2);
    OvlFunc_898_2009724(0xf, 0xa);
    *(short *)(actor + 6) = saved_dir;
    __WaitFrames(1);
    __CutsceneEnd();
    *flags &= 1;
}
