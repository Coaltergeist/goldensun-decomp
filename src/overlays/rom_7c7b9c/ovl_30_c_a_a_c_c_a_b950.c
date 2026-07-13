extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_943_200b950(void)
{
    register int one asm("r5") = 1;
    register int five asm("r6") = 5;
    register int stack4 asm("r3");
    register int stack5 asm("r2");

    __CopyMapTiles(0x4e, 0x27, 0x4e, 0x28, five, one);
    __CopyMapTiles(0x4e, 0x27, 0x4e, 0x29, five, one);
    __CopyMapTiles(0x4e, 0x27, 0x4f, 0x2a, 4, one);
    __CopyMapTiles(0x4e, 0x27, 0x52, 0x2b, one, one);
    stack4 = 0x11;
    stack5 = 0x28;
    asm volatile("" : "+r"(stack4), "+r"(stack5));
    __Func_8010704(0x11, 0x26, 5, 2, stack4, stack5);
}
