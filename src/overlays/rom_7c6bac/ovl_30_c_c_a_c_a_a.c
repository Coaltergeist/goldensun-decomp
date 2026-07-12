extern unsigned char iwram_3001ebc[];
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void __Func_8092c40(int actor, int arg1);
extern int __Func_8091c7c(int arg0, int arg1);
extern void __ActorMessage(int actor, int message);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_942_2008260(void) {
    int flagSet;

    __CutsceneStart();
    {
        register int flag asm("r0") = 0x8a6;

        asm volatile("" : "+r"(flag));
        flagSet = __GetFlag(flag);
    }
    if (flagSet == 0) {
        __MessageID(0x1cfd);
        {
            register int actor asm("r0");
            register int zero asm("r1");

            zero = 0;
            asm volatile("" : "+r"(zero));
            actor = 0xb;
            asm volatile("" : "+r"(actor), "+r"(zero));
            __Func_8092c40(actor, zero);
        }
        if (__Func_8091c7c(0, 0) == 0) {
            __ActorMessage(0xb, 0);
            {
                register int flag asm("r0") = 0x8a6;

                asm volatile("" : "+r"(flag));
                __SetFlag(flag);
            }
        } else {
            unsigned char *base = *(unsigned char **)iwram_3001ebc;

            (*(unsigned short *)(base + 0x1d8))++;
            __ActorMessage(0xb, 0);
        }
    } else {
        __MessageID(0x1cfe);
        __ActorMessage(0xb, 0);
    }
    __CutsceneEnd();
}
