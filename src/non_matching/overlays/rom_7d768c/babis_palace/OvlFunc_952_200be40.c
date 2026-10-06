void OvlFunc_952_200be40(void)
{
    int msg;

    API_SetFlag(0x96c);
    API_CutsceneStart();
    __Func_808e118();
    API_Func_8092adc(8, 0xa0 << 7, 0);
    API_Func_8092adc(9, 0xc0 << 6, 0);
    API_MapActor_TravelToAnimWait(0, 0xc8, 0x88 << 1);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    API_CutsceneWait(0x14);
    msg = 0x2233;
    API_MessageID(msg);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 1);
        API_ActorMessage(8, 0);
    } else {
        API_CutsceneWait(0x14);
        API_MessageID(msg + 2);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0x14);
        API_MapActor_TurnToFaceActor(8, 9, 0x3c);
        API_Func_8092adc(9, 0xc0 << 6, 0);
        API_CutsceneWait(0x28);
        API_Func_80925cc(9, 2);
        API_CutsceneWait(0x1e);
        API_MapActor_TurnToFaceActor(8, 9, 0x1e);
        API_MapActor_DoAnim(9, 3);
        API_CutsceneWait(0x1e);
        API_MapActor_Emote(8, 0x81 << 1, 0x32);
        API_Func_8092adc(8, 0xa0 << 7, 0);
        API_Func_8092adc(9, 0xc0 << 6, 0);
        API_CutsceneWait(0x14);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(0x14);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0xa);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage(8, 0);
    }
    API_CutsceneEnd();
}
