void OvlFunc_955_200862c(void)
{
    int e;
    int f = 0xb;

    API_Func_8010704(0x64, 0xb, 0xc, 4, 0xe, f);
    e = __MapActor_GetActor(0xf)->pos.x >> 20;
    API_Func_8010704(0xd, 0x1c, 1, 4, e, f);
    e = __MapActor_GetActor(0x10)->pos.x >> 20;
    API_Func_8010704(0xd, 0x1c, 1, 4, e, f);
    f = __MapActor_GetActor(0x11)->pos.z >> 20;
    API_Func_8010704(0xd, 0x1c, 4, 1, 0x12, f);
}
