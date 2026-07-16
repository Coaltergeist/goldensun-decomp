typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int actor);
extern void __SetFlag(int flag);
extern void __CutsceneStart(void);
extern void __Func_808e118(void);
extern void __MessageID(int message);
extern void __CutsceneWait(int frames);
extern void __MapActor_Emote(int actor, int emote, int duration);
extern void __Func_809280c(int actor, int arg1, int arg2);
extern void __ActorMessage(int actor, int message);
extern void __MapActor_DoAnim(int actor, int animation);
extern void __Func_80925cc(int actor, int arg1);
extern void __Func_8092304(int actor, int arg1, int arg2);
extern void __Func_8092adc(int actor, int arg1, int arg2);
extern void __MapActor_SetBehavior(int actor, const void *behavior);
extern void __CutsceneEnd(void);
extern const u8 ActorCmd_ARRAY_944__02009314[];

static __inline__ void Emote(u8 actor, u8 emote, u8 duration)
{
    __MapActor_Emote(actor, emote << 1, duration);
}

void OvlFunc_967_2008308(void)
{
    u16 raw_position;
    s16 position;

    raw_position = *(u16 *)(__MapActor_GetActor(0) + 6);
    position = (raw_position + 0x2000) & -0x4000;
    __SetFlag(0x300);
    __CutsceneStart();
    __Func_808e118();
    __MessageID(0x26ec);
    __CutsceneWait(0x32);
    Emote(0xe, 0x81, 0x32);
    __Func_809280c(0xe, 0, 0x14);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 4);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0xe, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0xe, 0);
    if ((position << 16) == (int)0x80000000) {
        __Func_8092304(0, 0, 0x10);
        __Func_8092adc(0, 0xc000, 0);
        __CutsceneWait(0x14);
    }
    __MapActor_SetBehavior(0xe, ActorCmd_ARRAY_944__02009314);
    __CutsceneEnd();
}
