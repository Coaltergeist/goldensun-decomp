/* Exact structural-template match for the two small actor-map wrappers from
 * the middle of the original ovl_30_c_c_a_c_a translation unit. */
extern unsigned char *__MapActor_GetActor(int actor);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);

void OvlFunc_948_2009ca0(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");
    unsigned char *actor;

    arg4 = 0x26;
    arg5 = 0x37;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x36, 1, 1, arg4, arg5);
    actor = __MapActor_GetActor(0xa);
    actor[0x55] = 0;
}

void OvlFunc_948_2009ccc(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");
    unsigned char *actor;

    arg4 = 0x2a;
    arg5 = 0x37;
    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x28, 0x36, 1, 1, arg4, arg5);
    actor = __MapActor_GetActor(0xa);
    actor[0x55] = 0;
}
