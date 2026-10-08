extern void __Actor_SetSpriteFlags(struct Actor *actor, int flags);

void OvlFunc_956_20082f8(void)
{
    extern unsigned char gState[];
    struct Actor *actor;
    unsigned int r2;
    int id;

    r2 = 0xfa;
    r2 <<= 1;
    id = *(int *)((char *)gState + r2);
    if (API_GetFlag(0x362) == 0) {
        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xa);
            if (a != NULL) {
                API_MapActor_TravelTo(id, *(short *)((char *)a + 0xa), *(short *)((char *)a + 0x12));
            }
        }
        API_MapActor_WaitMovement(id);

        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xb);
            a->__unk55 = 0;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 14, a->pos.z);
        }

        {
            struct Actor *a = (struct Actor *)__MapActor_GetActor(0xa);
            a->__unk55 = 0;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            API_Actor_TravelTo(a, a->pos.x, 0x80 << 11, a->pos.z);
        }

        actor = (struct Actor *)__MapActor_GetActor(id);
        actor->__unk55 = 0;

        actor->speed = 0xcccc;
        actor->accel = 0x6666;
        API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

        __Actor_SetSpriteFlags(actor, 1);
        API_MapActor_WaitMovement(id);
        API_Func_8010704(0, 0x18, 1, 1, 9, 0xc);
        API_WaitFrames(2);
        __Actor_SetSpriteFlags(actor, 1);
        actor->__unk55 = 3;
        actor->floorPos = actor->pos.y;
        API_SetFlag(0x367);
    }
}
