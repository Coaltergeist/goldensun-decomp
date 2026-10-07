void OvlFunc_883_200d950(void)
{
    struct Actor *actor;
    int actorId;
    int x;

    API_Func_8010704(0x11, 0, 3, 1, 0x16, 0x24);
    if (__GetFlag(0x87a)) {
        actorId = 0x15;
    } else {
        actorId = 0x14;
    }
    actor = (struct Actor *)__MapActor_GetActor(actorId);
    if (actor != 0) {
        API_ClearFlag(0x314);
        API_ClearFlag(0x315);
        API_ClearFlag(0x316);
        x = actor->pos.x >> 20;
        if (x == 0x16) {
            API_Func_8010704(0x11, 1, 1, 1, x, 0x24);
            API_SetFlag(0x314);
        } else if (x == 0x17) {
            API_Func_8010704(0x11, 1, 1, 1, x, 0x24);
            API_SetFlag(0x315);
        } else {
            API_Func_8010704(0x11, 1, 1, 1, 0x18, 0x24);
            API_SetFlag(0x316);
        }
    }
}
