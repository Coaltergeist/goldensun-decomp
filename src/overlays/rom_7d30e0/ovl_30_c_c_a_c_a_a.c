extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);

void OvlFunc_948_2009c6c(void)
{
    __Func_8010704(0x26, 0x38, 1, 1, 0x26, 0x37);
    __Func_8010704(0x2a, 0x38, 1, 1, 0x2a, 0x37);
}

/* Include the original trailing alignment in the function symbol size. */
