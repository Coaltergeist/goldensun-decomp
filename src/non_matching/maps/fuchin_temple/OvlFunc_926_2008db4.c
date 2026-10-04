void OvlFunc_926_2008db4(void)
{
    unsigned char *actor;
    unsigned int i;
    unsigned char *sprite;

    actor = __MapActor_GetActor(0x13);
    for (i = 0; i <= 3; i++)
    {
        __WaitFrames((4 - i) * 2);
        *(int *)(actor + 0x10) -= 0x10000;
        *(int *)(actor + 0x40) = 0x80 << 24;
    }
    sprite = *(unsigned char **)(actor + 0x50);
    *(unsigned short *)(sprite + 0x1e) = 0;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0xffff3334, 0, 0xffffcccd, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0xcccc, 0, 0xffffcccd, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) - 0x60000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0xa0000, 0x3333, 0, 0xffff0000, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) + 0x60000, *(int *)(actor + 0xc), *(int *)(actor + 0x10) + 0xa0000, 0x3333, 0, 0xffff0000, 0, 0);
}
