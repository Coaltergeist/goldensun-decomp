extern void __Func_80105d4(int arg0, int arg1, int arg2, int arg3);
extern void __MapActor_SetPos(int actor, int x, int y);

void OvlFunc_948_20091d8(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");
    register volatile int *stack asm("sp");
    volatile int stackArgs[2];

    arg3 = 0x19;
    arg2 = 0x30;
    asm volatile("" : "+r"(arg3), "+r"(arg2));
    stack[0] = arg3;
    stack[1] = arg2;
    arg3 = 2;
    asm volatile("" : "+r"(arg3));
    arg0 = 0x18;
    arg1 = 0x30;
    arg2 = 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_80105d4(arg0, arg1, arg2, arg3);

    arg1 = 0x80;
    arg2 = 0x80;
    arg0 = 0xc;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 12;
    arg2 <<= 12;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __MapActor_SetPos(arg0, arg1, arg2);
}
