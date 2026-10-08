void OvlFunc_883_200b380(unsigned int id, unsigned int anim1, unsigned int anim2, int flag)
{
    struct Actor *actor;
    struct Sprite *sprite;

    actor = (struct Actor *)__MapActor_GetActor(id);
    sprite = actor->sprite;
    __MapActor_SetSpeed(id, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(id, 0x188, 0x35b);
    API_Func_8092adc(id, 0xc0 << 8, 10);
    actor->__unk55 = 0;
    sprite->flags = 0;
    __MapActor_SetAnim(id, anim1);
    __MapActor_SetSpeed(id, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToWait(id, 0x188, 0x36b);
    API_CutsceneWait(10);
    __MapActor_SetSpeed(id, 0x4ccc, 0x2666);
    __MapActor_SetAnim(id, anim2);
    API_MapActor_TravelToWait(id, 0x188, 0x37a);
    actor->motion.y = 0x80 << 10;
    sprite->flags = 1;
    if (flag != 0)
        actor->__unk55 = 3;
    __MapActor_SetAnim(id, 1);
}
