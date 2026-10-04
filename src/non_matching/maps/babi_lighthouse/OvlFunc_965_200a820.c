extern void __Func_8092b08(int, int);

void OvlFunc_965_200a820(void)
{
    struct Actor *actor;
    struct Actor *actor2;
    int x;
    int z;

    actor = (struct Actor *)__MapActor_GetActor(8);
    __Func_8092b08(8, 1);
    __Func_8092b08(9, 1);
    __Func_8010704(0x45, 0x13, 3, 3, 5, 0x13);
    __Func_8010704(0x45, 0x13, 3, 3, 0x11, 0x13);
    x = actor->pos.x >> 20;
    z = actor->pos.z >> 20;
    __Func_8010704(3, 3, 1, 1, x, z);
    actor2 = (struct Actor *)__MapActor_GetActor(9);
    x = actor2->pos.x >> 20;
    z = actor2->pos.z >> 20;
    __Func_8010704(3, 3, 1, 1, x, z);
}
