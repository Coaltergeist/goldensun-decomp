unsigned int OvlFunc_924_200d1b0(unsigned int arg0)
{
    short *p;
    unsigned int *q;
    int v;

    p = (short *)(arg0 + 0x64);
    *p = *p + 1;
    q = (unsigned int *)(arg0 + 0x68);
    if ((int)((*p) << 16) >> 16 > 0x1f)
        return 0;
    v = __sin(((int)((*p) << 16) >> 16) << 10);
    *(unsigned int *)(arg0 + 0x18) = v;
    *(unsigned int *)(arg0 + 0x1c) = v;
    *(unsigned int *)(arg0 + 8) = *(unsigned int *)((char *)*q + 8);
    *(unsigned int *)(arg0 + 0xc) = *(unsigned int *)(arg0 + 0xc) + (0x80 << 9);
    *(unsigned int *)(arg0 + 0x10) = *(unsigned int *)((char *)*q + 0x10);
    return 1;
}
