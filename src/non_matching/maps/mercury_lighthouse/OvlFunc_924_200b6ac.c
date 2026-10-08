void OvlFunc_924_200b6ac(void)
{
    extern void __MapActor_TravelToAnimWait(int, int, int);
    extern void __Func_8092708(int, int, int);
    extern void OvlFunc_common0_18(int, int, int, int);

    __CutsceneStart();
    if (*(short *)((unsigned char *)&gState + 0x1c0) == 0x36) {
        __MapActor_TravelToAnimWait(0, 0x1d8, 0x258);
        __Func_8092adc(0, 0x4000, 10);
        __Func_80933f8(0xe8 << 17, -1, 0xa4 << 18, 1);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0), 0);
        OvlFunc_common0_18(((struct Actor *)__MapActor_GetActor(0))->pos.x, 0, 0x2be0000, 0xdf);
        __CopyMapTiles(0x5c, 0x2e, 0x5c, 0x28, 3, 2);
        ((struct Actor *)__MapActor_GetActor(0))->gravity = 0x8000;
        __Func_8092b08(0, 2);
        __Func_8092708(0, 6, -1);
        *(int *)(iwram_3001ebc__a3 + 0x1c0) = 0x203;
        __CutsceneWait(0x3c);
        __Func_8091e9c(8);
    } else {
        __Func_8092708(0, 6, -1);
    }
    __CutsceneEnd();
}
