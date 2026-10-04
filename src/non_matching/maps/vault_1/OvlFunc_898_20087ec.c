extern void OvlFunc_898_2009724(unsigned int, unsigned int);
extern void __WaitFrames(int);

void OvlFunc_898_20087ec(void)
{
    unsigned char *actor;
    unsigned short *flags;
    short saved;

    actor = (unsigned char *)__MapActor_GetActor(0xe);
    saved = *(short *)(actor + 6);
    flags = (unsigned short *)(actor + 0x64);
    *flags |= 2;
    __CutsceneStart();
    __MessageID(0x122c);
    __MapActor_SetAnim(0xe, 0);
    OvlFunc_898_200973c(0xe, 0, 2);
    OvlFunc_898_2009724(0xe, 10);
    *(short *)(actor + 6) = saved;
    __WaitFrames(1);
    __CutsceneEnd();
    *flags &= 1;
}
