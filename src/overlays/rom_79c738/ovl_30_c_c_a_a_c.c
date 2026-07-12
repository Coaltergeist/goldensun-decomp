extern void __CutsceneStart(void);
extern void __MapActor_Emote(int actor, int emote, int arg2);
extern void __Func_80925cc(int actor, int arg1);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __CutsceneEnd(void);
extern int __GetFlag(int flag);
extern void __ActorMessage(int actor, int arg1);
extern void __SetFlag(int flag);

void OvlFunc_909_2008150(void) {
    register unsigned int arg0 asm("r0");
    register unsigned int arg1 asm("r1");
    register unsigned int arg2 asm("r2");

    __CutsceneStart();
    arg1 = 0x81;
    asm volatile("" : "+r"(arg1));
    arg2 = 0;
    asm volatile("" : "+r"(arg2));
    arg0 = 0xe;
    asm volatile("" : "+r"(arg0));
    arg1 <<= 1;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __MapActor_Emote(arg0, arg1, arg2);

    arg1 = 2;
    asm volatile("" : "+r"(arg1));
    arg0 = 0xe;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_80925cc(arg0, arg1);

    __CutsceneWait(0x28);
    __MessageID(0x1764);

    arg0 = 0xe;
    asm volatile("" : "+r"(arg0));
    arg1 = 0;
    asm volatile("" : "+r"(arg1));
    arg2 = 0x14;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_8093040(arg0, arg1, arg2);

    arg1 = 0;
    asm volatile("" : "+r"(arg1));
    arg2 = 0;
    asm volatile("" : "+r"(arg2));
    arg0 = 0xe;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_809280c(arg0, arg1, arg2);

    __CutsceneWait(0x14);

    arg0 = 0xe;
    asm volatile("" : "+r"(arg0));
    arg1 = 0;
    asm volatile("" : "+r"(arg1));
    arg2 = 0xa;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_8093040(arg0, arg1, arg2);

    arg1 = 0xb0;
    asm volatile("" : "+r"(arg1));
    arg0 = 0xe;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg1 <<= 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    arg2 = 0xa;
    asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
    __Func_8092adc(arg0, arg1, arg2);
    __CutsceneEnd();
}

void OvlFunc_909_20081b4(void) {
    register unsigned int arg0 asm("r0");
    register unsigned int arg1 asm("r1");

    __CutsceneStart();
    arg0 = 0x1750;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg0 = 0x302;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0) != 0) {
        arg0 = 0x1768;
        asm volatile("" : "+r"(arg0));
        __MessageID(arg0);
    }
    arg1 = 0;
    asm volatile("" : "+r"(arg1));
    arg0 = 0xf;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
    arg0 = 0x302;
    asm volatile("" : "+r"(arg0));
    __SetFlag(arg0);
    __CutsceneEnd();
}
