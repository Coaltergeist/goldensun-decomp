static inline void CS955_TravelToPlayer(int actorId)
{
    struct Actor *player = __MapActor_GetActor(0);
    if (player != 0)
        API_MapActor_TravelTo(actorId, ((short *)&player->pos.x)[1],
                             ((short *)&player->pos.z)[1]);
}
void OvlFunc_955_20090dc(int actorId)
{
    struct Actor *actor = __MapActor_GetActor(actorId);
    int x = ((short *)&actor->pos.x)[1];
    int z = ((short *)&actor->pos.z)[1];
    unsigned int fixedX;
    unsigned int fixedZ;
    API_CutsceneStart();
    API_MapActor_SetSpeed(actorId, 0x10000, 0x8000);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);
    fixedZ = (unsigned int)z << 16;
    fixedX = (unsigned int)x << 16;
    API_MapActor_SetPos(0, fixedX, fixedZ - 0x300000);
    API_MapActor_SetPos(1, fixedX - 0x100000, fixedZ - 0x280000);
    API_MapActor_SetPos(2, fixedX + 0x100000, fixedZ - 0x280000);
    API_MapActor_SetPos(3, fixedX, fixedZ - 0x200000);
    API_MapActor_SetPos(actorId, fixedX, fixedZ - 0x500000);
    __MapActor_GetActor(0)->facing = 0xc000;
    API_SetCameraTarget(0, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();
    API_MessageID(0x20e9);
    API_MapActor_DoAnim(actorId, 3);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_Func_80925cc(actorId, 2);
    API_ActorMessage(actorId, 0);
    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(6);
    API_MapActor_SetAnim(1, 2);
    CS955_TravelToPlayer(1);
    API_MapActor_SetAnim(2, 2);
    CS955_TravelToPlayer(2);
    API_MapActor_SetAnim(3, 2);
    CS955_TravelToPlayer(3);
    API_MapActor_TravelToAnimWait(actorId, x - 16, z - 64);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_TravelToAnimWait(actorId, x - 16, z - 16);
    API_MapActor_TravelToAnimWait(actorId, x, z);
    API_Func_8092adc(actorId, 0xc000, 10);
    API_CutsceneEnd();
}
