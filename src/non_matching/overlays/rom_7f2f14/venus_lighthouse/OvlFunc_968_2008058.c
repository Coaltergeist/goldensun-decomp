unsigned int OvlFunc_968_2008058(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    unsigned int r4 = arg0;
    unsigned int r5 = arg1;
    unsigned int r6 = arg2;
    unsigned char *actor;

    actor = (unsigned char *)__CreateActor(r5, r4, r6, arg3);
    r5 = (unsigned int)actor;
    if (actor == 0) {
        return 0;
    }
    *(unsigned char *)(*(unsigned int *)(actor + 0x50) + 9) &= ~0xd;
    OvlFunc_968_2008030(r5, 0xe);
    __Func_800c548(r5, 1);
    return r5;
}
