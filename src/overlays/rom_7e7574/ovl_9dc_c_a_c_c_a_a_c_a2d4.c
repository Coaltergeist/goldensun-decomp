extern void __Func_80105d4(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_959_200a2d4(void)
{
    __Func_80105d4(2, 0x56, 1, 2, 0x1b, 0x3e);
    __Func_8010704(0x1a, 0x10, 1, 1, 0x1b, 0x11);
}

/* Include the original trailing alignment in the function symbol size. */
asm(".size OvlFunc_959_200a2d4, 52");
