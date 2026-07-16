typedef int s32;
typedef unsigned char u8;

extern void __Func_80933d4(s32, s32);
extern void __Func_80933f8(s32, s32, s32, s32);
extern void __Func_8093530(void);
extern void __CutsceneWait(s32);
extern void OvlFunc_943_2008bf0(void);
extern void __CopyMapTiles(s32, s32, s32, s32, s32, s32);
extern void __MapActor_SetPos(s32, s32, s32);
extern void __MapActor_SetSpeed(s32, s32, s32);
extern void __Func_80921c4(s32, s32, s32);
extern void __Func_809280c(s32, s32, s32);
extern void __MapActor_DoAnim(s32, s32);
extern void __Func_809259c(s32, s32);
extern void __MapActor_Emote(s32, s32, s32);
extern void __MessageID(s32);
extern void __Func_8093040(s32, s32, s32);
extern void __SetFlag(s32);

static __inline__ void StartMovement(s32 x, s32 z)
{
    __Func_80933f8(x << 16, -1, z << 18, 1);
}

static __inline__ void CopyTiles(s32 x, s32 y, s32 width, s32 height,
                                 u8 first_argument, s32 final_argument)
{
    __CopyMapTiles(x, y, width, height, first_argument, final_argument);
}

static __inline__ void SetActorPosition(s32 actor, s32 x, s32 z)
{
    __MapActor_SetPos(actor, x << 16, z << 18);
}

static __inline__ void SetActorSpeed(s32 actor)
{
    __MapActor_SetSpeed(actor, 0x13333, 0x9999);
}

static __inline__ void MoveActorTo(s32 actor, s32 position)
{
    __Func_80921c4(actor, position, 0x32e);
}

static __inline__ void EmoteActor(s32 emote, s32 actor, s32 duration)
{
    __MapActor_Emote(actor, emote << 1, duration);
}

void OvlFunc_943_20092f0(void)
{
    u8 copy_first;
    s32 copy_final;

    __Func_80933d4(0x19999, 0x3333);
    StartMovement(0xd8, 0xce);
    __Func_8093530();
    __CutsceneWait(0x14);
    OvlFunc_943_2008bf0();
    copy_first = 1;
    copy_final = 2;
    CopyTiles(0x1e, 0x6c, 0xd, 0x6c, copy_first, copy_final);
    __CutsceneWait(0xa);
    SetActorPosition(0x14, 0xd8, 0xc8);
    SetActorSpeed(0x14);
    MoveActorTo(0x14, 0xd8);
    __Func_809280c(0, 0x14, 0xa);
    __MapActor_DoAnim(0x14, 4);
    __Func_809259c(0x14, 2);
    EmoteActor(0x80, 0x14, 0x14);
    __Func_809280c(0x14, 0, 0x14);
    __Func_809259c(0x14, 2);
    __MessageID(0x1d8d);
    __Func_8093040(0x14, 0, 0x14);
    EmoteActor(0x81, 0x14, 0);
    __SetFlag(0x923);
}
