extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlagByte(int flag, int value);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_956_200858c(void) {
    unsigned char *actor = __MapActor_GetActor(0xd);
    register int x asm("r5");
    register int flag asm("r0");
    register int value asm("r1");

    x = *(int *)(actor + 8);
    asm volatile("" : "+r"(x));
    flag = 0xdc;
    asm volatile("" : "+r"(flag), "+r"(x));
    x >>= 20;
    asm volatile("" : "+r"(flag), "+r"(x));
    value = x;
    asm volatile("" : "+r"(flag), "+r"(value), "+r"(x));
    flag <<= 2;
    asm volatile("" : "+r"(flag), "+r"(value), "+r"(x));
    __SetFlagByte(flag, value);
    {
        register int lastArg asm("r6");

        __Func_8010704(0x12, 10, 3, 1, 0x12, lastArg = 0xb);
        __Func_8010704(0x11, 0xb, 1, 1, x, lastArg);
    }
}
