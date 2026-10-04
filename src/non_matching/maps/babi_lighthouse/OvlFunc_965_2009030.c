extern void OvlFunc_965_200a820(void);

void OvlFunc_965_2009030(void)
{
    struct Actor *actor;
    int x;

    actor = (struct Actor *)__MapActor_GetActor(0);
    __CutsceneStart();
    x = actor->pos.x >> 20;
    if ((x == 6 || x == 0x12) && (actor->pos.z >> 20 == 0x14)) {
        actor->prevPos.x = 0x80 << 24;
        actor->prevPos.z = 0x80 << 24;
        __MapActor_Emote(0, 0x100, 0x14);
        __MapActor_SetSpeed(0, 0x20000, 0x10000);
        __MapActor_Jump(0, 4, 0);
        if ((u16)(actor->facing + 0x4fff) <= 0x1fff || (u16)(actor->facing - 0x3001) <= 0x1fff) {
            __MapActor_TravelBy(0, 0x10, 0);
            __MapActor_WaitMovement(0);
            __Func_8092adc(0, 0x8000, 0x14);
        } else {
            __MapActor_TravelBy(0, 0, -0x10);
            __MapActor_WaitMovement(0);
            __Func_8092adc(0, 0x4000, 0x14);
        }
    }
    OvlFunc_965_200a820();
    __CutsceneEnd();
}
