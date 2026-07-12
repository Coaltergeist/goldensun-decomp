extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern int __GetFlag(int flag);
extern void __ActorMessage(int actor, int message);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_907_2008240(void) {
    register int flag asm("r0");

    __CutsceneStart();
    __MessageID(0x13ae);
    flag = 0x301;
    asm volatile("" : "+r"(flag));
    if (__GetFlag(flag) != 0) {
        unsigned char *base = *(unsigned char **)iwram_3001ebc;
        unsigned short *counter = (unsigned short *)(base + 0x1d8);

        (*counter)++;
    }
    {
        register int message asm("r1") = 0;
        register int actor asm("r0") = 9;

        asm volatile("" : : "r"(message), "r"(actor));
        __ActorMessage(actor, message);
    }
    flag = 0x301;
    asm volatile("" : "+r"(flag));
    __SetFlag(flag);
    __CutsceneEnd();
}
