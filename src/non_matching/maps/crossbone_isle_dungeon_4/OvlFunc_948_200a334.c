void OvlFunc_948_200a334(void)
{
    extern void OvlFunc_948_2009edc(void);
    struct Actor *actor;
    int flag;

    ((struct Actor *)__MapActor_GetActor(0xe))->__unk55 = 0;
    API_StartTask(OvlFunc_948_2009e94, 0xc8 << 4);
    API_StartTask(OvlFunc_948_2009edc, 0xc8 << 4);
    API_Func_808edac(0x6b, 0, 0);
    if (API_GetFlag(0xed9))
        __MapActor_SetAnim(0xe, 2);
    OvlFunc_948_2009ac8();
    OvlFunc_948_2009c28();
    OvlFunc_948_2009cf8();
    OvlFunc_948_2009e54();
    OvlFunc_948_2009e74();
    API_Func_8092b08(8, 3);
    ((struct Actor *)__MapActor_GetActor(0xb))->__unk55 = 0;
    ((struct Actor *)__MapActor_GetActor(0xc))->__unk55 = 0;
    OvlFunc_948_2009df8();
    if (API_GetFlag(0x200)) {
        OvlFunc_948_2009984();
        __MapActor_SetAnim(0xd, 5);
    }
    if (!API_GetFlag(0x109)) {
        flag = API_GetFlag(0x9ca);
        if (flag) {
            __MapActor_SetPos(0xf, 0xd6 << 18, 0xce << 18);
            actor = (struct Actor *)__MapActor_GetActor(0xf);
            actor->update = (actorfun_t *)OvlFunc_948_2008aa8;
        } else if (API_GetFlag(0x9c9)) {
            __MapActor_SetPos(0xf, 0xde << 18, 0xa6 << 18);
            actor = (struct Actor *)__MapActor_GetActor(0xf);
            actor->sprite->rotation = flag;
            __Actor_SetAnimSpeed(actor, 0x10);
        } else if (API_GetFlag(0x9c8)) {
            __MapActor_SetPos(0xf, 0x92 << 18, 0xaa << 18);
        } else {
            __MapActor_SetPos(0xf, 0x92 << 18, 0xa6 << 18);
        }
    }
}
