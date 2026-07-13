extern void __CopyMapTiles(int x, int y, int width, int height,
                           int destination, int layer);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_943_200b9b8(void)
{
    __CopyMapTiles(0x42, 0x3d, 0x40, 0x28, 5, 4);
    __Func_8010704(0, 0, 5, 4, 5, 0x27);
}

__asm__(".align 2, 0\n.size OvlFunc_943_200b9b8, . - OvlFunc_943_200b9b8");
