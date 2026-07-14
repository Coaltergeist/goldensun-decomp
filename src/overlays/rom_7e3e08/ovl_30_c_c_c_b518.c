extern int __GetFlag(int flag);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __CutsceneWait(int duration);
extern void __Func_80925cc(int actor, int mode);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __MapActor_DoAnim(int actor, int animation);
extern void __CutsceneEnd(void);

void OvlFunc_957_200b518(void)
{
    if (__GetFlag(0x960) != 0 && __GetFlag(0x962) == 0) {
        __SetFlag(0x961);
        __CutsceneStart();
        __MessageID(0x217d);
        __ActorMessage(8, 0);
        __CutsceneWait(0xa);
        __Func_80925cc(0, 2);
        __CutsceneWait(0x1e);
        __Func_809280c(0, 8, 0);
        __CutsceneWait(0x1e);
        __ActorMessage(8, 0);
        __MapActor_DoAnim(0, 3);
        __CutsceneWait(0x14);
        __CutsceneEnd();
    }
}
