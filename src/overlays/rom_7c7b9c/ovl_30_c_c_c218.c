extern void __Func_80933f8(int, int, int, int);
extern void __Func_800fe9c(void);
extern void __MapActor_SetPos(int, int, int);
extern unsigned char *__MapActor_GetActor(int actor_id);
extern void __WaitFrames(int frames);

void OvlFunc_943_200c218(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");
    unsigned char *actor;

    arg0 = 0xe8;
    arg1 = 1;
    arg2 = 0xa9;
    arg3 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2), "+r"(arg3));
    arg0 <<= 16;
    arg1 = -arg1;
    arg2 <<= 18;
    __Func_80933f8(arg0, arg1, arg2, arg3);
    __Func_800fe9c();

    arg1 = 0xe8;
    arg2 = 0xa9;
    asm volatile("" : "+r"(arg1), "+r"(arg2));
    arg1 <<= 16;
    arg2 <<= 18;
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __MapActor_SetPos(arg0, arg1, arg2);

    actor = __MapActor_GetActor(0);
    arg3 = 0x80;
    asm volatile("" : "+r"(arg3));
    arg3 <<= 7;
    *(unsigned short *)(actor + 6) = arg3;
    __WaitFrames(1);
}
