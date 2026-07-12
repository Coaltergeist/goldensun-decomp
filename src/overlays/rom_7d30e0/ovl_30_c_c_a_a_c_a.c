extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern unsigned char *__MapActor_GetActor(int actor);

void OvlFunc_948_20099e8(void) {
    __Func_8010704(0x39, 0x2a, 1, 1, 0x28, 0x2a);
    __Func_8010704(0x39, 0x2a, 1, 1, 0x29, 0x2a);
    __Func_8010704(0x3a, 0x2a, 1, 1, 0x2a, 0x2a);
    __Func_8010704(0x3e, 0x25, 3, 1, 0x25, 0x2a);
    *(__MapActor_GetActor(8) + 0x55) = 1;
}
