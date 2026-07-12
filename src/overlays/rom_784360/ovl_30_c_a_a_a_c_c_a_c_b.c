extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __SetFlag(int flag);
extern void __ActorMessage(int actor, int arg1);
extern void __CutsceneEnd(void);

void OvlFunc_884_2008634(void)
{
    register unsigned int arg0 asm("r0");
    register unsigned int arg1 asm("r1");

    __CutsceneStart();

    /* Keep the repeated flag immediate in r0; GCC 2.96 otherwise hoists it. */
    arg0 = 0x302;
    asm volatile("" : "+r"(arg0));
    if (__GetFlag(arg0)) {
        arg0 = 0x1be4;
        asm volatile("" : "+r"(arg0));
        __MessageID(arg0);
    } else {
        arg0 = 0x1be3;
        asm volatile("" : "+r"(arg0));
        __MessageID(arg0);

        arg0 = 0x302;
        asm volatile("" : "+r"(arg0));
        __SetFlag(arg0);
    }

    arg0 = 0xb;
    arg1 = 0;
    asm volatile("" : "+r"(arg0), "+r"(arg1));
    __ActorMessage(arg0, arg1);
    __CutsceneEnd();
}
