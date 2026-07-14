extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8093054(int actor, int message);
extern void __CutsceneEnd(void);
extern int OvlFunc_931_2008338(void);
extern void __Func_80b0278(int actorId, int target);
extern void __ActorMessage(int actor, int message);

void OvlFunc_931_2008360(void)
{
    if (__GetFlag(0x242) == 0) {
        __CutsceneStart();
        __MessageID(0x18e7);
        {
            register int message asm("r1") = 0;
            register int actor asm("r0") = 0xf;
            asm volatile("" : "+r"(message), "+r"(actor));
            __Func_8093054(actor, message);
        }
        __CutsceneEnd();
    } else if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x13, 0xf);
    } else {
        __CutsceneStart();
        __MessageID(0x18ea);
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1941);
        }
        __ActorMessage(0xf, 0);
        __CutsceneEnd();
    }
}
