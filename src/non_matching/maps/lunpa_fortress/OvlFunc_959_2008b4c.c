void OvlFunc_959_2008b4c(void) {
    void *r0;
    __Func_8010704(0xf, 0x14, 1, 1, 0xf, 0x16);
    __Func_8010704(0x11, 0x17, 1, 3, 0xf, 0x17);
    r0 = __MapActor_GetActor(0xc);
    if (r0 != 0) {
        __Actor_SetSpriteFlags(r0, 0);
        *(unsigned char *)((char *)r0 + 0x55) = 0;
        *(unsigned char *)((char *)r0 + 0x23) = 2;
    }
}
