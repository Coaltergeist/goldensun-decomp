extern const int L7754[] asm(".L7754");
extern void __Func_80105d4(int, int, int, int, int, int);

void OvlFunc_959_2008e30(int index)
{
    int x = L7754[index * 2];
    int y = L7754[index * 2 + 1];

    __Func_80105d4(0x37, 0x79, 1, 3, x, y);
    __Func_80105d4(0x38, 0x79, 1, 1, x + 1, y);
    __Func_80105d4(x, y - 0x3f, 1, 1, x, y - 0x3e);
}
