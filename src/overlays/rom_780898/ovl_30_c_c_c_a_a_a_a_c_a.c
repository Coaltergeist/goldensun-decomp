extern void __CutsceneStart(void);
extern void __Func_8012330(int arg0, int arg1, int arg2);
extern void __WaitFrames(int frames);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_883_2008cd0(void) {
    __CutsceneStart();
    {
        register int arg0 asm("r0") = 0xc0;
        register int arg1 asm("r1") = 0xc0;
        register int arg2 asm("r2") = 0x80;

        asm volatile("" : "+r"(arg0));
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg1 <<= 10;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg2 <<= 9;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg0 <<= 10;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __Func_8012330(arg0, arg1, arg2);
    }
    __WaitFrames(10);
    {
        register int arg0 asm("r0");
        register int arg1 asm("r1");
        register int arg2 asm("r2");

        arg0 = 1;
        asm volatile("" : "+r"(arg0));
        arg1 = 1;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg1 = -arg1;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        arg2 = 0xe666;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        arg0 = -arg0;
        asm volatile("" : "+r"(arg0), "+r"(arg1), "+r"(arg2));
        __Func_8012330(arg0, arg1, arg2);
    }
    __MessageID(0x1c9a);
    __Func_8093040(0x11, 0, 0x14);
    __Func_809280c(0x11, 0, 0x14);
    __ActorMessage(0x11, 0);
    __CutsceneEnd();
}
