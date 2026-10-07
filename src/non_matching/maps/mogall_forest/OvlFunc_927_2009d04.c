void OvlFunc_927_2009d04(void)
{
    struct Actor *actor;
    int x, z;

    actor = (struct Actor *)__MapActor_GetActor(0xf);
    __CutsceneStart();
    OvlFunc_927_2008ea8(0xf, 0);
    OvlFunc_927_2008d90(0xf, 0x1d8, 0x68, 0x80000);
    __CutsceneWait(10);
    OvlFunc_927_2008ae8(actor->pos.x, actor->pos.y, actor->pos.z + 0x80000,
                        0, 0, 0, 1, 0);
    __SetCameraTarget(0xf, 1);
    __MapActor_TurnToFaceActor(0xf, 0, 0);
    __CutsceneWait(0x1e);
    __Func_809259c(0xf, 2);
    API_MapActor_Emote(0xf, 0x103, 0);
    __PlaySound(0x93);
    __CutsceneWait(0x3c);
    x = (s16)(((struct Actor *)__MapActor_GetActor(0))->pos.x >> 16);
    z = (s16)(((struct Actor *)__MapActor_GetActor(0))->pos.z >> 16);
    OvlFunc_927_2008d90(0xf, x, z, 0x60000);
    __CutsceneWait(10);
    __SetFlag(0x307);
    gState._bytes[0x22b] = 3;
    __StartMapBattle(0x35, 0);
    __CutsceneEnd();
}
