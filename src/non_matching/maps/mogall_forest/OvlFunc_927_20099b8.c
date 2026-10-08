void OvlFunc_927_20099b8(void)
{
    struct Pk pk;
    int flag;
    unsigned char *actor;

    __CutsceneStart();
    flag = 0;
    if (OvlFunc_927_2008474(&pk)) {
        OvlFunc_927_2008608(pk);
        if (pk.b == 9 || pk.b == 11) {
            if (pk.b == 9) {
                __Func_8010704(0x26, 0x44, 1, 4, pk.x >> 20, 0x44);
                if (pk.x >> 20 == 0x2a) {
                    __Func_8010704(0x1a, 0x14, 2, 4, pk.x >> 20, 0x17);
                    __Func_8092b08(9, 1);
                    __SetFlag(0x312);
                    flag = 1;
                }
            } else {
                if (pk.x >> 20 == 0x28) {
                    __Func_8010704(0x1a, 0x14, 2, 4, pk.x >> 20, 0x20);
                    __Func_8092b08(11, 1);
                    __SetFlag(0x313);
                    flag = 1;
                }
            }

            if (flag) {
                __MapActor_SetAnim(pk.b, 3);
                __MapActor_TravelBy(pk.b, 18, 6);
                __CutsceneWait(30);
                __MapActor_SetAnim(pk.b, 8);
                __PlaySound(0xf0);
                actor = __MapActor_GetActor(pk.b);
                actor[0x23] = 2;
            } else {
                __CutsceneEnd();
                return;
            }
        } else if (pk.b == 8) {
            __Func_8010704(0x2a, 0x31, 1, 4, pk.x >> 20, 0x31);
        }
    }
    __CutsceneEnd();
}