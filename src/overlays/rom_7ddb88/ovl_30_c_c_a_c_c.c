extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlagByte(int flag, int value);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_955_20080c0(void)
{
    unsigned char *actor;
    int x;

    {
        register int arg4 asm("r3") = 0xe;
        register int arg5 asm("r2") = 0xb;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(0x64, 0xb, 0xc, 4, arg4, arg5);
    }

    actor = __MapActor_GetActor(0xc);
    x = *(int *)(actor + 8) >> 20;
    __SetFlagByte(0xd0 << 2, x);
    __Func_8010704(0x47, 0x10, 1, 1, x, 0x10);

    actor = __MapActor_GetActor(0xd);
    x = *(int *)(actor + 8) >> 20;
    __SetFlagByte(0xd2 << 2, x);
    __Func_8010704(0x47, 0x10, 1, 1, x, 0x10);

    actor = __MapActor_GetActor(0xe);
    x = *(int *)(actor + 8) >> 20;
    __SetFlagByte(0xd4 << 2, x);
    __Func_8010704(0x47, 0x10, 1, 1, x, 0x10);
}
