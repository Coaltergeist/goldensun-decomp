void OvlFunc_939_2008ff0(void)
{
    extern void OvlFunc_939_2009240(void);
    unsigned char *actor;
    int msg;

    if (__GetFlag(0x244))
        return;

    __SetFlag(0x244);
    __CutsceneStart();
    actor = __MapActor_GetActor(0);
    __MapActor_Face(8, 0, 0);
    __MapActor_Face(9, 0, 0);
    __Func_809259c(8, 1);
    __Func_809259c(9, 1);
    __CutsceneWait(0x14);
    __MapActor_Emote(8, 0x102, 0x3c);

    msg = 0x2409;
    __MessageID(msg);
    __ActorMessage(8, 0);
    API_MapActor_SetSpeed(0, 0x20000, 0x10000);
    API_MapActor_SetSpeed(8, 0x20000, 0x10000);
    API_MapActor_SetSpeed(9, 0x20000, 0x10000);
    __MapActor_SetAnim(9, 4);
    __CutsceneWait(0x23);
    __MessageID(msg + 1);
    __ActorMessage(9, 0);
    __MapActor_Emote(8, 0x103, 0x1e);
    __MessageID(msg + 2);
    __ActorMessage(8, 0);
    __MapActor_SetAnim(9, 3);
    __CutsceneWait(0x19);
    __MessageID(msg + 3);
    __ActorMessage(9, 0);

    __MapActor_TravelToAnim(8, *(short *)(actor + 0xa) - 1, *(short *)(actor + 0x12));
    __MapActor_WaitMovement(8);

    __MapActor_TravelToAnim(0, 0xa0, 0xd8);
    __MapActor_TravelToAnim(8, 0x98, 0xc8);
    __MapActor_TravelToAnim(9, 0xa8, 0xc8);
    __MapActor_WaitMovement(8);
    __MapActor_WaitMovement(9);
    __MapActor_WaitMovement(0);
    __MapActor_Face(8, 0, 0);
    __MapActor_Face(9, 0, 0);
    __CutsceneWait(0xc);

    __MapActor_TravelToAnim(0, 0xa0, 0x110);
    __MapActor_TravelToAnim(8, 0x98, 0x100);
    __MapActor_TravelToAnim(9, 0xa8, 0x100);
    __MapActor_WaitMovement(8);
    __MapActor_WaitMovement(9);
    __MapActor_WaitMovement(0);
    __CutsceneEnd();

    __StartTask(OvlFunc_939_2009240, 0xc80);
}
