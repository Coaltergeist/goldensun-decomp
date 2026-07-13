extern const int L7764[] asm(".L7764");
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_959_2008ee0(int index)
{
    int x = L7764[index * 2];
    int y = L7764[index * 2 + 1];

    __Func_80105d4(1, 0x50, 1, 3, x, y);
    __Func_80105d4(2, 0x50, 1, 1, x + 1, y);
    __Func_8010704(x, y - 0x3f, 1, 1, x, y - 0x3e);
}
