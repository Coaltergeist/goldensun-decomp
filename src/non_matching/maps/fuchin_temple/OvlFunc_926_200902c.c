void OvlFunc_926_200902c(int arg0) {
    API_MapActor_SetSpeed(0xf, 0xcccc, 0x6666);
    API_CutsceneWait(0x3c);
    API_MessageID(0x183a);
    if (arg0 == 0) {
        API_MessageID(0x1839);
        API_MapActor_Emote(0xf, 0x101, 0x3c);
        API_ActorMessage_Wait(0xf, 0, 0x14);
        API_Func_80925cc(0xf, 2);
        API_MessageID(0x18ae);
        API_ActorMessage_Wait(0xf, 0, 0x14);
        API_MapActor_DoAnim(0xf, 4);
        API_CutsceneWait(0x14);
        API_ActorMessage_Wait(0xf, 0, 0x14);
        API_MapActor_DoAnim(0xf, 3);
        API_CutsceneWait(0x14);
    }
    if (arg0 == 2) {
        API_MessageID(0x18ac);
        API_Func_80925cc(0xf, 2);
        API_CutsceneWait(0x14);
    }
    API_ActorMessage_Wait(0xf, 0, 0x14);
    OvlFunc_926_2008f80();
    API_Func_80925cc(0xf, 3);
    API_MapActor_SetPos(0x13, 0xe8 << 16, 0xa8 << 16);
    API_MapActor_SetPos(0x14, 0xe8 << 16, 0xa8 << 16);
    ((struct Actor *)__MapActor_GetActor(0x13))->pos.y = 0xc0 << 12;
    ((struct Actor *)__MapActor_GetActor(0x13))->prevPos.y = 0x80 << 24;
    ((struct Actor *)__MapActor_GetActor(0x13))->scale.x = 0xcccc;
    ((struct Actor *)__MapActor_GetActor(0x13))->sprite->rotation = 0x80 << 8;
    API_PlaySound(0x7c);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(0xf, 0xd8, 0x98);
    API_Func_8092adc(0xf, 0x80 << 6, 0x1e);
}
