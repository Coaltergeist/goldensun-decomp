extern const int L7714[] asm(".L7714");
extern void __Func_80105d4(int, int, int, int, int, int);

void OvlFunc_959_2008c90(int index)
{
    int x = L7714[index * 2];
    int y = L7714[index * 2 + 1];

    __Func_80105d4(0, 0x4d, 1, 3, x, y);
    __Func_80105d4(1, 0x4d, 1, 1, x + 1, y);
    __Func_80105d4(x, y - 0x30, 1, 1, x, y - 0x2e);
}
