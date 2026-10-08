void OvlFunc_945_2009190(int actorId)
{
    extern int OvlFunc_945_2009280(int);
    extern void __Func_8092b08(int, int);
    extern int Lm945_6668[] __asm__(".Lm945_6668");
    struct Actor *actor0;
    struct Actor *actor;
    struct Actor *a0;
    int r8;
    int dir;
    int t;

    actor0 = (struct Actor *)__MapActor_GetActor(0);
    r8 = 1;
    __Func_8092b08(actorId, 2);
    actor = (struct Actor *)__MapActor_GetActor(actorId);
    actor->flags |= 1;

    dir = (int)((actor0->facing + 0x4000) & 0xf000) >> 12;
    if (OvlFunc_945_2009280(dir) != 0) {
        r8 = 0;
    }
    if (r8 != 0) {
        dir = (int)((actor0->facing + 0xffffc000) & 0xf000) >> 12;
        if (OvlFunc_945_2009280(dir) != 0) {
            r8 = 0;
        }
    }
    if (r8 != 0) {
        dir = (int)((actor0->facing + 0x8000) & 0xf000) >> 12;
    }

    a0 = (struct Actor *)__MapActor_GetActor(0);
    if (a0 != 0) {
        __MapActor_SetPos(actorId, a0->pos.x, a0->pos.z);
    }

    __MapActor_SetSpeed(actorId, 0x19999, 0xcccc);
    __MapActor_SetAnim(actorId, 2);
    t = Lm945_6668[dir];
    __MapActor_TravelBy(actorId, (s16)(t >> 16), (s16)t);
    __MapActor_WaitMovement(actorId);
    __MapActor_SetAnim(actorId, 1);
    OvlFunc_945_200c880(actorId, actor0->facing);
}