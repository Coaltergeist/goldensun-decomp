extern int __GetFlag(int);
extern void __WaitFrames(int);
extern void OvlFunc_918_2008918(void);
extern void __Func_80105d4(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);

void OvlFunc_918_2008f58(int initialize)
{
    if (initialize != 0 && __GetFlag(0x109) == 0)
        OvlFunc_918_2008918();

    __WaitFrames(1);
    if (__GetFlag(0x844) != 0) {
        __Func_80105d4(0x79, 0x22, 3, 1, 0x5d, 0x0a);
        __Func_80105d4(0x2e, 0x26, 1, 1, 0x1e, 0x2b);
        __Func_8010704(0, 0, 1, 2, 0x1e, 9);
        __Func_8010704(0x1a, 3, 1, 2, 0x0a, 8);
        __Func_80105d4(0x1a, 0x23, 1, 4, 0x0a, 0x28);
    } else {
        register int stack4 asm("r3") = 0x0a;
        register int stack5 asm("r2") = 8;
        asm volatile("" : "+r"(stack4), "+r"(stack5));
        __Func_8010704(0x0b, 8, 1, 2, stack4, stack5);
    }
}
