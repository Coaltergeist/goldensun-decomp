typedef unsigned char u8;
typedef signed short s16;
extern void __CutsceneStart(void);
extern void __Func_809280c(int,int,int);
extern void __MapActor_SetAnim(int,int);
extern void __CutsceneWait(int);
extern void __Func_8092848(int,int,int);
extern void __MessageID(int);
extern void __ActorMessage(int,int);
extern u8 *__MapActor_GetActor(int);
extern void __MapActor_TravelTo(int,int,int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int,int,int);
extern void __SetFlag(int);
extern void __CutsceneEnd(void);
void OvlFunc_958_2008f44(void)
{
    u8 *actor;
    __CutsceneStart();
    __Func_809280c(11,0,0);
    __Func_809280c(0,11,0);
    __MapActor_SetAnim(0,1);
    __CutsceneWait(10);
    __Func_8092848(0,11,0);
    __MessageID(0x23d9);
    __ActorMessage(11,0);
    __MapActor_SetAnim(11,2);
    actor = __MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(11, *(s16 *)(actor + 0xa), *(s16 *)(actor + 0x12));
    __MapActor_WaitMovement(11);
    __MapActor_SetPos(11,0,0);
    __CutsceneWait(20);
    __SetFlag(0x9a0);
    __CutsceneEnd();
}
