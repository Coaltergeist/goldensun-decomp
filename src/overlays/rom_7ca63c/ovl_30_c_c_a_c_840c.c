extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_80933f8();
extern void __WaitFrames(int frames);
extern unsigned char *__Func_8093554(void);
extern void __Func_800fe9c(void);
extern void __MapActor_SetPos(int, int, int);
extern void OvlFunc_944_20084b0(void);

void OvlFunc_944_200840c(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");
    register int arg3 asm("r3");
    unsigned char *actor;

    __CutsceneStart();
    arg0 = 1;
    arg1 = 1;
    arg2 = 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 = -arg1;
    arg2 = -arg2;
    arg3 = 0;
    arg0 = -arg0;
    __Func_80933f8(arg0, arg1, arg2, arg3);
    __WaitFrames(1);

    actor = __Func_8093554();
    arg3 = 0;
    asm volatile("" : "+r"(arg3), "+r"(actor));
    actor[0x55] = arg3;

    arg1 = 0x80;
    arg0 = 0xa4;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg1 <<= 15;
    arg2 = 0x1410000;
    arg0 <<= 16;
    __Func_80933f8(arg0, arg1, arg2);

    __Func_800fe9c();
    __WaitFrames(1);
    __MapActor_SetPos(0, 0, 0);
    OvlFunc_944_20084b0();
    __CutsceneEnd();
}
