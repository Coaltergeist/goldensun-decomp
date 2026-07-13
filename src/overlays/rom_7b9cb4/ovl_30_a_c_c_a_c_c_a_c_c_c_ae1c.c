extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_SetPos(int actor, int x, int y);
extern void __SetFlag(int flag);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int frames);
extern void __MapTransitionIn(void);
extern void __WaitMapTransition(void);
extern void OvlFunc_932_20089ec(void);
extern void OvlFunc_932_20087e8(void);
extern void OvlFunc_932_2008a94(void);
extern void OvlFunc_932_20088d4(void);
extern unsigned int iwram_3001ebc;

void OvlFunc_932_200ae1c(void)
{
    unsigned int *mapStateAddress;
    unsigned int transitionOffset;
    unsigned int *mapState;

    __CutsceneStart();
    __MapActor_SetPos(9, 0, 0);
    __MapActor_SetPos(8, 0xa4 << 17, 0xd4 << 17);
    __SetFlag(0x323);
    OvlFunc_932_20089ec();
    __Func_800fe9c();
    __WaitFrames(1);
    mapStateAddress = &iwram_3001ebc;
    transitionOffset = 0xe0 << 1;
    mapState = (unsigned int *)*mapStateAddress;
    *(unsigned int *)((unsigned char *)mapState + transitionOffset) = 0x201;
    __MapTransitionIn();
    __WaitMapTransition();
    OvlFunc_932_20087e8();
    mapState = (unsigned int *)*mapStateAddress;
    *(unsigned int *)((unsigned char *)mapState + transitionOffset) = 0x204;
    __CutsceneEnd();
}

void OvlFunc_932_200ae84(void)
{
    unsigned int *mapStateAddress;
    unsigned int transitionOffset;
    unsigned int *mapState;

    __CutsceneStart();
    __MapActor_SetPos(0xa, 0, 0);
    __MapActor_SetPos(8, 0xf4 << 17, 0x8a << 16);
    __SetFlag(0x325);
    OvlFunc_932_2008a94();
    __Func_800fe9c();
    __WaitFrames(1);
    mapStateAddress = &iwram_3001ebc;
    transitionOffset = 0xe0 << 1;
    mapState = (unsigned int *)*mapStateAddress;
    *(unsigned int *)((unsigned char *)mapState + transitionOffset) = 0x201;
    __MapTransitionIn();
    __WaitMapTransition();
    OvlFunc_932_20088d4();
    mapState = (unsigned int *)*mapStateAddress;
    *(unsigned int *)((unsigned char *)mapState + transitionOffset) = 0x204;
    __CutsceneEnd();
}
