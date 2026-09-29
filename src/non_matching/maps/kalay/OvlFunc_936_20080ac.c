unsigned int OvlFunc_936_20080ac(unsigned int arg0)
{
    unsigned char *r5;
    unsigned char *r6;
    short r3;
    unsigned short r2;
    unsigned short v;

    r5 = (unsigned char *)arg0;
    r6 = r5 + 0x66;
    r3 = *(short *)r6;
    r2 = *(unsigned short *)r6;
    if (r3 != 0) goto L4e0;

    v = *(unsigned short *)(r5 + 6);
    v = v + ((__Random() << 15) >> 16);
    *(unsigned short *)(r5 + 6) = v;

    r3 = ((__Random() * 5) << 4) >> 16;
    *(unsigned short *)r6 = r3;
    if (r3 == 0) goto L4e4;
    r2 = r3;
L4e0:
    r3 = r2 - 1;
    *(unsigned short *)r6 = r3;
L4e4:
    return 1;
}
