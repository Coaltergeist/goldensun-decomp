typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;

extern s32 __GetFlag(s32);
extern void __SetFlag(s32);
extern void __Func_8079664(s32);
extern void __AddPartyMember(s32);
extern void __CutsceneStart(void);
extern void __MapActor_SetPos(s32, s32, s32);
extern void __WaitFrames(s32);
extern void __SetCameraTarget(s32, s32);
extern void __MapActor_SetSpeed(s32, s32, s32);
extern u8 *__MapActor_GetActor(s32);
extern void __MapTransitionIn(void);
extern void __MapActor_SetAnim(s32, s32);
extern void __MapActor_TravelTo(s32, s32, s32);
extern void __Func_8092158(s32, s32, s32);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(s32);

static __inline__ void SetPosition(s32 actor, u8 x, u16 z)
{
    __MapActor_SetPos(actor, x << 18, z << 18);
}

static __inline__ void SetSpeed(s32 actor)
{
    __MapActor_SetSpeed(actor, 0x19999, 0xcccc);
}

static __inline__ void Travel(s32 actor, u8 x, u8 z)
{
    __MapActor_TravelTo(actor, x << 2, z << 2);
}

static __inline__ void TravelAlt(s32 actor, u8 x, u8 z)
{
    __Func_8092158(actor, x << 2, z << 2);
}

void OvlFunc_953_200a820(void)
{
    u8 *actor;
    int facing;

    if (__GetFlag(5) != 0) {
        __SetFlag(0x16d);
        __Func_8079664(5);
        __AddPartyMember(3);
    }
    __CutsceneStart();
    SetPosition(0xb, 0xd9, 0x93);
    __WaitFrames(1);
    __SetCameraTarget(0xb, 1);
    SetSpeed(0xb);
    SetSpeed(0);
    actor = __MapActor_GetActor(0xb);
    facing = 0x80;
    facing <<= 8;
    *(u16 *)(actor + 6) = facing;
    __MapTransitionIn();
    __MapActor_SetAnim(0, 2);
    __MapActor_SetAnim(0xb, 2);
    Travel(0, 0xc8, 0x93);
    TravelAlt(0xb, 0xc0, 0x93);
    Travel(0, 0xaf, 0x93);
    TravelAlt(0xb, 0xa7, 0x93);
    Travel(0, 0x96, 0x93);
    Travel(0xb, 0x8e, 0x93);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0x15);
}
