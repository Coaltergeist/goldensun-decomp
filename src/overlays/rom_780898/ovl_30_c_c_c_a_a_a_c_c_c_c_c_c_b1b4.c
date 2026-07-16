typedef unsigned char u8;
typedef unsigned short u16;

extern u8 gScript_883__0200e65c[];
extern void __CutsceneStart(void);
extern u8 *__MapActor_GetActor(int);
extern void __Actor_SetSpriteFlags(u8 *, int);
extern void __MapActor_SetAnim(int, int);
extern void __WaitFrames(int);
extern void __Func_8012330(int, int, int);
extern void __MapActor_SetBehavior(int, u8 *);
extern void __MapActor_RunScript(int, u8 *);
extern void __MapActor_Emote(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8092adc(int, int, int);
extern void __MessageID(int);
extern void __Func_8093040(int, int, int);
extern void __Func_809280c(int, int, int);
extern void __ActorMessage(int, int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);

static __inline__ void Call8012330(int first, int second, int third)
{
    __Func_8012330(first, second, third);
}

static __inline__ void Emote(u8 actor, u8 emote, u8 duration)
{
    __MapActor_Emote(actor, emote << 1, duration);
}

void OvlFunc_883_200b1b4(void)
{
    u8 *script;

    __CutsceneStart();
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xc), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xd), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0xe), 0);
    __MapActor_SetAnim(0xc, 0);
    __MapActor_SetAnim(0xd, 0);
    __MapActor_SetAnim(0xe, 0);
    __WaitFrames(0x14);
    Call8012330(0x20000, 0x20000, 0x10000);
    script = gScript_883__0200e65c;
    __MapActor_SetBehavior(0xc, script);
    __WaitFrames(10);
    __MapActor_SetBehavior(0xd, script);
    Call8012330(-1, -1, 0xe666);
    __WaitFrames(0x14);
    __MapActor_RunScript(0xe, script);
    Emote(0xb, 0x80, 0x28);
    __Func_80925cc(0xb, 2);
    __Func_8092adc(0xb, 0xd000, 10);
    __MessageID(0x1c90);
    __Func_8093040(0xb, 0, 0x28);
    __Func_809280c(0xb, 0, 0x14);
    __ActorMessage(0xb, 0);
    __Func_8092adc(0xb, 0x8000, 10);
    __SetFlag(0x305);
    __CutsceneEnd();
}
