static inline void CS881_API_ActorMessage(int a0,int a1) { extern void CS881_ActorMessage(int, int) __asm__("__ActorMessage"); CS881_ActorMessage(a0,a1); }
static inline void CS881_API_ActorMessage_Wait(int a0,int a1,int a2) { extern void CS881_ActorMessage_Wait(int, int, int) __asm__("__ActorMessage_Wait"); CS881_ActorMessage_Wait(a0,a1,a2); }
static inline void CS881_API_CutsceneEnd(void)
{
    extern void CS881_CutsceneEnd(void) __asm__("__CutsceneEnd");
    CS881_CutsceneEnd();
}
static inline void CS881_API_CutsceneStart(void)
{
    extern void CS881_CutsceneStart(void) __asm__("__CutsceneStart");
    CS881_CutsceneStart();
}
static inline void CS881_API_CutsceneWait(int a0) { extern void CS881_CutsceneWait(int) __asm__("__CutsceneWait"); CS881_CutsceneWait(a0); }
static inline void CS881_API_Func_809259c(int a0,int a1) { extern void CS881_Func_809259c(int, int) __asm__("__Func_809259c"); CS881_Func_809259c(a0,a1); }
static inline void CS881_API_Func_80925cc(int a0,int a1) { extern void CS881_Func_80925cc(int, int) __asm__("__Func_80925cc"); CS881_Func_80925cc(a0,a1); }
static inline void CS881_API_Func_8092adc(int a0, int a1, int a2)
{
    extern void CS881_Func_8092adc(int, int, int) __asm__("__Func_8092adc");
    CS881_Func_8092adc(a0, a1, a2);
}
static inline void CS881_API_Func_80933d4(unsigned int a, unsigned int b) { extern void CS881_Func_80933d4(unsigned int, unsigned int) __asm__("__Func_80933d4"); CS881_Func_80933d4(a, b); }
static inline void CS881_API_Func_80933f8(int a0,int a1,int a2,int a3) { extern void CS881_Func_80933f8(int, int, int, int) __asm__("__Func_80933f8"); CS881_Func_80933f8(a0,a1,a2,a3); }
static inline void CS881_API_Func_8093530(void) { extern void CS881_Func_8093530(void) __asm__("__Func_8093530"); CS881_Func_8093530(); }
static inline void CS881_API_MapActor_Emote(int a0, int a1, int a2)
{
    extern void CS881_MapActor_Emote(int, int, int) __asm__("__MapActor_Emote");
    CS881_MapActor_Emote(a0, a1, a2);
}
static inline void CS881_API_MapActor_SetBehavior(int a, int b) { extern void CS881_MapActor_SetBehavior(int, int) __asm__("__MapActor_SetBehavior"); CS881_MapActor_SetBehavior(a, b); }
static inline void CS881_API_MapActor_SetPos(int a0, int a1, int a2)
{
    extern void CS881_MapActor_SetPos(int, int, int) __asm__("__MapActor_SetPos");
    CS881_MapActor_SetPos(a0, a1, a2);
}
static inline void CS881_API_MapActor_SetSpeed(unsigned int a0, int a1, int a2)
{
    extern void CS881_MapActor_SetSpeed(unsigned int, int, int) __asm__("__MapActor_SetSpeed");
    CS881_MapActor_SetSpeed(a0, a1, a2);
}
static inline void CS881_API_MapActor_Surprise(int a0, int a1)
{
    extern void CS881_MapActor_Surprise(int, int) __asm__("__MapActor_Surprise");
    CS881_MapActor_Surprise(a0, a1);
}
static inline void CS881_API_MapActor_TravelToAnimWait(int a0,int a1,int a2) { extern void CS881_MapActor_TravelToAnimWait(int, int, int) __asm__("__MapActor_TravelToAnimWait"); CS881_MapActor_TravelToAnimWait(a0,a1,a2); }
static inline void CS881_API_MapTransitionIn(void) { extern void CS881_MapTransitionIn(void) __asm__("__MapTransitionIn"); CS881_MapTransitionIn(); }
static inline void CS881_API_MessageID(int a0) { extern void CS881_MessageID(int) __asm__("__MessageID"); CS881_MessageID(a0); }
static inline void CS881_API_SetFlag(int a0) { extern void CS881_SetFlag(int) __asm__("__SetFlag"); CS881_SetFlag(a0); }
static inline void CS881_API_WaitFrames(int a0) { extern void CS881_WaitFrames(int) __asm__("__WaitFrames"); CS881_WaitFrames(a0); }
static inline void CS881_API_WaitMapTransition(void) { extern void CS881_WaitMapTransition(void) __asm__("__WaitMapTransition"); CS881_WaitMapTransition(); }

static inline void CS881_Half(unsigned short *p, int value) { *p = value; }

