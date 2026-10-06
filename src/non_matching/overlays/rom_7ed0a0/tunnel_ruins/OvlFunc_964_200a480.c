void OvlFunc_964_200a480(void) {
    int a;
    int b;
    b = 0x31;
    a = 0x19;
    API_Func_8010704(0x59, 0x31, 3, 2, a, b);
    b = 0x33;
    API_Func_8010704(0x59, 0x33, 8, 5, a, b);
    ((struct Actor *)__MapActor_GetActor(0xe))->layer = 1;
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xc))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xc))->pos.z >> 20
    );
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xd))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xd))->pos.z >> 20
    );
    API_Func_8010704(0x16, 0x34, 1, 1, (
        (struct Actor *)__MapActor_GetActor(0xe))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0xe))->pos.z >> 20
    );
}
