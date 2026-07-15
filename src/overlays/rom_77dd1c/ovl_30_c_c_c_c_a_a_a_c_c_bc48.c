extern void __WaitFrames(int frames);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_80118c0(int actor);
extern void __Func_80118a8(int actor);
extern void __Func_8091200(int value, int mode);
extern void __Func_8091254(int frames);

void OvlFunc_882_200bc48(void)
{
    __WaitFrames(0x14);
    {
        register int flag asm("r0");
        asm volatile("mov r0, #0xb3\n\tlsl r0, #1" : "=r"(flag));
        __SetFlag(flag);
    }
    __Func_80118c0(0);
    __Func_80118c0(1);
    __Func_80118c0(2);
    __Func_80118c0(3);
    __Func_80118c0(4);
    __Func_80118c0(5);
    __Func_8091200(0x10003, 1);
    __Func_8091200(0x10000, 2);
    __Func_8091254(1);
    __WaitFrames(0x78);
    __Func_8091200(0, 0);
    __Func_8091254(0x3c);
    __WaitFrames(0x3c);
    {
        register int flag asm("r0");
        asm volatile("mov r0, #0xb3\n\tlsl r0, #1" : "=r"(flag));
        __ClearFlag(flag);
    }
    __Func_80118a8(0);
    __Func_80118a8(1);
    __Func_80118a8(2);
    __Func_80118a8(3);
    __Func_80118a8(4);
    __Func_80118a8(5);
}
