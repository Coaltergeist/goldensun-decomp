void OvlFunc_955_20090dc(int arg0)
{
    struct Actor *actor;
    int x;
    int z;
    int posX;
    int posZ;
    int posZ1;
    int facing;
    int x1;

    actor = __MapActor_GetActor(arg0);
    x = actor->pos.x >> 16;
    z = actor->pos.z >> 16;

    API_CutsceneStart();

    API_MapActor_SetSpeed(arg0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(1, 0x10000, 0x8000);
    API_MapActor_SetSpeed(2, 0x10000, 0x8000);
    API_MapActor_SetSpeed(3, 0x10000, 0x8000);

    posZ = z << 16;
    posX = x << 16;

    API_MapActor_SetPos(0, posX, posZ - 0x300000);
    posZ1 = posZ - 0x280000;
    API_MapActor_SetPos(1, posX - 0x100000, posZ1);
    API_MapActor_SetPos(2, posX + 0x100000, posZ1);
    API_MapActor_SetPos(3, posX, posZ - 0x200000);
    API_MapActor_SetPos(arg0, posX, posZ - 0x500000);

    actor = __MapActor_GetActor(0);
    facing = 0xc000;
    actor->facing = facing;

    API_SetCameraTarget(0, 0);
    API_MapTransitionIn();
    API_WaitMapTransition();

    API_MessageID(0x20e9);

    API_MapActor_DoAnim(arg0, 3);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);
    API_Func_80925cc(arg0, 2);
    API_ActorMessage(arg0, 0);

    API_MapActor_SetAnim(3, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(2, 3);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(6);

    API_MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(1, actor->pos.x >> 16, actor->pos.z >> 16);
    }

    API_MapActor_SetAnim(2, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(2, actor->pos.x >> 16, actor->pos.z >> 16);
    }

    API_MapActor_SetAnim(3, 2);
    actor = __MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_TravelTo(3, actor->pos.x >> 16, actor->pos.z >> 16);
    }

    x1 = x - 16;
    API_MapActor_TravelToAnimWait(arg0, x1, z - 64);
    API_MapActor_SetPos(1, 0, 0);
    API_MapActor_SetPos(2, 0, 0);
    API_MapActor_SetPos(3, 0, 0);
    API_MapActor_TravelToAnimWait(arg0, x1, z - 16);
    API_MapActor_TravelToAnimWait(arg0, x, z);
    API_Func_8092adc(arg0, facing, 10);
    API_CutsceneEnd();
}
