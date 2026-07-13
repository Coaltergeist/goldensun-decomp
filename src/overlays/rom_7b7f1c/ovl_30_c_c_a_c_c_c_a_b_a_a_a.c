extern void __Func_8010704(int a, int b, int c, int d, int e, int f);
extern void __Func_808edac(int actor, int x, int y);
extern void __MapActor_SetPos(int actor, int x, int y);

void OvlFunc_930_2008870(void)
{
    register int fifth __asm__("r3") = 0x15;
    register int sixth __asm__("r2") = 9;
    register int actor __asm__("r0");
    register int x __asm__("r1");
    register int y __asm__("r2");

    __asm__ volatile ("" : "+r" (fifth), "+r" (sixth));
    __Func_8010704(0x55, 9, 1, 1, fifth, sixth);
    __Func_808edac(0x64, 0, 0);
    x = 0xac;
    y = 0x98;
    actor = 0xe;
    __asm__ volatile ("" : : "r" (x), "r" (y), "r" (actor));
    x <<= 17;
    y <<= 16;
    __MapActor_SetPos(actor, x, y);
}

__asm__(".align 2, 0\n.size OvlFunc_930_2008870, . - OvlFunc_930_2008870");
