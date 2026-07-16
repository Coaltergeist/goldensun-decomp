typedef unsigned char u8;
typedef signed short s16;

extern u8 gState[];
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __MapActor_Emote(int, int, int);
extern void __CutsceneWait(int);
extern void __Func_809218c(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetIdle(int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_8092adc(int, int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __SetFlag(int);
extern void __Func_8010704(int, int, int, int, int, int);

static __inline__ void CallEmoteFirst(int actor, int value, int emote)
{
    __MapActor_Emote(actor, value << 1, emote);
}

static __inline__ void CallEmoteSecond(int actor, signed short value,
                                       int emote)
{
    __MapActor_Emote(actor, value << 1, emote);
}

void OvlFunc_939_2008eb0(void)
{
    int offset;

    offset = 0x93;
    offset <<= 2;
    if (*(s16 *)(gState + offset) == 0) {
        __CutsceneStart();
        CallEmoteFirst(8, 0x80, 2);
        CallEmoteSecond(9, 0x80, 0xf);
        __CutsceneWait(0x1e);
        __Func_809218c(8, 0x98, 0xa8);
        __Func_809218c(9, 0xa8, 0xa8);
        __MapActor_WaitMovement(8);
        __MapActor_WaitMovement(9);
        __MapActor_SetIdle(8);
        __MapActor_SetAnim(8, 0);
        __Func_8092adc(8, 0x3000, 0);
        __MapActor_SetIdle(9);
        __MapActor_SetAnim(9, 0);
        __Func_8092adc(9, 0x5000, 0);
        __MessageID(0x24da);
        __ActorMessage(8, 0);
        __SetFlag(0x240);
        __Func_8010704(6, 0xb, 1, 1, 7, 0xb);
        __Func_8010704(6, 0xb, 1, 1, 8, 0xb);
        __Func_8010704(6, 0xb, 1, 1, 9, 0xb);
        __CutsceneEnd();
    }
}
