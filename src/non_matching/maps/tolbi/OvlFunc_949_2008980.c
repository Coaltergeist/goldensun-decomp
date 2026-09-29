static inline void Func_80933f8_neg(int a, int b, int c, int d) {
    extern void __Func_80933f8(int, int, int, int);
    __Func_80933f8(-a, -b, -c, d);
}

void OvlFunc_949_2008980(void)
{
    int msg;
    unsigned short *p;

    __CutsceneStart();
    Func_80933f8_neg(1, 1, 1, 0);
    API_MapActor_SetSpeed(0x1d, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetSpeed(0x1e, 0x80 << 9, 0x80 << 8);
    msg = 0x1fb6;
    __MessageID(msg);
    API_MapActor_SetPos(0x1d, 0x90 << 15, 0xd0 << 16);
    API_MapActor_SetPos(0x1e, 0xe0 << 14, 0xd0 << 16);
    __Func_8092950(0x20, 0xf);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x20), 0);
    API_MapActor_SetPos(0x20, 0xbe << 15, 0xa0 << 14);
    API_MapActor_TravelToAnim(0x1d, 0x48, 0xf8);
    API_MapActor_TravelToAnim(0x1e, 0x38, 0xf8);
    API_MapActor_TravelToAnimWait(0, 0x40, 0x84 << 1);
    API_Func_8092adc(0, 0xc0 << 8, 0);
    __MapActor_WaitMovement(0x1d);
    API_MapActor_SetAnim(0x1d, 1);
    API_MapActor_SetAnim(0x1e, 1);
    API_MapActor_SetAnim(0, 1);
    API_MapActor_Face(0x1d, 0, 0);
    API_MapActor_Face(0x1e, 0, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Surprise(0x1d, 0x81 << 1);
    API_MapActor_Surprise(0x1e, 0x81 << 1);
    API_Func_809259c(0x1d, 2);
    API_Func_80925cc(0x1e, 2);
    API_CutsceneWait(0x14);
    __ShowActorMessage_NoWait(0x1d, 0);
    API_CutsceneWait(0x19);
    msg += 3;
    __Func_8019da8(0x34, 0, 0xc, 7);
    __Func_8017658(msg, 0xb, 0xc, 2);
    *(int *)((char *)iwram_3001ebc + (0xfa << 1)) = 0x20;
    if (!__Func_8091c7c(0, 0)) {
        API_CutsceneWait(0x14);
        API_Func_80925cc(0x1e, 2);
        API_CutsceneWait(0x1e);
        API_Func_8092adc(0x1e, 0, 0);
        API_CutsceneWait(0x1e);
        API_CutsceneWait(0xa);
        API_MapActor_DoAnim(0x1d, 3);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0x1d, 0, 0);
        API_CutsceneWait(0x1e);
        API_ActorMessage(0x1d, 0);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0x1d, 0x80 << 7, 0);
        API_Func_8092adc(0x1e, 0x80 << 7, 0);
        API_CutsceneWait(0x1e);
        API_MapActor_SetAnim(0x1d, 3);
        API_MapActor_DoAnim(0x1e, 3);
        API_CutsceneWait(0x14);
        API_MapActor_SetSpeed(0x1d, 0x1cccc, 0xe666);
        API_MapActor_SetSpeed(0x1e, 0x1cccc, 0xe666);
        API_MapActor_TravelToAnim(0x1d, 0xe8, 0xf8);
        API_CutsceneWait(2);
        API_MapActor_TravelToAnim(0x1e, 0xe8, 0xf8);
        __MapActor_WaitMovement(0x1d);
        API_MapActor_TravelToAnim(0x1d, 0xf8, 0xf8);
        API_MapActor_TravelToAnimWait(0x1e, 0xf8, 0xf8);
    } else {
        API_CutsceneWait(0x14);
        API_Func_80925cc(0x1e, 2);
        API_CutsceneWait(0x1e);
        API_Func_8092adc(0x1e, 0, 0);
        API_CutsceneWait(0x1e);
        API_CutsceneWait(0xa);
        API_MapActor_DoAnim(0x1d, 4);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0x1d, 0, 0);
        API_CutsceneWait(0x1e);
        p = (unsigned short *)((char *)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
        API_ActorMessage(0x1d, 0);
        API_CutsceneWait(0x14);
        API_Func_8092adc(0x1d, 0x80 << 7, 0);
        API_Func_8092adc(0x1e, 0x80 << 7, 0);
        API_CutsceneWait(0x1e);
        API_MapActor_SetAnim(0x1d, 3);
        API_MapActor_DoAnim(0x1e, 3);
        API_CutsceneWait(0x14);
        API_MapActor_SetSpeed(0x1d, 0x19999, 0xcccc);
        API_MapActor_SetSpeed(0x1e, 0x19999, 0xcccc);
        API_MapActor_TravelToAnim(0x1d, 0x48, 0xb8);
        API_MapActor_TravelToAnimWait(0x1e, 0x38, 0xb8);
    }
    API_MapActor_SetPos(0x1d, 0, 0);
    API_MapActor_SetPos(0x1e, 0, 0);
    API_MapActor_SetPos(0x20, 0, 0);
    API_SetFlag(0x8c << 4);
    __CutsceneEnd();
}
