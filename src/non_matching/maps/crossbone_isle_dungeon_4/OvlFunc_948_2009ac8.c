void OvlFunc_948_2009ac8(void)
{
    unsigned char *actor;
    int x;
    int y;

    actor = __MapActor_GetActor(8);
    x = *(int *)(actor + 8) / 0x100000;
    y = *(int *)(actor + 0xc);
    if (y == 0) {
        __MapActor_GetActor(8)[0x23] = 2;
    }
    OvlFunc_948_20099e8();
    __MapActor_GetActor(8)[0x55] = 3;
    if (x == 0x28) {
        OvlFunc_948_2009a9c();
    } else if (x == 0x2a) {
        OvlFunc_948_2009a48();
    } else if (x == 0x29) {
        OvlFunc_948_2009a70();
    } else if (x == 0x27 || x == 0x26 || x == 0x25) {
        __Func_8010704(0x3d, 0x24, 1, 1, x, 0x2a);
        __MapActor_GetActor(8)[0x55] = 0;
        *(int *)(__MapActor_GetActor(8) + 0xc) = 0x80 << 14;
    }
}
