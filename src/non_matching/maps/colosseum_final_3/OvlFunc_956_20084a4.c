extern struct Actor *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);

void OvlFunc_956_20084a4(void)
{
    struct Actor *actor;
    int x;
    int z;

    actor = __MapActor_GetActor(0xc);
    x = actor->pos.x >> 20;
    z = actor->pos.z >> 20;

    if (x == 9 && z == 0xc) {
        actor = __MapActor_GetActor(0xc);
        __Actor_SetSpriteFlags(actor, 0);
        actor->flags = 2;
        actor->__unk55 = 0;
        actor->accel = 0x6666;
        actor->speed = 0xcccc;
        API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

        actor = __MapActor_GetActor(0xb);
        actor->flags = 2;
        actor->accel = 0x6666;
        actor->speed = 0xcccc;
        API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 14, actor->pos.z);

        actor = __MapActor_GetActor(0xa);
        actor->accel = 0x6666;
        actor->speed = 0xcccc;
        API_Actor_TravelTo(actor, actor->pos.x, 0x80 << 11, actor->pos.z);

        API_SetFlag(0xda << 2);
        API_Func_8010704(0xf, 0xc, 1, 1, 0xd, z);
        API_Func_8010704(1, 0x19, 1, 1, x, z);
    }
}
