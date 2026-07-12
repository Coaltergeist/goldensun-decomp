extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int arg1);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __Func_809259c(int actor, int arg1);
extern void __MapActor_Surprise(int actor, int arg1);
extern void __CutsceneWait(int frames);
extern void __SetFlag(int flag);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __CutsceneEnd(void);

void OvlFunc_908_200835c(void) {
    register int arg0 asm("r0");
    register int arg1 asm("r1");
    register int arg2 asm("r2");

    __CutsceneStart();
    arg0 = 0xc0;
    arg0 <<= 2;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0) == 0) {
        __MessageID(0x16ff);
        __ActorMessage(0x15, 0);
        arg1 = 0x80;
        arg2 = 0x14;
        asm volatile("" : "+r"(arg1), "+r"(arg2));
        arg0 = 0x15;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 8;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __Func_8092adc(arg0, arg1, arg2);
        __ActorMessage(0x15, 0);
        __Func_809259c(0x16, 2);
        __MapActor_Surprise(0x16, 0x81 << 1);
        __CutsceneWait(0x3c);
        arg0 = 0x16;
        asm volatile("" : "+r"(arg0));
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __ActorMessage(arg0, arg1);
        __CutsceneWait(0xa);
        arg0 = 0xc0;
        arg0 <<= 2;
        asm volatile("" : "+r"(arg0));
        __SetFlag(arg0);
    }
    __Func_809280c(0x15, 0, 0);
    __MessageID(0x1702);
    __ActorMessage(0x15, 0);
    arg1 = 0xc0;
    asm volatile("" : "+r"(arg1));
    arg0 = 0x15;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg1 <<= 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg2 = 0xa;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_8092adc(arg0, arg1, arg2);
    __CutsceneEnd();
}
