typedef unsigned char u8;
typedef signed short s16;
extern u8 *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __Func_80921c4(int, int, int);
extern void __Func_8092848(int, int, int);
extern void __CutsceneWait(int);
extern void __MapActor_Surprise(int, int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __Func_80925cc(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);

void OvlFunc_882_2009a64(int arg0, int arg1)
{
    register int saved0 asm("r5") = arg0;
    register int saved1 asm("r6") = arg1;
    register int a0 asm("r0");
    register int a1 asm("r1");
    register int a2 asm("r2");
    u8 *actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_SetPos(0x16, *(int *)(actor + 8), *(int *)(actor + 0x10));
    a1 = 0x80;
    a2 = 0x80;
    a0 = 0x16;
    asm volatile("" : "+r"(a0), "+r"(a1), "+r"(a2));
    a1 <<= 9;
    a2 <<= 8;
    __MapActor_SetSpeed(a0, a1, a2);
    __Func_80921c4(0x16, saved0, saved1);
    __Func_8092848(0, 0x16, 0);
    __CutsceneWait(0x14);
    __MapActor_Surprise(0, 0x102);
    __CutsceneWait(0x28);
    __MessageID(0xe7d);
    __ActorMessage(0x16, 0);
    __Func_80925cc(0x16, 2);
    __ActorMessage(0x16, 0);
    __MapActor_DoAnim(0, 3);
    __MapActor_SetAnim(0x16, 2);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(0x16, *(s16 *)(actor + 0x0a), *(s16 *)(actor + 0x12));
    __MapActor_WaitMovement(0x16);
    __MapActor_SetPos(0x16, 0, 0);
}
