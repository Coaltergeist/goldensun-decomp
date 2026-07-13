extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __CutsceneWait(int frames);

void OvlFunc_930_2008ff0(void)
{
    register int stack0 __asm__("r3") = 1;
    register int stack1 __asm__("r2") = 2;

    __asm__ volatile ("" : "+r" (stack0), "+r" (stack1));
    __CopyMapTiles(5, 0x1c, 5, 0xd, stack0, stack1);
    stack0 = 5;
    stack1 = 0xd;
    __asm__ volatile ("" : "+r" (stack0), "+r" (stack1));
    __Func_8010704(5, 0x1c, 1, 2, stack0, stack1);
    __CutsceneWait(1);
}
