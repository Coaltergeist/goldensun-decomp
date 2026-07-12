extern void __Func_80105d4(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_935_2008410(void) {
    {
        register int arg4 asm("r3") = 0x50;
        register int arg5 asm("r2") = 9;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_80105d4(0x5a, 9, 2, 3, arg4, arg5);
    }
    __Func_80105d4(0x1b, 10, 1, 2, 0x11, 10);
    __Func_8010704(0x11, 10, 1, 1, 0x11, 11);
}
