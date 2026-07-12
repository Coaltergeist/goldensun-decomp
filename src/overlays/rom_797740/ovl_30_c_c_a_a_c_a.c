extern void __CutsceneStart(void);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __CutsceneWait(int frames);
extern void __MessageID(int message);
extern void __ActorMessage(int actor, int message);
extern void __Func_809259c(int actor, int arg1);
extern void __Func_80925cc(int actor, int arg1);
extern void __Func_8092848(int actor, int arg1, int arg2);
extern void __CutsceneEnd(void);

void OvlFunc_900_2008094(void) {
    __CutsceneStart();
    __Func_809280c(8, 9, 0);
    __CutsceneWait(0x28);
    __Func_809280c(8, 10, 0);
    __CutsceneWait(0x28);
    __MessageID(0x138a);
    __ActorMessage(8, 0);
    __Func_809259c(9, 2);
    __Func_80925cc(10, 2);
    __CutsceneWait(0x14);
    __Func_8092848(8, 0, 0);
    __CutsceneWait(0x14);
    __Func_80925cc(8, 1);
    __CutsceneWait(0x14);
    __ActorMessage(8, 0);
    __CutsceneEnd();
}
