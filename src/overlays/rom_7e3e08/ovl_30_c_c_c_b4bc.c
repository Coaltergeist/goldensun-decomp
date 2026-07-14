extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __CutsceneWait(int duration);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_957_200b4bc(void)
{
    register int message asm("r5");
    register int arg0 asm("r0");
    register int arg1 asm("r1");

    __CutsceneStart();
    message = 0x217f;
    asm volatile("" : "+r"(message));
    arg0 = message;
    asm volatile("" : "+r"(arg0));
    __MessageID(arg0);
    arg1 = 0;
    arg0 = 8;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __Func_8092c40(arg0, arg1);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        __MessageID(message + 1);
        arg0 = 8;
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __ActorMessage(arg0, arg1);
    } else {
        __CutsceneWait(0x14);
        __MessageID(message + 2);
        arg0 = 8;
        arg1 = 0;
        asm volatile("" : "+r"(arg0), "+r"(arg1));
        __ActorMessage(arg0, arg1);
    }
    __CutsceneEnd();
}
