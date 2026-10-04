extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __CutsceneStart(void);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __ActorMessage(int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8093054(int, int);

void OvlFunc_960_2008838(void)
{
    unsigned char *actor;

    if (__GetFlag(0x9a0) == 0)
        return;
    if (__GetFlag(0x1b7) != 0)
        return;
    if (__GetFlag(0x9b0) == 0)
        return;

    __SetFlag(0x9b5);
    __CutsceneStart();
    __MessageID(0x2633);

    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_SetPos(0xd, *(int *)(actor + 0x8), *(int *)(actor + 0x10));

    __MapActor_Face(0xd, 0xc000, 0);
    __MapActor_TravelToAnimWait(0, 0x1b8, 0x4e8);
    __Func_8092adc(0xd, 0x4000, 0);
    __MapActor_TravelToAnimWait(0, 0x1bc, 0x4d8);
    __MapActor_Emote(0, 0x100, 0x28);
    __Func_8092adc(0, 0x4000, 0x1e);
    __MapActor_DoAnim(0xd, 4);
    __ActorMessage(0xd, 0);
    __MapActor_Emote(0, 0x105, 0x3c);
    __MapActor_Emote(0xd, 0x105, 0x3c);
    __ActorMessage(0xd, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(0xd, 2);
    __ActorMessage(0xd, 0);
    __Func_8092adc(0xd, 0xc000, 0x1e);
    __Func_8093054(0xd, 0);
    __CutsceneWait(0x1e);
    __MapActor_Emote(0xd, 0x106, 0x3c);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0xd, 3);
    __ActorMessage(0xd, 0);
    __MapActor_SetSpeed(0xd, 0xb333, 0x5999);
    __MapActor_TravelToAnimWait(0xd, 0x1b8, 0x4e8);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0, 3);
    __MapActor_SetAnim(0xd, 2);

    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(0xd, *(short *)(actor + 0xa), *(short *)(actor + 0x12));

    __MapActor_WaitMovement(0xd);
    __MapActor_SetPos(0xd, 0, 0);
    __CutsceneEnd();
}
