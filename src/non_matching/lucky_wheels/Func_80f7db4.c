void Func_80f7db4(void)
{
    unsigned char *base = *(unsigned char **)ewram_2004c00;
    unsigned char *p;
    int i;

    p = base + 4;
    i = 0;
    do {
        *(int *)(p + 4) = i;
        i++;
        *(int *)p = 0;
        p += 0xc;
    } while (i <= 0x3ff);

    p = base + (0xc0 << 6);
    i = 0xff;
    do {
        i--;
        *(int *)p = 0;
        p += 4;
    } while (i >= 0);
}
