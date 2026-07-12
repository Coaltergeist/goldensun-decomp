extern unsigned char *__MapActor_GetActor(int actor);
extern void __Actor_SetSpriteFlags(void *actor, int flags);
extern void __Func_8012078(int, int, int, int);
extern void __SetFlag(int flag);
extern void Func_8010704_4(int, int, int, int) asm("__Func_8010704");
extern void __Func_808edac(int, int, int);

void OvlFunc_949_2008224(void) {
    unsigned char *actor = __MapActor_GetActor(8);
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");

    if (actor != 0)
        actor[0x59] = 0;
    actor = __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 0);

    arg1 = 0x88;
    arg2 = 0x90;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 18;
    arg2 <<= 17;
    arg3 = 0xfd;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    __Func_8012078(arg0, arg1, arg2, arg3);
    arg0 = 0x80;
    arg0 <<= 2;
    asm volatile("" : "+r"(arg0));
    __SetFlag(arg0);
}

void OvlFunc_949_2008260(void) {
    volatile int stack_arg0;
    volatile int stack_arg1;
    register int arg3 asm("r3") = 3;
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    arg2 = 0x1a;
    asm volatile("" : "+r"(arg3), "+r"(arg2));
    stack_arg1 = arg3;
    stack_arg0 = arg2;
    arg3 = 1;
    asm volatile("" : "+r"(arg3));
    arg0 = 3;
    arg1 = 0x20;
    arg2 = 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    Func_8010704_4(arg0, arg1, arg2, arg3);
    arg1 = 0xe0;
    arg2 = 0xd4;
    arg0 = 0x66;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 14;
    arg2 <<= 17;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_808edac(arg0, arg1, arg2);
}

void OvlFunc_949_200828c(void) {
    volatile int stack_arg0;
    volatile int stack_arg1;
    register int arg3 asm("r3") = 3;
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    arg2 = 0x1a;
    asm volatile("" : "+r"(arg3), "+r"(arg2));
    stack_arg1 = arg3;
    stack_arg0 = arg2;
    arg3 = 1;
    asm volatile("" : "+r"(arg3));
    arg0 = 2;
    arg1 = 0x19;
    arg2 = 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    Func_8010704_4(arg0, arg1, arg2, arg3);
    arg1 = 1;
    arg2 = 1;
    arg0 = 0x66;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 = -arg1;
    arg2 = -arg2;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_808edac(arg0, arg1, arg2);
}
