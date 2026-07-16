typedef unsigned char u8;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern int __GetFlag(int);
extern void __Func_80b0278(int, int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_809280c(int, int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80933d4(int, int);
extern void __Func_80933f8(int, int, int, int);
extern void __Func_8093530(void);
extern void __MapActor_RunScript(int, const void *);
extern const u8 gScript_921__0200a5ec[];

static __inline__ void CallMove17(int x, signed short direction, int z)
{
    __Func_80933f8(x << 17, direction, z << 17, 1);
}

static __inline__ void CallMove18(int x, signed short direction, int z)
{
    __Func_80933f8(x << 17, direction, z << 18, 1);
}

static __inline__ void CallFunc_8092adcShifted(int actor, int speed,
                                               int frames)
{
    __Func_8092adc(actor, speed << 7, frames);
}

void OvlFunc_921_20087a4(void)
{
    s16 position;

    position = *(s16 *)(__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x881) != 0) {
        if (((unsigned int)position << 16) + 0x5fff0000 <= 0x3ffe0000) {
            __Func_80b0278(0xa, 0xc);
        } else {
            __CutsceneStart();
            __Func_809280c(0xc, 0, 0);
            __CutsceneWait(0xa);
            __MessageID(0x164b);
            __ActorMessage(0xc, 0);
            CallFunc_8092adcShifted(0xc, 0x80, 0xa);
            __CutsceneEnd();
        }
    } else if (((unsigned int)position << 16) + 0x5fff0000 <=
               0x3ffe0000) {
        __CutsceneStart();
        __Func_80933d4(0x60000, 0xc000);
        CallMove17(0xd5, -1, 0xf6);
        __Func_8093530();
        __CutsceneWait(0x14);
        __MapActor_RunScript(0xc, gScript_921__0200a5ec);
        __MessageID(0x153e);
        __ActorMessage(0xc, 0);
        CallMove18(0xd5, -1, 0x9a);
        __Func_8093530();
        __CutsceneEnd();
    }
}
