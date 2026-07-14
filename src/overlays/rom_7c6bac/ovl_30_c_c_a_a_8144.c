extern void __CutsceneStart(void);
extern void __SetFlag(int flag);
extern void __Func_80921c4(int actor, int x, int y);
extern void __MapActor_SetSpeed(int actor, int x, int y);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __CutsceneEnd(void);

void OvlFunc_942_2008144(void)
{
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __CutsceneStart();
    __SetFlag(0x8aa);

    arg1 = 0xc4;
    arg2 = 0x94;
    asm volatile("" : "+r"(arg1), "+r"(arg2));
    arg0 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 1;
    arg2 <<= 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_80921c4(arg0, arg1, arg2);

    arg0 = 8;
    asm volatile("" : "+r"(arg0));
    arg1 = 0x13333;
    arg2 = 0x9999;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __MapActor_SetSpeed(arg0, arg1, arg2);

    arg1 = 0xcc;
    arg2 = 0x94;
    asm volatile("" : "+r"(arg1), "+r"(arg2));
    arg0 = 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    arg1 <<= 1;
    arg2 <<= 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_80921c4(arg0, arg1, arg2);

    arg1 = 0x80;
    asm volatile("" : "+r"(arg1));
    arg1 <<= 8;
    asm volatile("" : "+r"(arg1));
    arg2 = 0;
    asm volatile("" : "+r"(arg1), "+r"(arg2));
    arg0 = 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_8092adc(arg0, arg1, arg2);

    __CutsceneWait(20);
    __CutsceneEnd();
}
