typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;

extern u8 *__MapActor_GetActor(int);
extern void __SetFlag(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __Func_808e118(void);
extern void __MessageID(int);
extern void __CutsceneWait(int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_809280c(int, int, int);
extern void __ActorMessage(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8092304(int, int, int);
extern void __Func_8092adc(int, int, int);
extern const u8 ActorCmd_ARRAY_944__02009314[];
extern void __MapActor_SetBehavior(int, const u8 *);

void OvlFunc_967_2008308(void)
{
    unsigned int position;

    position = *(u16 *)(__MapActor_GetActor(0) + 6);
    position += 0x2000;
    position &= 0xffffc000;
    __SetFlag(0x300);
    __CutsceneStart();
    __Func_808e118();
    __MessageID(0x26ec);
    __CutsceneWait(0x32);
    __MapActor_Emote(0xe, 0x102, 0x32);
    __Func_809280c(0xe, 0, 0x14);
    __ActorMessage(0xe, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0xe, 4);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(0xa);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x1e);
    __ActorMessage(0xe, 0);
    __CutsceneWait(0xa);
    __MapActor_DoAnim(0xe, 3);
    __CutsceneWait(0x14);
    position = (s16)position;
    __ActorMessage(0xe, 0);
    if ((position << 16) == 0x80000000) {
        __Func_8092304(0, 0, 0x10);
        __Func_8092adc(0, 0xc000, 0);
        __CutsceneWait(0x14);
    }
    __MapActor_SetBehavior(0xe, ActorCmd_ARRAY_944__02009314);
    __CutsceneEnd();
}
