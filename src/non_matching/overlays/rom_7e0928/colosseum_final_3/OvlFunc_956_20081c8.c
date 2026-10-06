void __WaitFrames(int);

void OvlFunc_956_20081c8(void)
{
    extern unsigned char L5480[] __asm__(".Lm956_5480");
    extern unsigned char L5484[] __asm__(".Lm956_5484");
    int r5;
    int r3;

    __WaitFrames(10);
    r3 = *(int *)L5480;
    r5 = 0;
    goto L1e8;
L1d8:
    __WaitFrames(1);
    r5 += 1;
    if (r5 > 0x77) goto L1f4;
    r3 = *(int *)L5480;
L1e8:
    if (r3 != 3) goto L1d8;
    r3 = *(int *)L5484;
    if (r3 != 1) goto L1d8;
L1f4:
    return;
}
