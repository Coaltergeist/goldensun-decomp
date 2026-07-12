extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);

void OvlFunc_948_2009da0(void)
{
    __Func_8010704(0x30, 0x37, 1, 1, 0x31, 0x37);
    __Func_8010704(0x30, 0x37, 1, 1, 0x32, 0x37);
    __Func_8010704(0x30, 0x37, 1, 1, 0x33, 0x37);
    __Func_8010704(0x30, 0x37, 1, 1, 0x34, 0x37);
}
asm(".align 2, 0\n.size OvlFunc_948_2009da0, . - OvlFunc_948_2009da0");
