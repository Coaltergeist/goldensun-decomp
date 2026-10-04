extern void __Func_808f1c0(int, int);
extern void __Func_8091a58(int, int);

void OvlFunc_952_20085a4(void)
{
    int msg = 0x2352;

    API_CutsceneStart();
    __Func_808e118();
    API_MessageID(msg);
    API_ActorMessage(-1, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0xe, 2);
    API_CutsceneWait(0x1e);
    API_MapActor_Face(0, 0xe, 0x1e);
    __ShowActorMessage_NoWait(0xe, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        API_MessageID(msg + 2);
        API_ActorMessage(0xe, 0);
    } else {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 3);
        API_ActorMessage(0xe, 0);
        API_CutsceneWait(0xa);
        API_MapActor_DoAnim(0, 3);
        API_CutsceneWait(0x1e);
        API_Func_8092adc(0, 0x80 << 7, 0);
        API_CutsceneWait(0x1e);
        API_MapActor_SetPos(0x10, 0, 0);
        __Func_808f1c0(0xcd, 3);
        API_MapActor_SetAnim(0, 1);
        __Func_8091a58(0xcd, 0);
        API_SetFlag(0xf31);
    }
}
