extern void __Func_8091e9c(int);
extern void __MapTransitionOut(void);

void OvlFunc_953_200a3e0(void)
{
    if (__GetFlag(5) != 0) {
        __SetFlag(0x16d);
        __Func_8079664(5);
        __AddPartyMember(3);
    }
    __CutsceneStart();
    __MapActor_SetPos(0xb, 0xb2 << 18, 0x93 << 18);
    __WaitFrames(1);
    __SetCameraTarget(0xb, 1);
    __MapActor_SetSpeed(0xb, 0x19999, 0xcccc);
    __MapActor_SetSpeed(0, 0x19999, 0xcccc);
    {
        void *actor = __MapActor_GetActor(0xb);
        *(unsigned short *)((char *)actor + 6) = 0;
    }
    __MapTransitionIn();
    __MapActor_SetAnim(0, 2);
    __MapActor_SetAnim(0xb, 2);
    __MapActor_TravelTo(0, 0xc3 << 2, 0x93 << 2);
    __MapActor_TravelToWait(0xb, 0xcb << 2, 0x93 << 2);
    __MapActor_TravelTo(0, 0xdc << 2, 0x93 << 2);
    __MapActor_TravelToWait(0xb, 0xe4 << 2, 0x93 << 2);
    __MapActor_TravelTo(0, 0xf5 << 2, 0x93 << 2);
    __MapActor_TravelTo(0xb, 0xfd << 2, 0x93 << 2);
    __MapTransitionOut();
    __WaitMapTransition();
    if (__GetFlag(0x90f) != 0) {
        __Func_8091e9c(0x1f);
    } else {
        __Func_8091e9c(0x41);
    }
}
