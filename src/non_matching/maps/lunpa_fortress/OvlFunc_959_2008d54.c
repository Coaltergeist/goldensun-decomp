extern int L773c[][2] __asm__(".Lm959_773c");

void OvlFunc_959_2008d54(int idx) {
    int x = L773c[idx][0];
    int y = L773c[idx][1];
    __Func_80105d4(0, 0x4d, 1, 3, x, y);
    __Func_80105d4(1, 0x4d, 1, 1, x + 1, y);
    __Func_8010704(x, y - 0x2d, 1, 1, x, y - 0x2c);
    if (idx == 1)
        __Func_8010704(x, y - 0x2c, 1, 1, x, y - 0x2b);
}
