void OvlFunc_927_2009454(void)
{
    struct Pk pk;

    __CutsceneStart();
    if (OvlFunc_927_2008474(&pk) != 0) {
        OvlFunc_927_2008608(pk);
        if (pk.b == 8 && pk.z >> 20 == 0x17) {
            __Func_8010704(0x23, 0x43, 4, 1, 0x23, 0x44);
        } else if (pk.b == 10 && pk.x >> 20 == 0x23) {
            __SetFlag(0x311);
            __MapActor_SetAnim(10, 3);
            __MapActor_TravelBy(10, -16, 6);
            __CutsceneWait(30);
            __MapActor_SetAnim(10, 8);
            __PlaySound(0xf0);
            *(__MapActor_GetActor(10) + 0x23) = 2;
            __Func_8010704(0x2c, 0x1e, 2, 4, 0x22, 0x1e);
            OvlFunc_927_2008244(2, 0x23, 0x1e, 1, 4, 0);
        }
    }
    __CutsceneEnd();
}
