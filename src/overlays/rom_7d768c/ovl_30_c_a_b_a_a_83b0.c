typedef unsigned char u8;

extern u8 *__MapActor_GetActor(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern const u8 gScript_952__0200c570[];
extern void __MapActor_SetBehavior(int, const u8 *);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapActor_SetIdle(int);
extern void __CutsceneWait(int);
extern void __Func_80925cc(int, int);
extern void __MapActor_Emote(int, int, int);
extern void __Func_8092adc(int, int, int);

static __inline__ void CallFunc_8092adcShifted(int actor, int speed,
                                               signed short zero)
{
    __Func_8092adc(actor, speed << 8, zero);
}

void OvlFunc_952_20083b0(int actorId)
{
    u8 *actor;
    const u8 *script;
    int value;

    actor = __MapActor_GetActor(actorId);
    __CutsceneStart();
    script = gScript_952__0200c570;
    __MapActor_SetBehavior(actorId, script);
    __MessageID(0x2009);
    __ActorMessage(actorId, 0);
    value = 0x10000;
    __MapActor_SetIdle(actorId);
    *(int *)(actor + 0x1c) = value;
    *(int *)(actor + 0x18) = value;
    __CutsceneWait(0x1e);
    __Func_80925cc(actorId, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actorId, 2);
    __CutsceneWait(0x3c);
    __ActorMessage(actorId, 0);
    __CutsceneWait(0x14);
    __MapActor_Emote(actorId, 0x102, 0x3c);
    __Func_80925cc(actorId, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actorId, 2);
    __CutsceneWait(0x1e);
    __Func_80925cc(actorId, 2);
    __CutsceneWait(0x1e);
    __MapActor_SetBehavior(actorId, script);
    __ActorMessage(actorId, 0);
    CallFunc_8092adcShifted(actorId, 0xe0, 0);
    __CutsceneWait(0xa);
    *(int *)(actor + 0x1c) = value;
    *(int *)(actor + 0x18) = value;
    __MapActor_SetBehavior(actorId, script);
    __CutsceneEnd();
}
