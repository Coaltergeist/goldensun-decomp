void OvlFunc_881_200a7dc(void)
{
    extern unsigned char gOvl_0200e3f4[];
    unsigned char *base = gOvl_0200e3f4;
    int offset;

    for (offset = 0; ; offset += 12) {
        if (*(int *)(base + offset) == 2 && *(short *)(base + offset + 4) == 0x8a) {
            *(int *)(base + offset) = 1;
            *(int *)(base + offset + 8) = 0x21;
            return;
        }
        if (*(int *)(base + offset) == -1)
            return;
    }
}
