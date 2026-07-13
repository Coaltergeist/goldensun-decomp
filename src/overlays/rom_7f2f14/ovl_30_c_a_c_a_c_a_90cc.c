extern void __SetFlag(int flag);
extern void __Func_8010704(int source_x, int source_y, int width, int height,
                           int destination_x, int destination_y);
extern void __CopyMapTiles(int source_x, int source_y, int destination_x,
                           int destination_y, int width, int height);

void OvlFunc_968_20090cc(void)
{
    __SetFlag(0x161);

    {
        register int destination_x asm("r3") = 0x17;
        register int destination_y asm("r2") = 8;

        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        __Func_8010704(0x24, 8, 1, 3, destination_x, destination_y);
    }
    {
        register int height asm("r5") = 3;
        register int width asm("r6") = 1;

        asm volatile("" : "+r"(height), "+r"(width));
        __CopyMapTiles(0x24, 8, 0x17, 8, width, height);
        __CopyMapTiles(0x64, 8, 0x57, 8, width, height);

        {
            register int destination_x asm("r3") = 0x2e;
            register int destination_y asm("r2") = 0x37;

            asm volatile("" : "+r"(destination_x), "+r"(destination_y));
            __Func_8010704(0x35, 0x37, 3, 3,
                           destination_x, destination_y);
        }
        __CopyMapTiles(0x35, 0x37, 0x2e, 0x37, height, height);
        __CopyMapTiles(0x75, 0x37, 0x6e, 0x37, height, height);
    }
}