void OvlFunc_881_200a4a8(void)
{
    extern unsigned char CS_881_679c[] __asm__(".Lm881_679c");
    extern unsigned char gScript_881__0200cf20[];
    extern unsigned char CS881_State[] __asm__("gState");
    extern void CS881_Func_808c44c(void) __asm__("__Func_808c44c");
    extern void CS881_Func_808c4c0(void) __asm__("__Func_808c4c0");
    extern void CS881_Func_808f1c0(int, int) __asm__("__Func_808f1c0");
    extern int CS881_GiveItemMessage(int, int) __asm__("__Func_8091a58");
    extern void CS881_Func_80936a0(int, int) __asm__("__Func_80936a0");
    extern unsigned char *CS881_GetActor(unsigned int) __asm__("__MapActor_GetActor");
    extern void CS881_SpawnActor(int) __asm__("OvlFunc_881_200a768");
    unsigned char *actor;
    unsigned char *scriptState;
    unsigned char *flags;
    unsigned int stateBase;
    unsigned short destination;
    int updatedFlags;

    CS881_API_CutsceneStart();
    *(int *)CS_881_679c = 0x37;
    CS881_SpawnActor(0x37);
    CS881_API_MapTransitionIn();
    CS881_API_WaitMapTransition();
    CS881_Func_808c44c();
    actor = CS881_GetActor(0);
    if (actor != 0) {
        CS881_API_MapActor_SetPos(*(int *)CS_881_679c, *(int *)(actor + 0x8), *(int *)(actor + 0x10));
    }
    CS881_API_MapActor_SetSpeed(*(int *)CS_881_679c, 0x19999, 0xcccc);
    CS881_API_MapActor_TravelToAnimWait(*(int *)CS_881_679c, 0x1768, 0xd78);
    CS881_API_Func_8092adc(*(int *)CS_881_679c, 0, 20);
    CS881_API_MapActor_Emote(*(int *)CS_881_679c, 0x100, 0x3c);
    CS881_API_Func_809259c(*(int *)CS_881_679c, 2);
    CS881_API_MessageID(0x263c);
    CS881_API_ActorMessage_Wait((*(int *)CS_881_679c | 0x1000), 0, 10);
    CS881_API_Func_8092adc(0, 0, 0);
    CS881_Func_808c4c0();
    CS881_Func_80936a0(0x16666, 10);
    CS881_API_Func_80933d4(0x80000, 0x10000);
    CS881_API_Func_80933f8(0x17880000, -1, 0xd680000, 1);
    CS881_API_Func_8093530();
    CS881_API_CutsceneWait(0x28);
    CS881_Func_808c44c();
    CS881_API_MapActor_Surprise(*(int *)CS_881_679c, 0x102);
    CS881_API_CutsceneWait(0x3c);
    CS881_API_Func_80925cc(*(int *)CS_881_679c, 1);
    CS881_API_ActorMessage_Wait((*(int *)CS_881_679c | 0x3000), 0, 0x28);
    CS881_API_MapActor_TravelToAnimWait(*(int *)CS_881_679c, 0x1768, 0xd48);
    CS881_API_MapActor_TravelToAnimWait(*(int *)CS_881_679c, 0x1794, 0xd48);
    CS881_API_Func_8092adc(*(int *)CS_881_679c, 0x3000, 20);
    CS881_API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    CS881_API_MapActor_SetBehavior(0, (int)gScript_881__0200cf20);
    CS881_API_CutsceneWait(20);
    CS881_API_Func_80925cc(*(int *)CS_881_679c, 1);
    CS881_API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 10);
    for (;;) {
        scriptState = CS881_GetActor(0);
        scriptState += 0x64;
        if (*(short *)scriptState != 0) break;
        CS881_API_WaitFrames(1);
    }
    CS881_API_Func_8092adc(0, 0x4000, 20);
    CS881_API_MapActor_Emote(*(int *)CS_881_679c, 0x106, 0);
    CS881_API_Func_80925cc(*(int *)CS_881_679c, 2);
    CS881_API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 10);
    CS881_API_Func_8092adc(*(int *)CS_881_679c, 0x8000, 10);
    CS881_API_ActorMessage(*(int *)CS_881_679c, 0);
    CS881_API_Func_8092adc(0, 0, 20);
    flags = CS881_GetActor(*(int *)CS_881_679c);
    flags += 0x5a;
    *flags = (0xfe & *flags);
    CS881_API_MapActor_TravelToAnimWait(*(int *)CS_881_679c, 0x178c, 0xd48);
    CS881_API_CutsceneWait(1);
    flags = CS881_GetActor(*(int *)CS_881_679c);
    flags += 0x5a;
    *flags = (*flags | 1);
    CS881_API_CutsceneWait(20);
    flags = CS881_GetActor(*(int *)CS_881_679c);
    flags += 0x5a;
    *flags = (0xfe & *flags);
    CS881_API_MapActor_TravelToAnimWait(*(int *)CS_881_679c, 0x1794, 0xd48);
    CS881_API_CutsceneWait(1);
    flags = CS881_GetActor(*(int *)CS_881_679c);
    flags += 0x5a;
    updatedFlags = 1 | *flags;
    *flags = updatedFlags;
    CS881_Func_808f1c0(0xf2, 3);
    CS881_GiveItemMessage(0xf2, 0);
    CS881_API_Func_80925cc(*(int *)CS_881_679c, 1);
    CS881_API_MessageID(0x2642);
    CS881_API_ActorMessage_Wait(*(int *)CS_881_679c, 0, 10);
    CS881_API_Func_8092adc(*(int *)CS_881_679c, 0x3000, 0);
    CS881_Func_808c4c0();
    CS881_Func_80936a0(0x10000, 10);
    CS881_API_CutsceneWait(20);
    CS881_API_SetFlag(0x234);
    CS881_API_SetFlag(0x9bf);
    stateBase = (unsigned int)CS881_State;
    destination = 2;
    *(unsigned short *)(stateBase + 0x1c4) = destination;
    CS881_Half((unsigned short *)(stateBase + 0x1c6), 0x4e);
    CS881_API_CutsceneEnd();
}
