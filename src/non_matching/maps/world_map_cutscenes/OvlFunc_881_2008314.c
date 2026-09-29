unsigned int OvlFunc_881_2008314(unsigned int arg0)
{
    unsigned char *actor = (unsigned char *)arg0;

    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetColorswap(actor, 10);
    actor[0x59] = 0;
    if (__GetFlag(0x8a0)) {
        __SetFlag(0x2f1);
        *(int *)(actor + 8) = 0;
        *(int *)(actor + 0xc) = 0;
    }
    return 0;
}
