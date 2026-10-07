void OvlFunc_883_20090d8(void)
{
    extern void __Func_800fe9c(void);
    vec3_t **camera;
    vec3_t *saved;
    vec3_t pos;
    unsigned char *player;
    int i;

    if (API_GetFlag(0x808) != 0)
        return;

    camera = *(vec3_t ***)iwram_3001e70;
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x80 << 9, 0x80 << 8);
    API_MapActor_SetAnim(0, 1);
    API_CutsceneWait(2);
    API_MessageID(0xf4d);
    API_ActorMessage_Wait(0xf, 0, 2);
    API_ActorMessage_Wait(0x10, 0, 2);

    player = __MapActor_GetActor(0);
    pos.x = *(int *)(player + 8);
    pos.y = *(int *)(player + 0xc);
    pos.z = *(int *)(player + 0x10);
    saved = *camera;
    *camera = &pos;

    for (i = 0; i < 40; i++) {
        pos.z += 0x80 << 10;
        API_CutsceneWait(1);
        __Func_800fe9c();
    }
    API_CutsceneWait(0x3c);
    API_Func_801776c(0xf4f, 1);
    API_CutsceneWait(6);
    for (i = 0; i < 40; i++) {
        pos.z -= 0x80 << 10;
        API_CutsceneWait(1);
        __Func_800fe9c();
    }

    *camera = saved;
    API_CutsceneWait(0x3c);
    API_MapActor_TravelToAnimWait(0, 0x46, 0x2e5);
    API_CutsceneEnd();
}
