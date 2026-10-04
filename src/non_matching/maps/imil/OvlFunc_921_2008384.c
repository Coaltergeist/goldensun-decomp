extern unsigned char Lm921_31c0[] __asm__(".Lm921_31c0");
extern unsigned char Lm921_31d6[] __asm__(".Lm921_31d6");
extern unsigned char Lm921_2508[] __asm__(".Lm921_2508");
extern unsigned char gScript_921__0200a4f4[];
extern unsigned char gScript_921__0200a564[];

void OvlFunc_921_2008384(void)
{
    extern unsigned char *__MapActor_GetActor(int);
    extern void __Func_8010560(void *, int, int);
    extern void __MapActor_SetBehavior(int, void *);
    extern void __MapActor_SetIdle(int);
    extern void __MapActor_Emote(int, int, int);
    extern void __Func_809259c(int, int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_RunScript(int, void *);
    extern void __MapActor_Jump(int, int, int);
    extern int __SetFlag(int);

    if (__GetFlag(0x881)) {
        __CutsceneStart();
        __MapActor_Face(9, 0, 0);
        __CutsceneWait(10);
        __MessageID(0x1644);
        __Func_8093054(9, 0);
        __CutsceneEnd();
    } else if (__GetFlag(0x82b)) {
        __CutsceneStart();
        __MapActor_SetAnim(9, 7);
        __Func_8010560(Lm921_31c0, 10, 0x45);
        __MessageID(0x156c);
        __ActorMessage(9, 0);
        __MapActor_SetAnim(9, 8);
        __Func_8010560(Lm921_31d6, 10, 0x45);
        __CutsceneEnd();
    } else {
        unsigned char *actor;

        __CutsceneStart();
        actor = __MapActor_GetActor(9);
        *(short *)(actor + 0x64) = 10;
        __MapActor_SetBehavior(9, gScript_921__0200a4f4);
        __MessageID(0x1534);
        __ActorMessage(9, 0);
        __MapActor_SetIdle(8);
        __MapActor_Emote(8, 0x100, 0x28);
        __Func_8092adc(8, 0xd0 << 8, 10);
        __Func_809259c(8, 2);
        __ActorMessage_Wait(8, 0, 0x14);
        __MapActor_SetBehavior(0, gScript_921__0200a564);
        __MapActor_SetSpeed(8, 0x19999, 0xcccc);
        __MapActor_RunScript(8, Lm921_2508);
        __CutsceneWait(0x28);
        __MapActor_Jump(8, 2, 0);
        __Func_809259c(8, 2);
        __MapActor_Surprise(8, 0x102);
        __CutsceneWait(0x3c);
        __ActorMessage_Wait(8, 0, 10);
        __Func_8092adc(8, 0xc0 << 6, 0x14);
        __Func_809259c(8, 2);
        __ActorMessage(8, 0);
        actor = __MapActor_GetActor(8);
        actor[0x59] ^= 2;
        __SetFlag(0x82c);
        __CutsceneEnd();
    }
}
