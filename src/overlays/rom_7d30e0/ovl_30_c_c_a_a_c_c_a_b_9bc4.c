extern void __StopTask(void (*fn)(void));
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern int __GetFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3,
                           int arg4, int arg5);
extern void __SetFlag(int flag);
extern void OvlFunc_948_2009e94(void);
extern void OvlFunc_948_2009ec0(void);

void OvlFunc_948_2009bc4(void) {
    register int arg4 asm("r3");
    register int arg5 asm("r2");

    __StopTask(OvlFunc_948_2009e94);
    __MapActor_SetPos(0xe, 0, 0);
    if (__GetFlag(0x207) != 0) {
        arg4 = 0x2d;
        arg5 = 0x2b;
        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(0x3a, 0x24, 1, 1, arg4, arg5);
    } else {
        arg4 = 0x2d;
        arg5 = 0x2b;
        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(0x2e, 0x2b, 1, 1, arg4, arg5);
    }
    OvlFunc_948_2009ec0();
    __SetFlag(0x206);
}
