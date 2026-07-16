/* These two map setup helpers copy a rectangular tile block and then update
 * the corresponding tilemap region.  Fixed registers preserve the original
 * compiler's paired loads for the two stack arguments. */
extern void __CopyMapTiles(int sourceX, int sourceY, int width, int height,
                           int destinationX, int destinationY);
extern void __Func_8010704(int sourceX, int sourceY, int width, int height,
                           int destinationX, int destinationY);

void OvlFunc_920_2008188(void)
{
    {
        register int destinationX asm("r3") = 1;
        register int destinationY asm("r2") = 3;

        asm volatile("" : "+r"(destinationX), "+r"(destinationY));
        __CopyMapTiles(0x6f, 0x25, 0x61, 0x15,
                       destinationX, destinationY);
    }
    {
        register int destinationX asm("r3") = 0x20;
        register int destinationY asm("r2") = 0x18;

        asm volatile("" : "+r"(destinationX), "+r"(destinationY));
        __Func_8010704(0x2e, 0x26, 3, 2,
                       destinationX, destinationY);
    }
}

void OvlFunc_920_20081bc(void)
{
    {
        register int destinationX asm("r3") = 1;
        register int destinationY asm("r2") = 3;

        asm volatile("" : "+r"(destinationX), "+r"(destinationY));
        __CopyMapTiles(0x5f, 0x15, 0x61, 0x15,
                       destinationX, destinationY);
    }
    {
        register int destinationX asm("r3") = 0x20;
        register int destinationY asm("r2") = 0x19;

        asm volatile("" : "+r"(destinationX), "+r"(destinationY));
        __Func_8010704(0x2e, 0x26, 3, 1,
                       destinationX, destinationY);
    }
}
