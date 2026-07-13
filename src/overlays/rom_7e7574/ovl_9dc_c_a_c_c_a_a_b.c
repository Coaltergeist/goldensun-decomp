extern void __Func_80105d4(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_959_200a26c(void)
{
    __Func_80105d4(2, 0x52, 1, 2, 0x15, 0x51);
    __Func_8010704(0x15, 0x20, 1, 1, 0x15, 0x22);
}

void OvlFunc_959_200a2a0(void)
{
    __Func_80105d4(2, 0x54, 1, 2, 6, 0x37);
    __Func_8010704(5, 9, 1, 1, 6, 0xa);
}

/* Include the original trailing alignment in the function symbol sizes. */
asm(".size OvlFunc_959_200a26c, 52");
asm(".size OvlFunc_959_200a2a0, 52");
