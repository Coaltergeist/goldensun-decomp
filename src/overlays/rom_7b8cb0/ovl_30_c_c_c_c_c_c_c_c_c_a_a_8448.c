extern int __GetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);
extern void __Func_80b0278(int actor, int target);
extern unsigned int OvlFunc_931_2008338(void);

void OvlFunc_931_2008448(void)
{
    if (__GetFlag(0x240) == 0) {
        __CutsceneStart();
        __MessageID(0x18f1);
        __ActorMessage(0x15, 0);
        __CutsceneEnd();
    } else if (OvlFunc_931_2008338() != 0) {
        __Func_80b0278(0x15, 0x10);
    } else {
        __CutsceneStart();
        __MessageID(0x18f2);
        if (__GetFlag(0x909) != 0) {
            __MessageID(0x1945);
        }
        __ActorMessage(0x10, 0);
        __CutsceneEnd();
    }
}
