void OvlFunc_882_2009828(void)
{
    extern void __MapActor_RunScript(int, void *);
    extern unsigned char gScript_882__0200c934[];
    extern unsigned char gScript_882__0200c984[];
    extern void __Func_8093054(int, int);
    struct Actor *a;
    int msg;
    int speed;

    if (API_GetFlag(0x837))
        return;

    API_CutsceneStart();
    API_MapActor_Surprise(0x16, 0x80 << 1);
    msg = 0xe74;
    API_MessageID(msg);
    API_ActorMessage(0x16, 0);
    API_MapActor_Emote(0, 0x80 << 1, 0x14);
    API_Func_8092adc(0, 0x80 << 7, 0);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x80 << 17, -1, 0x93 << 18, 1);
    API_MapActor_SetSpeed(0x16, 0x80 << 10, 0x80 << 9);
    __MapActor_RunScript(0x16, gScript_882__0200c934);
    API_MapActor_TurnToFaceActor(0, 0x16, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_SetBehavior(0x16, (int)gScript_882__0200c984);
    API_ActorMessage(0x16, 0);
    a = (struct Actor *)__MapActor_GetActor(0x16);
    speed = 0x80 << 9;
    a->scale.y = speed;
    API_Func_80925cc(0x16, 1);
    API_CutsceneWait(0x14);
    __Func_8093054(0x16, 0);
    API_CutsceneWait(0x28);
    msg += 5;
    API_Func_80925cc(0x16, 1);
    API_MessageID(msg);
    API_ActorMessage_Wait(0x16, 0, 0x14);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(0x16, 3);
    API_ActorMessage(0x16, 0);
    API_MapActor_SetSpeed(0x16, speed, 0x80 << 8);
    API_MapActor_SetAnim(0x16, 2);
    a = (struct Actor *)__MapActor_GetActor(0);
    if (a != NULL)
        API_MapActor_TravelTo(0x16, ((s16 *)&a->pos.x)[1], ((s16 *)&a->pos.z)[1]);
    API_MapActor_WaitMovement(0x16);
    API_MapActor_SetPos(0x16, 0, 0);
    API_Func_80917d0(1, 1);
    API_MapActor_SetAnim(0x15, 3);
    API_SetFlag(0x837);
    API_CutsceneEnd();
}
