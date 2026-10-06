extern void __Func_80105d4(int, int, int, int, int, int);

extern unsigned char c_59[] __asm__(".Lconst_59");

extern unsigned char c_5a[] __asm__(".Lconst_5a");

extern unsigned char c_5b[] __asm__(".Lconst_5b");

extern unsigned char c_5c[] __asm__(".Lconst_5c");

void OvlFunc_933_20084e4(void)
{
    unsigned char *gs;
    short val;
    int i;

    __ClearFlag(0x201);
    gs = (unsigned char *)&gState;
    gs += (0xe0 << 1);
    val = *(short *)gs;
    if (val == (int)c_59) {
        __Func_80105d4(0x46, 0x44, 4, 2, 0x16, 7);
        __Func_80105d4(0x46, 0x44, 4, 2, 8, 0xa);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x17, 0x15);
        __Func_8010704(0x46, 0x44, 4, 1, 0x17, 0x17);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x10, 0x2a);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x24, 0x2c);
        __Func_80105d4(0x46, 0x44, 4, 2, 0xe, 0x37);
    } else if (val == (int)c_5a) {
        __Func_80105d4(0x46, 0x44, 4, 2, 0x2a, 5);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x14, 0xb);
        __Func_8010704(0x46, 0x44, 4, 1, 0x14, 0xd);
        __Func_80105d4(0x46, 0x44, 4, 2, 0xe, 0xc);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x38, 0x12);
        __Func_80105d4(0x46, 0x44, 4, 2, 7, 0x16);
        __Func_8010704(0x46, 0x44, 4, 1, 7, 0x18);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x2c, 0x17);
        __Func_8010704(0x46, 0x44, 4, 1, 0x2c, 0x19);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x26, 0x18);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x1a, 0x1c);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x11, 0x23);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x32, 0x24);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x22, 0x2b);
        __Func_8010704(0x46, 0x44, 4, 1, 0x22, 0x2d);
        __Func_80105d4(0x46, 0x44, 4, 2, 6, 0x2e);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x1b, 0x37);
        __Func_80105d4(0x46, 0x44, 4, 2, 0x2b, 0x38);
    } else if (val == (int)c_5b) {
        __Func_8010788(0x45, 0x63, 4, 2, 8, 0x10);
        __Func_8010788(0x45, 0x63, 4, 2, 6, 0x14);
        __Func_8010788(0x45, 0x63, 4, 2, 0xa, 0x17);
        __Func_8010704(0x45, 0x63, 4, 2, 8, 0xe);
        __Func_8010704(0x45, 0x63, 4, 2, 6, 0x12);
        __Func_8010704(0x45, 0x63, 4, 1, 6, 0x14);
        __Func_8010704(0x45, 0x63, 4, 2, 0xa, 0x15);
        __Func_80105d4(0, 0x79, 5, 7, 8, 0x20);
        __Func_80105d4(0, 0x79, 5, 7, 0x2b, 0x20);
        __Func_80105d4(6, 0x78, 3, 1, 9, 5);
        __Func_80105d4(9, 0x78, 3, 1, 0x2c, 5);
        __Func_8010704(9, 0, 3, 3, 9, 6);
    }

    __MapActor_SetPos(8, 0, 0);
    __MapActor_SetPos(9, 0, 0);
    __MapActor_SetPos(10, 0, 0);
    __MapActor_SetPos(11, 0, 0);
    __MapActor_SetPos(12, 0, 0);
    __MapActor_SetPos(13, 0, 0);

    for (i = 0x64; i <= 0x6b; i++) {
        __Func_808edac(i, 0, 0);
    }

    gs = (unsigned char *)&gState;
    gs += (0xe0 << 1);
    if (*(short *)gs != (int)c_5c) {
        __Func_8094730(0, 0x80 << 11, 0x80 << 9, 0x80 << 6, 0x80 << 9, 0x80 << 8, 0x80 << 7);
    }
}
