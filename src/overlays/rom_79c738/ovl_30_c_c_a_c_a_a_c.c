extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern int __GetFlag(int flag);
extern void __ActorMessage(int actor, int message);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_909_200828c(void) {
    register int flag asm("r0");

    __CutsceneStart();
    __MessageID(0x1756);
    flag = 0x303;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) != 0)
        __MessageID(0x176c);
    {
        register int message asm("r1") = 0;
        register int actor asm("r0") = 0xf;

        asm volatile("" : : "r"(message), "r"(actor));
        __ActorMessage(actor, message);
    }
    flag = 0x303;
    asm volatile("" : "+r"(flag));
    __SetFlag(flag);
    __CutsceneEnd();
}
