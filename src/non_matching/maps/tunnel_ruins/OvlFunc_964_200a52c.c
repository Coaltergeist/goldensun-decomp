void OvlFunc_964_200a52c(void) {
    API_Func_8010704(0x6c, 0x13, 4, 1, 0x2c, 0x13);
    OvlFunc_964_2008244(0,
        ((struct Actor *)__MapActor_GetActor(0x11))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0x11))->pos.z >> 20,
        1, 1, 0xff
    );
    OvlFunc_964_2008244(0,
        ((struct Actor *)__MapActor_GetActor(0x12))->pos.x >> 20,
        ((struct Actor *)__MapActor_GetActor(0x12))->pos.z >> 20,
        1, 1, 0xff
    );
}
