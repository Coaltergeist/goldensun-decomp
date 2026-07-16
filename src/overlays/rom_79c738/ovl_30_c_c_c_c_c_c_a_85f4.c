extern int __GetFlag(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int, int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_80921c4(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);
extern void __MapActor_SetPos(int, int, int);
extern unsigned char *iwram_3001ebc;
extern void __SetFlag(int);

static __inline__ void CallSpeedFirst(int actor)
{
    __MapActor_SetSpeed(actor, 0x9999, 0x4ccc);
}

static __inline__ void CallTravelFirst(int actor)
{
    __Func_80921c4(actor, 0x26e, 0x2fc);
}

static __inline__ void CallMoveShifted(int actor, int speed, int frames)
{
    __Func_8092adc(actor, speed << 8, frames);
}

static __inline__ void CallSpeedSecond(int actor)
{
    __MapActor_SetSpeed(actor, 0xcccc, 0x6666);
}

static __inline__ void CallTravelSecond(int actor)
{
    __Func_80921c4(actor, 0x23a, 0x2f6);
}

static __inline__ void CallSetPosZero(signed short zero, unsigned char actor)
{
    __MapActor_SetPos(actor, zero, zero);
}

void OvlFunc_909_20085f4(void)
{
    int offset;
    int *destination;

    if (__GetFlag(0x84e) != 0) {
        __CutsceneStart();
        __Func_809280c(0, 0x13, 0);
        CallSpeedFirst(0x13);
        CallTravelFirst(0x13);
        CallMoveShifted(0x13, 0xf0, 0x14);
        __MapActor_DoAnim(0x13, 3);
        __MapActor_DoAnim(0x11, 3);
        __CutsceneWait(0x14);
        __Func_809280c(0x13, 0, 0);
        __CutsceneWait(0x14);
        __MapActor_DoAnim(0x13, 3);
        __MessageID(0x1749);
        __Func_8093040(0x13, 0, 0xa);
        CallSpeedSecond(0x13);
        CallTravelSecond(0x13);
        CallSetPosZero(0, 0x13);
        offset = 0xe0;
        offset <<= 1;
        destination = (int *)(iwram_3001ebc + offset);
        offset += 0x49;
        *destination = offset;
        __SetFlag(0x85e);
        __SetFlag(0x333);
        __CutsceneEnd();
    }
}
