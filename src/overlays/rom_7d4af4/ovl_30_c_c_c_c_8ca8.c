typedef unsigned char u8;
typedef int s32;

extern u8 *__MapActor_GetActor(int actorId);
extern void __Actor_SetSpriteFlags(u8 *actor, int flags);
extern void __MapActor_SetAnim(int actor, int animation);
extern void Func_8010704_4(int, int, int, int) asm("__Func_8010704");
extern void __SetFlag(int flag);

void OvlFunc_949_2008ca8(void)
{
    u8 *actor = __MapActor_GetActor(9);

    if (actor != 0) {
        register u8 *p1 asm("r1");
        register int v1 asm("r2");
        register u8 *p2 asm("r2");
        register int v2 asm("r3");

        __Actor_SetSpriteFlags(actor, 0);
        p1 = actor;
        v1 = 2;
        asm volatile("" : "+r"(p1), "+r"(v1));
        p1 += 0x23;
        *p1 = v1;
        p2 = actor;
        asm volatile("" : "+r"(p2));
        v2 = 0;
        asm volatile("" : "+r"(v2));
        p2 += 0x55;
        *p2 = v2;
    }
    __MapActor_SetAnim(9, 5);
    {
        volatile int stack_arg0;
        volatile int stack_arg1;
        register int arg3 asm("r3");
        register int arg2 asm("r2");
        register int arg1 asm("r1");
        register int arg0 asm("r0");

        arg3 = 0x22;
        arg2 = 0x10;
        asm volatile("" : "+r"(arg3), "+r"(arg2));
        stack_arg1 = arg3;
        stack_arg0 = arg2;
        arg1 = 0x10;
        arg2 = 1;
        arg3 = 1;
        arg0 = 0x24;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
        Func_8010704_4(arg0, arg1, arg2, arg3);
    }
    __SetFlag(0x201);
}
