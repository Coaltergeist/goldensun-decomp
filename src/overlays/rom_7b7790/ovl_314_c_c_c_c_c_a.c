extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __Func_8093040(int actor, int arg1, int arg2);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneEnd(void);

void OvlFunc_929_2008524(void) {
    __CutsceneStart();
    __MessageID(0x1a64);
    __Func_8093040(9, 0, 0x14);
    __Func_809280c(9, 0xa, 0);
    __CutsceneWait(0x3c);
    __Func_809280c(9, 0, 0);
    __CutsceneWait(0x14);
    __ActorMessage(9, 0);
    __CutsceneEnd();
}
