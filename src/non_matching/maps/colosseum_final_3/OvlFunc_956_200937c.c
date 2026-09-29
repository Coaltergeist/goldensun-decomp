unsigned int OvlFunc_956_200937c(unsigned int arg0)
{
    unsigned int *p = (unsigned int *)arg0;
    short *r1;
    short *r4;
    int r2;
    unsigned int r3;

    r1 = (short *)(arg0 + 0x64);
    r2 = *r1;
    r3 = *(unsigned int *)(arg0 + 8);
    r3 += r2 << 8;
    *(unsigned int *)(arg0 + 8) = r3;

    r4 = (short *)(arg0 + 0x66);
    r2 = *r4;
    r3 = *(unsigned int *)(arg0 + 0xc);
    r3 += r2 << 8;
    *(unsigned int *)(arg0 + 0xc) = r3;

    r3 = *(unsigned int *)(arg0 + 0x18);
    r3 += 0x666;
    *(unsigned int *)(arg0 + 0x18) = r3;

    r3 = *(unsigned int *)(arg0 + 0x1c);
    r3 += 0x666;
    *(unsigned int *)(arg0 + 0x1c) = r3;

    *(unsigned short *)r1 = *(unsigned short *)r1 + 5;
    *(unsigned short *)r4 = *(unsigned short *)r4 - 1;

    (void)p;
    return 0;
}
