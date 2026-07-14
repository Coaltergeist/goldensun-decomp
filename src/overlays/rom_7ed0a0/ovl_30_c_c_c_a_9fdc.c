extern void __Func_8010704(int a0, int a1, int a2, int a3, int a4, int a5);
extern void __Func_808edac(int a0, int a1, int a2);
extern void __MapActor_SetPos(int actor, int x, int y);

void OvlFunc_964_2009fdc(void)
{
    int stack0 = 8;
    int shared = 0x31;

    __Func_8010704(0x48, 0x31, 1, 1, stack0, shared);
    __Func_8010704(0x71, 0x2b, 1, 1, shared, 0x2b);
    __Func_808edac(0x64, 0, 0);
    __Func_808edac(0x65, 0, 0);

    {
        register int x asm("r1") = 0x88;
        register int y asm("r2") = 0xc6;
        register int actor asm("r0") = 0xf;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 16;
        y <<= 18;
        __MapActor_SetPos(actor, x, y);
    }
    {
        register int x asm("r1") = 0xc6;
        register int y asm("r2") = 0xae;
        register int actor asm("r0") = 0x10;
        asm volatile("" : "+r"(x), "+r"(y), "+r"(actor));
        x <<= 18;
        y <<= 18;
        __MapActor_SetPos(actor, x, y);
    }
}
