extern unsigned char *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);

void OvlFunc_955_200805c(void) {
    unsigned char *actor = __MapActor_GetActor(0xb);
    int x = *(int *)(actor + 8) >> 20;

    if (x == 0x24) {
        __SetFlag(0x335);
        {
            register int arg4 asm("r3") = 0x23;
            register int arg5 asm("r2") = 0x4d;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x23, 0x4e, 1, 1, arg4, arg5);
        }
    } else {
        __ClearFlag(0x335);
        {
            register int arg4 asm("r3") = 0x23;
            register int arg5 asm("r2") = 0x4d;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x22, 0x4d, 1, 1, arg4, arg5);
        }
    }
}
