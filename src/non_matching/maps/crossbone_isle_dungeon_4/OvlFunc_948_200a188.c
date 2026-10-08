extern void OvlFunc_948_200a0c4(int, int);

void OvlFunc_948_200a188(void)
{
    __WaitFrames(1);
    OvlFunc_948_200a0c4(0xc, 0xf3);
    OvlFunc_948_200a0c4(0xb, 0xf4);
    OvlFunc_948_200a0c4(0xa, 0xf4);
    OvlFunc_948_200a0c4(9, 0xf4);
    OvlFunc_948_200a0c4(8, 0xf4);

    if (!API_GetFlag(0xee7))
        __MapActor_SetPos(8, 0xe8 << 16, 0xda << 18);
    if (!API_GetFlag(0xee8))
        __MapActor_SetPos(9, 0x94 << 17, 0xce << 18);
    if (!API_GetFlag(0xee9))
        __MapActor_SetPos(0xa, 0xa4 << 17, 0xbe << 18);
    if (!API_GetFlag(0xeea))
        __MapActor_SetPos(0xb, 0xb4 << 17, 0xda << 18);

    if (API_GetFlag(0x9c0))
        OvlFunc_948_2008f40(0);
    if (API_GetFlag(0x9c1))
        OvlFunc_948_2008f40(1);
    if (API_GetFlag(0x9c2))
        OvlFunc_948_2008f40(2);
    if (API_GetFlag(0x9c3))
        OvlFunc_948_2008f40(3);
    if (API_GetFlag(0x9c4))
        OvlFunc_948_2008fdc(0);
}
