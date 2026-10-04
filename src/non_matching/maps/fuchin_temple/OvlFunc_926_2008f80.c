void OvlFunc_926_2008f80(void)
{
    unsigned char *actor;
    unsigned short facing;

    actor = __MapActor_GetActor(0);
    facing = *(unsigned short *)(actor + 6);
    if ((unsigned short)(facing - 0x2000) <= 0x3fff)
    {
        __MapActor_TravelToAnimWait(0xf, 0xd8, 0xa8);
        __MapActor_TravelToAnimWait(0xf, 0xe0, 0xa8);
        __Func_8092adc(0xf, 0x2000, 0x14);
    }
    else if ((unsigned short)(facing - 0x6000) <= 0x3fff)
    {
        __MapActor_TravelToAnimWait(0xf, 0xe8, 0xa0);
        __Func_8092adc(0xf, 0x5000, 0x14);
    }
    else if ((unsigned short)(facing + 0x6000) <= 0x3fff)
    {
        __MapActor_TravelToAnimWait(0xf, 0xd8, 0xa8);
        __MapActor_TravelToAnimWait(0xf, 0xe0, 0xac);
        __Func_8092adc(0xf, 0xe000, 0x14);
    }
    else
    {
        __MapActor_TravelToAnimWait(0xf, 0xe8, 0xa0);
        __Func_8092adc(0xf, 0x2000, 0x14);
    }
}
