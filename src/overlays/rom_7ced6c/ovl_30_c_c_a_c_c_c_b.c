extern void __SetFlag(int flag);
extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);

void OvlFunc_946_2009624(void)
{
    register int sourceX asm("r3");
    register int sourceY asm("r2");

    __SetFlag(0x8c4);
    sourceX = 8;
    sourceY = 0x15;
    asm volatile("" : "+r"(sourceX), "+r"(sourceY));
    __Func_8010704(0, 0, 1, 1, sourceX, sourceY);
}
