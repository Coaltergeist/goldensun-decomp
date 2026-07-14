extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);
extern unsigned int OvlFunc_931_2008338(void);
extern void __Func_80b0278(int actorId, int target);

void OvlFunc_931_20083d4(void) {
    if (__GetFlag(0x241) == 0) {
        __CutsceneStart();
        __MessageID(0x18ed);
        __ActorMessage(0x14, 0);
        __CutsceneEnd();
        return;
    }

    if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x14, 0x11);
        return;
    }

    __CutsceneStart();
    __MessageID(0x18ee);
    if (__GetFlag(0x909) != 0) {
        __MessageID(0x1943);
    }
    __ActorMessage(0x11, 0);
    __CutsceneEnd();
}
