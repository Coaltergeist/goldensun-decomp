extern void __SetFlagByte(int, int);

void OvlFunc_955_20080c0(void) {
    int x;

    API_Func_8010704(0x64, 0xb, 0xc, 4, 0xe, 0xb);

    x = __MapActor_GetActor(0xc)->pos.x >> 20;
    __SetFlagByte(0x340, x);
    API_Func_8010704(0x47, 0x10, 1, 1, x, 0x10);

    x = __MapActor_GetActor(0xd)->pos.x >> 20;
    __SetFlagByte(0x348, x);
    API_Func_8010704(0x47, 0x10, 1, 1, x, 0x10);

    x = __MapActor_GetActor(0xe)->pos.x >> 20;
    __SetFlagByte(0x350, x);
    API_Func_8010704(0x47, 0x10, 1, 1, x, 0x10);
}
