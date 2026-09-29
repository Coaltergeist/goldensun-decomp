extern void OvlFunc_959_200d4dc(void);

extern void OvlFunc_959_2008c78(void);

extern void OvlFunc_959_200a26c(void);

extern void OvlFunc_959_200a2a0(void);

void OvlFunc_959_200d324(void)
{
    unsigned char *actor;

    *(int *)(*(int *)iwram_3001ebc + 0x1c0) = 0x200;
    OvlFunc_959_200d4dc();
    if (__GetFlag(0x943)) {
        OvlFunc_959_2008c78();
    }
    __SetFlag(0x217);
    __SetFlag(0x218);
    if (__GetFlag(0x944)) {
        __MapActor_SetPos(8, 0, 0);
        __ClearFlag(0x217);
    }
    if (__GetFlag(0x945)) {
        __MapActor_SetPos(9, 0, 0);
        OvlFunc_959_200a2d4();
    }
    if (__GetFlag(0x946)) {
        __MapActor_SetPos(10, 0, 0);
        __ClearFlag(0x218);
    }
    if (__GetFlag(0x947)) {
        OvlFunc_959_200a26c();
    }
    if (__GetFlag(0x948)) {
        OvlFunc_959_200a2a0();
    }
    __CutsceneStart();
    actor = (unsigned char *)__MapActor_GetActor(8);
    if (actor != 0) {
        *(actor + 0x23) = 2;
    }
    actor = (unsigned char *)__MapActor_GetActor(9);
    if (actor != 0) {
        *(actor + 0x23) = 2;
    }
    actor = (unsigned char *)__MapActor_GetActor(10);
    if (actor != 0) {
        *(actor + 0x23) = 2;
    }
    actor = (unsigned char *)__MapActor_GetActor(11);
    if (actor != 0) {
        __Actor_SetSpriteFlags(actor, 0);
    }
    *(actor + 0x23) = 2;
    actor = (unsigned char *)__MapActor_GetActor(12);
    if (actor != 0) {
        *(actor + 0x59) |= 0x10;
    }
    actor = (unsigned char *)__MapActor_GetActor(11);
    __Actor_SetSpriteFlags(actor, 0);
    __CutsceneEnd();
    __Func_80108c4(0xe00);
}
