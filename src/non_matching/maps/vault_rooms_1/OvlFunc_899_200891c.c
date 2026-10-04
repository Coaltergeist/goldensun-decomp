void OvlFunc_899_200891c(void)
{
    __CutsceneStart();
    OvlFunc_899_200c624(0x12, 0, 2);
    if (__GetFlag(0x85b) == 0) {
        __MessageID(0x137c);
        __ShowActorMessage_NoWait(0x12, 0);
    } else {
        __MessageID(0x1385);
        __ShowActorMessage_NoWait(0x12, 0);
    }
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
        __CutsceneWait(0x14);
        __Func_80925cc(0x12, 2);
        __CutsceneWait(0x14);
        if (__Func_8078500() == 0) {
            __MapActor_DoAnim(0x12, 4);
            __CutsceneWait(0x14);
            __MessageID(0x1384);
            __ActorMessage(0x12, 0);
        } else {
            __Func_808f1c0(0xe7, 3);
            __Func_8091a58(0xe7, 0);
            __SetFlag(0x85b);
        }
    } else {
        unsigned short *p;
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x12, 3);
        __CutsceneWait(0x14);
        __ActorMessage(0x12, 0);
    }
    __Func_8092adc(0x12, 0x80 << 7, 0);
    __CutsceneEnd();
}
