extern void __Func_8093054(int, int);

void OvlFunc_926_2008658(void) {
    API_CutsceneStart();
    API_SetFlag(0x894);
    API_MapActor_Face(9, 0, 0);
    API_CutsceneWait(0xa);
    API_MessageID(0x17b7);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0, 0x80 << 8, 0x14);
    __Func_8093054(9, 0);
    API_CutsceneWait(0xa);
    API_MapActor_Emote(9, 0x80 << 1, 0x50);
    API_Func_8092adc(9, 0xd0 << 8, 0x14);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8092adc(9, 0, 0x14);
    API_MapActor_DoAnim(9, 3);
    API_CutsceneWait(0x14);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8010704(0xa, 0x1a, 1, 1, 0xa, 0x18);
    API_CutsceneEnd();
}
