extern void __Func_8092adc(int a, int b, int c);

extern int __MessageID(int msgId);

extern void __ActorMessage(int a, int b);

extern void __MapActor_DoAnim(int a, int b);

extern void __Func_809280c(int a, int b, int c);

extern void __CutsceneWait(int frames);

extern void __MapActor_SetAnim(int a, int b);

extern void __Func_809228c(int a, int b, int c);

extern void __MapActor_WaitMovement(int a);

extern void __Func_809218c(int a, int b, int c);

extern void __MapActor_SetPos(int a, int b, int c);

extern void *__MapActor_GetActor(int a);

extern void __MapActor_TravelTo(int a, int b, int c);

extern void __Func_8093500(int a, int b);

extern void __MapTransitionOut(void);

extern void __Func_8091e9c(int a);

void OvlFunc_941_2009760(void)
{
    void *actor;

    __Func_8092adc(1, 0xa0 << 7, 0);
    __MessageID(0x2558);
    __ActorMessage(1, 0);
    __MapActor_DoAnim(2, 3);
    __MessageID(0x2559);
    __ActorMessage(2, 0);
    __Func_809280c(0xd, 2, 0);
    __MapActor_DoAnim(0xd, 3);
    __CutsceneWait(0x14);
    __MessageID(0x255a);
    __ActorMessage(0xd, 0);
    __Func_8092adc(0xc, 0xc0 << 6, 0);
    __MapActor_DoAnim(0xc, 3);
    __CutsceneWait(0x1e);
    __MessageID(0x255b);
    __ActorMessage(0xc, 0);
    __MapActor_DoAnim(0xd, 3);
    __CutsceneWait(0x14);
    __MapActor_SetAnim(0, 3);
    __MapActor_SetAnim(1, 3);
    __MapActor_SetAnim(2, 3);
    __MapActor_SetAnim(3, 3);
    __CutsceneWait(0x50);
    __Func_809228c(0xd, -0x10, 0);
    __MapActor_WaitMovement(0xd);
    __MapActor_SetAnim(0xd, 1);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(0xd, 3);
    __Func_8092adc(0xd, 0xa0 << 7, 0);
    __CutsceneWait(0x1e);
    __MapActor_SetAnim(0, 3);
    __MapActor_SetAnim(1, 3);
    __MapActor_SetAnim(2, 3);
    __MapActor_SetAnim(3, 3);
    __Func_809218c(0xc, 0x98, 0x84 << 2);
    __CutsceneWait(0x14);
    __Func_809218c(0xd, 0xa0, 0x84 << 2);
    __MapActor_WaitMovement(0xc);
    __Func_809218c(0xc, 0xa8, 0xa0 << 2);
    __MapActor_WaitMovement(0xd);
    __Func_809218c(0xd, 0xa8, 0xa0 << 2);
    __Func_8092adc(0, 0xa0 << 7, 0);
    __Func_8092adc(2, 0xa0 << 7, 0);
    __Func_8092adc(3, 0xa0 << 7, 0);
    __Func_8092adc(1, 0xa0 << 7, 0);
    __CutsceneWait(0x14);
    __Func_8092adc(0, 0x80 << 7, 0);
    __Func_8092adc(2, 0x80 << 7, 0);
    __Func_8092adc(3, 0x80 << 7, 0);
    __Func_8092adc(1, 0x80 << 7, 0);
    __CutsceneWait(0xc8);
    __MapActor_SetPos(0xd, 0, 0);
    __MapActor_SetPos(0xc, 0, 0);
    __MapActor_SetAnim(1, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        short v1 = *(short *)((char *)actor + 0xa);
        short v2 = *(short *)((char *)actor + 0x12);
        __MapActor_TravelTo(1, v1, v2);
    }
    __MapActor_WaitMovement(1);
    __MapActor_SetPos(1, 0, 0);
    __MapActor_SetAnim(2, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        short v1 = *(short *)((char *)actor + 0xa);
        short v2 = *(short *)((char *)actor + 0x12);
        __MapActor_TravelTo(2, v1, v2);
    }
    __MapActor_WaitMovement(2);
    __MapActor_SetPos(2, 0, 0);
    __MapActor_SetAnim(3, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0) {
        short v1 = *(short *)((char *)actor + 0xa);
        short v2 = *(short *)((char *)actor + 0x12);
        __MapActor_TravelTo(3, v1, v2);
    }
    __MapActor_WaitMovement(3);
    __MapActor_SetPos(3, 0, 0);
    __CutsceneWait(0x1e);
    __Func_809228c(0, -0x10, 0);
    __MapActor_WaitMovement(0);
    __Func_8093500(0, 1);
    __Func_809218c(0, 0xa8, 0xa0 << 2);
    __CutsceneWait(0x3c);
    __MapTransitionOut();
    __Func_8091e9c(3);
}
