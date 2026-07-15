extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __MapActor_Jump(int,int,int);
extern void __ActorMessage(int,int);
extern void __MapActor_Emote(int,int,int);
extern void __MapActor_DoAnim(int,int);
extern void __Func_80925cc(int,int);

void OvlFunc_950_2008328(void)
{
    __CutsceneStart();
    __MessageID(0x23a4);
    __CutsceneWait(0x1e);
    __MapActor_Jump(0x1f, 4, 0xd);
    __MapActor_Jump(0x1f, 4, 0x1e);
    __ActorMessage(0x1f, 0);
    __CutsceneWait(0xa);
    __MapActor_Emote(0x20, 0x102, 0x32);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x20, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(0x20, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x21, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x21, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(0x1f, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0x1f, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0x20, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}
