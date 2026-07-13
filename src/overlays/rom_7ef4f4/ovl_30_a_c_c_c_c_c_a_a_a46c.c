extern int __GetFlag(int);
extern void __Func_8010788(int, int, int, int, int, int);

void OvlFunc_965_200a46c(void)
{
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    if (__GetFlag(0x985) == 0) {
        arg4 = 0x11;
        arg5 = 0x4e;
        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010788(0x24, 0x4e, 1, 2, arg4, arg5);
    } else {
        arg4 = 0x11;
        arg5 = 0x4e;
        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010788(0x22, 0x4e, 1, 2, arg4, arg5);
    }
}
