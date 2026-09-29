void OvlFunc_932_200aa10(unsigned int arg0) {
    unsigned char *p;
    unsigned char v;

    *(unsigned char *)(arg0 + 0x55) = 0;
    p = *(unsigned char **)(arg0 + 0x50);
    v = p[9];
    v = (v & ~0xc) | 4;
    p[9] = v;
    __Func_80929d8(arg0, 3);
    __Actor_SetSpriteFlags(arg0, 0);
    *(unsigned int *)(arg0 + 0x18) = 0x4ccc;
    *(unsigned int *)(arg0 + 0x1c) = 0x4ccc;
}
