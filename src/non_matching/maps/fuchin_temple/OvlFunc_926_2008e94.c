void OvlFunc_926_2008e94(void)
{
    unsigned char *actor;
    unsigned int i;
    int wait;
    unsigned char *sprite;

    actor = __MapActor_GetActor(0x13);
    wait = 8;
    for (i = 0; i <= 3; i++)
    {
        __WaitFrames(wait);
        *(int *)(actor + 0x10) += 0x80 << 9;
        *(int *)(actor + 0x40) = 0x80 << 24;
        wait -= 2;
    }
    sprite = *(unsigned char **)(actor + 0x50);
    *(unsigned short *)(sprite + 0x1e) = 0;
    *(int *)(actor + 0x10) += 0xc0 << 13;
    *(int *)(actor + 0x40) = 0x80 << 24;
    __PlaySound(0xe3);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + (0xc0 << 12), 0xffff3334, 0, 0x3333, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8), *(int *)(actor + 0xc), *(int *)(actor + 0x10) + (0xc0 << 12), 0xcccc, 0, 0x3333, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) - (0xc0 << 11), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0x3333, 0, 0x80 << 9, 0, 0);
    OvlFunc_common0_10c(*(int *)(actor + 8) + (0xc0 << 11), *(int *)(actor + 0xc), *(int *)(actor + 0x10) - 0x80000, 0x3333, 0, 0x80 << 9, 0, 0);
}
