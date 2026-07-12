extern unsigned char *__MapActor_GetActor(int actor);
extern int __GetFlag(int flag);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern void __Func_8093fa0(void);
extern void __Func_8093e28(void);
extern void __Func_8093c00(void);
extern void OvlFunc_948_2009b60(void);

void OvlFunc_948_20098e0(void)
{
    register unsigned char *actor asm("r0");
    register unsigned int r2 asm("r2");
    register unsigned int state asm("r3");

    actor = __MapActor_GetActor(0);
    r2 = 0xc0;
    state = *(unsigned short *)(actor + 6);
    r2 <<= 8;
    if (state == r2) {
        if (__GetFlag(0x206) != 0) {
            register int arg4 asm("r3") = 0x2d;
            register int arg5 asm("r2") = 0x2b;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x2e, 0x2b, 1, 1, arg4, arg5);
        }
        __ClearFlag(0x207);
        __Func_8093fa0();
    } else {
        r2 = 0x80;
        r2 <<= 7;
        if (state == r2) {
            __Func_8093e28();
        } else if (state == 0) {
            if (__GetFlag(0x206) != 0) {
                register int arg4 asm("r3") = 0x2d;
                register int arg5 asm("r2") = 0x2b;

                asm volatile("" : "+r"(arg4), "+r"(arg5));
                __Func_8010704(0x3a, 0x24, 1, 1, arg4, arg5);
            }
            __SetFlag(0x207);
            __Func_8093c00();
        } else {
            r2 = 0x80;
            r2 <<= 8;
            if (state == r2) {
                if (*(unsigned int *)(actor + 0xc) == 0)
                    OvlFunc_948_2009b60();
                else
                    __Func_8093c00();
            }
        }
    }
}
