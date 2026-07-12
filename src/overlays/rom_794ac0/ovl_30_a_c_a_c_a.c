extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int message);
extern void OvlFunc_899_2008354(int actor);
extern void __CutsceneWait(int frames);
extern void OvlFunc_899_200c63c(int actor, int arg1, int arg2);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

void OvlFunc_899_200852c(void) {
    __CutsceneStart();
    if (__GetFlag(0x856) != 0) {
        register int flag asm("r0") = 0x851;

        asm volatile("" : "+r"(flag));
        if (__GetFlag(flag) == 0) {
            __MessageID(0x1276);
            OvlFunc_899_2008354(0x10);
            __CutsceneWait(10);
            OvlFunc_899_200c63c(0x10, 3, 0x14);
            {
                register int setFlag asm("r0") = 0x851;

                asm volatile("" : "+r"(setFlag));
                __SetFlag(setFlag);
            }
        } else {
            __MessageID(0x1278);
        }
    } else {
        __MessageID(0x1250);
    }
    OvlFunc_899_2008354(0x10);
    __CutsceneEnd();
}
