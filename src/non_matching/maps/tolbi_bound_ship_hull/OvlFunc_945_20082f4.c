unsigned int OvlFunc_945_20082f4(unsigned char *r0) {
    unsigned char *r5;
    int r2;
    unsigned char r1;
    unsigned char r3;

    *(r0 + 0x59) = 8;
    r5 = *(unsigned char **)(r0 + 0x50);
    __Actor_SetSpriteFlags(r0, 0);
    r2 = 0xd;
    r1 = *(r5 + 9);
    r2 = -r2;
    r3 = r2 & r1;
    r3 |= 4;
    *(r5 + 9) = r3;
    r3 = *(r5 + 0x15);
    r2 = r2 & r3;
    r2 |= 4;
    *(r5 + 0x15) = r2;
    r3 = *(r0 + 0x23);
    r3 = (0xfe & r3) | 2;
    *(r0 + 0x23) = r3;
    __Func_80929d8(r0, 0xf);
    return 1;
}
