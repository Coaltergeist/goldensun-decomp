void OvlFunc_907_2008ae0(void)
{
    unsigned char *actor10;
    unsigned char *actor11;
    int flag;
    int val;

    actor10 = __MapActor_GetActor(10);
    actor11 = __MapActor_GetActor(11);
    __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);

    flag = API_GetFlag(0x845);
    if (flag != 0) {
        API_MapActor_SetPos(9, 0, 0);
        API_MapActor_SetPos(10, 0, 0);
        API_MapActor_SetPos(11, 0, 0);
        API_CopyMapTiles(0x38, 0xf, 0x28, 0xf, 1, 2);
        API_Func_8010704(0x1a, 0xf, 1, 3, 10, 15);
        if (API_GetFlag(0x849) == 0) {
            if (API_GetFlag(0x848) != 0)
                goto end;
            API_MapActor_SetPos(0xe, 0, 0);
        }
        API_Func_8092adc(0xc, 0xd0 << 8, 0);
        API_Func_8092adc(0xd, 0xb0 << 8, 0);
    } else {
        API_MapActor_SetPos(0xc, 0, 0);
        API_MapActor_SetPos(0xd, 0, 0);
        API_MapActor_SetPos(0xe, 0, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(10), 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(11), 0);
        actor10[0x55] = flag;
        if (API_GetFlag(0x881) != 0) {
            __MapActor_GetActor(9)[0x59] |= 0x10;
            __MapActor_GetActor(0x10)[0x59] |= 0x10;
            __MapActor_GetActor(11)[0x59] |= 0x10;
            API_MapActor_SetPos(0x10, 0x8e << 16, 0x9c << 16);
            __Actor_SetSpriteFlags(__MapActor_GetActor(0x10), 0);
            API_MapActor_SetPos(10, 0x8e << 16, 0x9c << 16);
            val = 0x80;
            val <<= 7;
            *(unsigned short *)(*(unsigned char **)(actor10 + 0x50) + 0x1e) = val;
            *(int *)(actor10 + 0xc) -= 0x80000;
            if (API_GetFlag(0x848) != 0) {
                API_MapActor_SetPos(11, 0x84 << 16, 0xba << 16);
            } else {
                API_MapActor_SetPos(11, 0xb0 << 15, 0xc4 << 16);
                API_Func_8092b08(11, 3);
                actor11[0x59] |= 4;
            }
        } else {
            *(int *)(actor10 + 0xc) = 0x80 << 14;
            actor11[0x55] = 0;
            *(int *)(actor11 + 0xc) = 0xc0 << 14;
        }
    }
end:
    OvlFunc_907_2008cb4();
}
