extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);

void OvlFunc_882_200810c(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __SetFlag(0x210);
    arg4 = 0xa;
    arg5 = 0x54;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x54, 7, 4, arg4, arg5);
}

void OvlFunc_882_2008134(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __ClearFlag(0x210);
    arg4 = 0xa;
    arg5 = 0x54;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x59, 7, 4, arg4, arg5);
}
