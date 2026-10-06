extern unsigned char *iwram_3001ebc;
extern void __Func_8091890(int);

void OvlFunc_898_20084a0(void)
{
    unsigned char *base;
    unsigned char *actor;

    base = iwram_3001ebc;
    if (__GetFlag(0x855) || !__GetFlag(0x856)) {
        __Func_8091e9c(*(short *)(base + (0xb6 << 1)) - 0x13);
        return;
    }

    __CutsceneStart();
    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(2, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }
    __MapActor_SetSpeed(2, 0xcccc, 0x6666);
    if (*(short *)(base + (0xb6 << 1)) == 0x14) {
        __MapActor_TravelToAnimWait(2, 0xc8 << 1, 0xe0 << 1);
    } else {
        __Func_80933d4(0xcccc, 0x1999);
        __Func_80933f8(0xe0 << 16, -1, 0xa2 << 16, 1);
        __MapActor_TravelToAnimWait(2, 0xe0, 0xa2);
        __Func_8093530();
    }
    __MapActor_TurnToFaceActor(0, 2, 0);
    __CutsceneWait(0x14);
    __MessageID(0x1327);
    __ActorMessage_Wait(0x9002, 0, 0x14);
    __MapActor_DoAnim(0, 3);
    if (OvlFunc_898_2008450() != 0) {
        __MessageID(0x132a);
        __ActorMessage(2, 0);
        OvlFunc_898_2008464();
        __WaitFrames(0x14);
    }
    __Func_8091890(2);
    __Func_8091e9c(*(short *)(base + (0xb6 << 1)) - 0x13);
    __MapTransitionOut();
    __WaitMapTransition();
    __CutsceneEnd();
}
