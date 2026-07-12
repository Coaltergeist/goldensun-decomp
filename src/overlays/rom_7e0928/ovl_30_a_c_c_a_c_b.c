extern void __SetFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_956_200824c(void)
{
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __SetFlag(0x360);
    arg4 = 0x31;
    arg5 = 0x3d;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x2f, 0x3d, 1, 4, arg4, arg5);
}
