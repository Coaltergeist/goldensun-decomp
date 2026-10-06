unsigned int OvlFunc_941_2009394(void)
{
    unsigned int r3;

    API_MapActor_Face(2, 0, 0);
    API_MapActor_Emote(2, 0x102, 0x3c);
    __MessageID(0x255e);
    API_ActorMessage(2, 0);
    API_Func_8092adc(0xc, 0x3000, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_DoAnim(0xc, 4);
    __MessageID(0x255f);
    API_ActorMessage(0xc, 0);
    API_MapActor_Emote(3, 0x102, 0x3c);
    __MessageID(0x2560);
    __ShowActorMessage_NoWait(3, 0);
    r3 = __Func_8091c7c(0, 0);
    return 1 - ((unsigned int)(-r3 | r3) >> 31);
}
