extern void __Func_8010704(int x, int y, int width, int height,
                           int sourceX, int sourceY);

void OvlFunc_920_2008148(void)
{
    register int sourceX asm("r3") = 0x15;
    register int sourceY asm("r2") = 0xe;

    /* GCC must load both stack arguments before storing either one. */
    asm volatile("" : "+r"(sourceX), "+r"(sourceY));
    __Func_8010704(1, 0, 1, 1, sourceX, sourceY);
}
asm(".align 2, 0\n.size OvlFunc_920_2008148, . - OvlFunc_920_2008148");

void OvlFunc_920_2008168(void)
{
    register int sourceX asm("r3") = 0x15;
    register int sourceY asm("r2") = 0xe;

    /* GCC must load both stack arguments before storing either one. */
    asm volatile("" : "+r"(sourceX), "+r"(sourceY));
    __Func_8010704(0, 0, 1, 1, sourceX, sourceY);
}
asm(".align 2, 0\n.size OvlFunc_920_2008168, . - OvlFunc_920_2008168");
