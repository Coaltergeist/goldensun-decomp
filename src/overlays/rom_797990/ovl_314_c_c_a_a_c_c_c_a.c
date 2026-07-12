extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);

void OvlFunc_901_2008d24(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __SetFlag(0x200);
    arg4 = 0x17;
    arg5 = 0x1a;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x37, 0x1a, 4, 2, arg4, arg5);
}

void OvlFunc_901_2008d4c(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __ClearFlag(0x200);
    arg4 = 0x17;
    arg5 = 0x1a;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x17, 0x17, 4, 2, arg4, arg5);
}
