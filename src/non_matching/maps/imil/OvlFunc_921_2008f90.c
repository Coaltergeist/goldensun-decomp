void OvlFunc_921_20096c8(void);
extern void __MapActor_SetBehavior(int, void *);

void OvlFunc_921_2008f90(void)
{
    void *actor;
    extern unsigned char iwram_3001ebc[];
    extern void __MapActor_TravelToAnim(int, int, int);
    extern int __MapActor_WaitScript(int);
    extern void __MapActor_RunScript(int, void *);
    extern void __MapActor_SetIdle(int);
    extern void __Func_8093530(void);
    extern void __Func_8091220(int, int);
    extern void __Func_8091200(int, int);
    extern void __Func_8091254(int);

    __CutsceneStart();
    API_MapActor_SetPos(3, 0xb6 << 16, 0x96 << 16);
    API_Func_80933f8(0x8d << 16, -1, 0xdd << 16, 0);
    API_WaitFrames(1);
    API_Func_80933d4(0x4ccc, 0x999);
    API_Func_80933f8(0x8c << 16, -1, 0xa4 << 16, 1);

    *(int *)((char *)*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = -0xc0;
    *(int *)((char *)*(unsigned char **)iwram_3001ebc + (0xa2 << 2)) = 0x28;

    __MapTransitionIn();
    API_MapActor_SetSpeed(0, 0x6666, 0x3333);
    API_MapActor_SetSpeed(1, 0x6666, 0x3333);
    API_MapActor_SetSpeed(2, 0x6666, 0x3333);
    API_MapActor_TravelToAnimWait(0, 0x8e, 0xdd);
    API_Func_8092adc(0, 0xd0 << 8, 0);

    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(1, *(int *)((char *)actor + 8), *(int *)((char *)actor + 0x10));
    }
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        API_MapActor_SetPos(2, *(int *)((char *)actor + 8), *(int *)((char *)actor + 0x10));
    }

    __MapActor_TravelToAnim(1, 0x96, 0xea);
    API_MapActor_TravelToAnimWait(2, 0x86, 0xea);
    API_MapActor_SetAnim(1, 1);

    {
        extern unsigned char gScript_921__0200a74c[];
        API_Func_8092a1c(0, 0x10003, gScript_921__0200a74c);
        API_Func_8092a1c(1, 0x10003, gScript_921__0200a74c);
        API_Func_8092a1c(2, 0x10003, gScript_921__0200a74c);
    }

    __Func_8093530();

    {
        extern unsigned char gScript_921__0200a5ec[];
        __MapActor_SetBehavior(9, gScript_921__0200a5ec);
        __CutsceneWait(0x28);
        API_MapActor_Surprise(3, 0x81 << 1);
        __CutsceneWait(0x28);
        API_Func_809259c(3, 1);
        __MessageID(0x155c);
        API_ActorMessage_Wait(3, 0, 0x14);
        __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    }

    API_ActorMessage_Wait(9, 0, 0x14);
    API_Func_8092adc(3, 0x80 << 8, 0x14);
    API_Func_8092adc(8, 0, 0xa);
    API_MapActor_DoAnim(8, 4);
    API_ActorMessage_Wait(8, 0, 0x28);
    API_MapActor_DoAnim(3, 3);
    __CutsceneWait(0xa);
    API_Func_8092adc(3, 0x80 << 7, 0);
    API_Func_8092adc(8, 0xc0 << 6, 0x14);
    API_ActorMessage_Wait(3, 0, 0xa);

    {
        extern unsigned char gScript_921__0200a5ec[];
        __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    }

    OvlFunc_921_20096c8();
    API_MapActor_Emote(3, 0x101, 0x3c);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_ActorMessage_Wait(9, 0, 0x14);
    API_MapActor_Emote(8, 0x105, 0x3c);
    API_MapActor_SetAnim(9, 7);

    {
        extern unsigned char Lm921_31c0[] __asm__(".Lm921_31c0");
        CallFunc_8010560(10, 0x45, Lm921_31c0);
    }

    __CutsceneWait(0xa);
    API_Func_809259c(3, 2);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_Func_809259c(9, 1);
    __CutsceneWait(0x28);
    API_MapActor_SetAnim(9, 8);

    {
        extern unsigned char Lm921_31d6[] __asm__(".Lm921_31d6");
        CallFunc_8010560(10, 0x45, Lm921_31d6);
    }

    __CutsceneWait(0x28);
    API_MapActor_DoAnim(3, 3);
    __CutsceneWait(0x14);
    API_Func_8092adc(8, 0, 0x14);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage_Wait(8, 0, 0xa);
    API_MapActor_Emote(3, 0x101, 0x1e);
    API_Func_8092adc(3, 0x80 << 8, 0xa);
    API_MapActor_SetAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 0xa);
    API_MapActor_DoAnim(8, 3);
    __CutsceneWait(0x14);
    API_MapActor_DoAnim(3, 3);
    __CutsceneWait(0x28);
    API_MapActor_SetSpeed(3, 0x80 << 9, 0x80 << 8);

    actor = __MapActor_GetActor(3);
    *(short *)((char *)actor + 0x64) = 0;
    {
        extern unsigned char gScript_921__0200a670[];
        __MapActor_SetBehavior(3, gScript_921__0200a670);
    }

    do {
        __WaitFrames(1);
    } while (*(short *)((char *)__MapActor_GetActor(3) + 0x64) != 0);

    API_Func_80933f8(0x8c << 16, -1, 0xc6 << 16, 1);
    __MapActor_WaitScript(3);
    API_MapActor_Emote(3, 0x101, 0x50);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_Func_809259c(3, 1);
    __CutsceneWait(0xa);
    __ActorMessage(3, 0);
    __PlaySound(0x83);
    __Func_8091220(0x80 << 9, 0);
    __Func_8091200(0x207e9f, 0);
    __Func_8091254(0xa);
    __WaitFrames(1);
    __PlaySound(0xdc);
    __WaitFrames(0x28);
    __Func_8091200(0x80 << 9, 0);
    __Func_8091254(0x3c);
    __WaitFrames(0x3c);
    API_MapActor_Surprise(3, 0x81 << 1);
    __CutsceneWait(0x14);
    API_Func_8092adc(3, 0, 0xa);
    API_MapActor_SetSpeed(3, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnimWait(3, 0xca, 0xc6);
    __CutsceneWait(0x28);
    API_Func_809259c(3, 2);
    __ActorMessage(3, 0);
    API_MapActor_DoAnim(3, 4);
    API_ActorMessage_Wait(3, 0, 0x14);
    API_MapActor_Surprise(3, 0x81 << 1);
    __CutsceneWait(0x28);
    API_ActorMessage_Wait(3, 0, 0x28);
    API_MapActor_Emote(3, 0x80 << 1, 0x28);
    __ActorMessage(3, 0);

    __MapActor_SetIdle(0);
    __MapActor_SetIdle(1);
    __MapActor_SetIdle(2);
    API_MapActor_SetSpeed(3, 0xc0 << 10, 0xc0 << 9);

    actor = __MapActor_GetActor(3);
    *(short *)((char *)actor + 0x64) = 0;
    {
        extern unsigned char gScript_921__0200a6e0[];
        __MapActor_SetBehavior(3, gScript_921__0200a6e0);
    }

    do {
        __WaitFrames(1);
    } while (*(short *)((char *)__MapActor_GetActor(3) + 0x64) != 0);

    API_Func_8092adc(0, 0x80 << 7, 0);
    API_Func_8092adc(1, 0x80 << 7, 0);
    API_Func_8092adc(2, 0x80 << 7, 0xa);
    API_MapActor_SetSpeed(0, 0x80 << 11, 0x80 << 10);
    API_MapActor_SetSpeed(1, 0x80 << 11, 0x80 << 10);
    API_MapActor_SetSpeed(2, 0x80 << 11, 0x80 << 10);
    __PlaySound(0x98);

    *(unsigned char *)((char *)__MapActor_GetActor(0) + 0x5a) &= 0xfe;
    *(unsigned char *)((char *)__MapActor_GetActor(1) + 0x5a) &= 0xfe;
    *(unsigned char *)((char *)__MapActor_GetActor(2) + 0x5a) &= 0xfe;

    API_MapActor_TravelTo(0, 0x84, 0xce);
    API_MapActor_TravelTo(1, 0x88, 0xdd);
    API_MapActor_TravelTo(2, 0x7a, 0xee);

    __MapActor_WaitScript(3);
    __CutsceneWait(0x50);

    *(unsigned char *)((char *)__MapActor_GetActor(0) + 0x5a) |= 1;
    *(unsigned char *)((char *)__MapActor_GetActor(1) + 0x5a) |= 1;
    *(unsigned char *)((char *)__MapActor_GetActor(2) + 0x5a) |= 1;

    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(2, 0xcccc, 0x6666);

    {
        extern unsigned char gScript_921__0200a760[];
        __MapActor_SetBehavior(1, gScript_921__0200a760);
        __MapActor_RunScript(2, gScript_921__0200a760);
    }

    __CutsceneWait(0x14);

    *(int *)((char *)*(unsigned char **)iwram_3001ebc + (0xe0 << 1)) = 0x49;
    *(int *)((char *)*(unsigned char **)iwram_3001ebc + (0x17 << 3)) = 0x18;

    __SetFlag(0x82b);
    __CutsceneEnd();
}
