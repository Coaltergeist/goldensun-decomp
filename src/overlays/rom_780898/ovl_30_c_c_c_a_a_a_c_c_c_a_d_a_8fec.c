typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __WaitFrames(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_80921c4(int, int, int);
extern void __Func_8092848(int, int, int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __CutsceneWait(int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int, int, int);

static __inline__ void CallSetSpeedShifted(int actor, int horizontal,
                                           int vertical)
{
    __MapActor_SetSpeed(actor, horizontal << 9, vertical << 8);
}

static __inline__ void CallFunc_80921c4First(int actor, signed short position)
{
    __Func_80921c4(actor, position, 0x11b);
}

static __inline__ void CallFunc_80921c4Second(int actor, signed short position)
{
    __Func_80921c4(actor, position, 0x12f);
}

void OvlFunc_883_2008fec(void)
{
    u8 *source;
    u8 *actor;
    u8 *target;

    source = __MapActor_GetActor(0);
    actor = __MapActor_GetActor(5);
    __CutsceneStart();
    *(int *)(actor + 8) = *(int *)(source + 8);
    *(int *)(actor + 0xc) = *(int *)(source + 0xc);
    *(int *)(actor + 0x10) = *(int *)(source + 0x10);
    *(int *)(actor + 0x38) = 0x80000000;
    *(int *)(actor + 0x3c) = 0x80000000;
    *(int *)(actor + 0x40) = 0x80000000;
    *(int *)(actor + 0x24) = 0;
    *(int *)(actor + 0x28) = 0;
    *(int *)(actor + 0x2c) = 0;
    *(int *)(actor + 0x14) = *(int *)(source + 0xc);
    __WaitFrames(1);
    CallSetSpeedShifted(5, 0x80, 0x80);
    CallFunc_80921c4First(5, 0x6e);
    __Func_8092848(0, 5, 2);
    __MessageID(0xf39);
    if (*(int *)(source + 8) < *(int *)(actor + 8)) {
        __Func_8093040(0xa005, 0, 2);
    } else {
        __Func_8093040(0x8005, 0, 2);
    }
    __MapActor_DoAnim(0, 3);
    __CutsceneWait(2);
    __MapActor_SetAnim(5, 2);
    target = __MapActor_GetActor(0);
    if (target != 0) {
        __MapActor_TravelTo(5, *(s16 *)(target + 0xa),
                            *(s16 *)(target + 0x12));
    }
    __MapActor_WaitMovement(5);
    __MapActor_SetPos(5, 0, 0);
    CallFunc_80921c4Second(0, 0x6e);
    __CutsceneEnd();
}
