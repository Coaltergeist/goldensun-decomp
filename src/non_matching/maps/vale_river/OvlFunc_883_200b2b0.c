void OvlFunc_883_200b2b0(int id, int anim1, int anim2, int flag)
{
    struct Actor *actor;
    struct Sprite *sprite;

    actor = (struct Actor *)__MapActor_GetActor(id);
    sprite = actor->sprite;
    API_MapActor_SetSpeed(id, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(id, 0x188, 0x376);
    API_Func_8092adc(0, 0xc0 << 8, 0xa);
    actor->__unk55 = 0;
    sprite->flags = 0;
    API_MapActor_SetAnim(id, anim1);
    API_MapActor_SetSpeed(id, 0x4ccc, 0x2666);
    API_MapActor_TravelToWait(id, 0x188, 0x36b);
    API_CutsceneWait(0xa);
    API_MapActor_SetAnim(id, anim2);
    API_MapActor_SetSpeed(id, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToWait(id, 0x188, 0x35b);
    sprite->flags = 1;
    if (flag != 0) {
        actor->__unk55 = 3;
    }
    API_CutsceneWait(0xa);
    API_MapActor_SetAnim(id, 1);
}
