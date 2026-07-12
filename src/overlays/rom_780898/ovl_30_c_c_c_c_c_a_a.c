extern void __Func_8010704(int arg0, int arg1, int arg2, int arg3, int arg4, int arg5);
extern int __GetFlag(int flag);
extern unsigned char *__MapActor_GetActor(int actor);
extern void __ClearFlag(int flag);
extern void __SetFlag(int flag);
extern void OvlFunc_883_20080c4(void);
void OvlFunc_883_200d950(void);

void OvlFunc_883_200d928(void)
{
    register int arg4 asm("r3") = 0x16;
    register int arg5 asm("r2") = 0x24;

    asm volatile("" : "+r"(arg4), "+r"(arg5));
    __Func_8010704(0x11, 0, 3, 1, arg4, arg5);
    OvlFunc_883_20080c4();
    OvlFunc_883_200d950();
}

void OvlFunc_883_200d950(void)
{
    unsigned char *actor;
    int x;
    {
        register int arg4 asm("r3") = 0x16;
        register int arg5 asm("r2") = 0x24;

        asm volatile("" : "+r"(arg4), "+r"(arg5));
        __Func_8010704(0x11, 0, 3, 1, arg4, arg5);
    }

    {
        register int actorId asm("r0");

        if (__GetFlag(0x87a) != 0) {
            actorId = 0x15;
            asm volatile("" : "+r"(actorId));
        } else {
            actorId = 0x14;
            asm volatile("" : "+r"(actorId));
        }
        actor = __MapActor_GetActor(actorId);
    }
    if (actor != 0) {
        {
            register int flag asm("r0") = 0xc5;

            flag <<= 2;
            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x315;

            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }
        {
            register int flag asm("r0") = 0x316;

            asm volatile("" : "+r"(flag));
            __ClearFlag(flag);
        }

        x = *(int *)(actor + 8) >> 20;
        if (x == 0x16) {
            __Func_8010704(0x11, 1, 1, 1, x, 0x24);
            {
                register int flag asm("r0") = 0xc5;

                flag <<= 2;
                asm volatile("" : "+r"(flag));
                __SetFlag(flag);
            }
        } else if (x == 0x17) {
            __Func_8010704(0x11, 1, 1, 1, x, 0x24);
            {
                register int flag asm("r0") = 0x315;

                asm volatile("" : "+r"(flag));
                __SetFlag(flag);
            }
        } else {
            register int arg4 asm("r3") = 0x18;
            register int arg5 asm("r2") = 0x24;

            asm volatile("" : "+r"(arg4), "+r"(arg5));
            __Func_8010704(0x11, 1, 1, 1, arg4, arg5);
            {
                register int flag asm("r0") = 0x316;

                asm volatile("" : "+r"(flag));
                __SetFlag(flag);
            }
        }
    }
}
