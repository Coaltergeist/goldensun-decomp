extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __PlaySound(int sound);
extern void OvlFunc_935_2008170(void);
extern int OvlFunc_935_2008334(void);
extern void OvlFunc_935_2008398(void);
extern void __Func_80105d4(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_935_2008368(void)
{
    register int flag asm("r0");

    flag = 0x9a9;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) == 0) {
        OvlFunc_935_2008170();
        if (OvlFunc_935_2008334() != 0) {
            flag = 0x9a9;
            asm volatile("" : "+r"(flag));
            __SetFlag(flag);
            __PlaySound(0x50);
            OvlFunc_935_2008398();
        }
    }
}

void OvlFunc_935_2008398(void)
{
    {
        register int arg4 asm("r3") = 0x50;
        register int arg5 asm("r2") = 0x32;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_80105d4(0x57, 0x32, 2, 4, arg4, arg5);
    }
    __Func_80105d4(0x17, 0x34, 1, 2, 0x10, 0x34);
    __Func_8010704(0x10, 0x34, 1, 1, 0x10, 0x35);
}

void OvlFunc_935_20083e0(void)
{
    register int flag asm("r0");

    flag = 0x9a9;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) == 0 && OvlFunc_935_2008334() != 0) {
        flag = 0x9a9;
        asm volatile("" : "+r"(flag));
        __SetFlag(flag);
        __PlaySound(0x50);
        OvlFunc_935_2008398();
    }
}
