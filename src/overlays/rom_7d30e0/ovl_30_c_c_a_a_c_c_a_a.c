/* Exact structural-template match for the two small actor-map wrappers that
 * begin the original ovl_30_c_c_a_a_c_c_a translation unit. */
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);

void OvlFunc_948_2009a70(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");
    unsigned char *actor;

    arg4 = 0x29;
    arg5 = 0x2a;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x2c, 0x2a, 1, 1, arg4, arg5);
    actor = __MapActor_GetActor(8);
    actor[0x23] = 2;
}

void OvlFunc_948_2009a9c(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");
    unsigned char *actor;

    arg4 = 0x28;
    arg5 = 0x2a;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x27, 0x2a, 1, 1, arg4, arg5);
    actor = __MapActor_GetActor(8);
    actor[0x23] = 2;
}
