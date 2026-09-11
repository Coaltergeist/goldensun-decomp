#ifndef GUARD_API_H
#define GUARD_API_H

/* Shared inline API layer over engine __-veneer entry points (pure forwarders). */

static inline void API_MapActor_SetSpeed(unsigned int a0, int a1, int a2)
{
    extern void __MapActor_SetSpeed(unsigned int, int, int);
    __MapActor_SetSpeed(a0, a1, a2);
}
static inline void API_MapActor_SetPos(int a0, int a1, int a2)
{
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(a0, a1, a2);
}
static inline void API_Func_8092adc(int a0, int a1, int a2)
{
    extern void __Func_8092adc(int, int, int);
    __Func_8092adc(a0, a1, a2);
}
static inline void API_MapActor_TravelTo(int a0, int a1, int a2)
{
    extern void __MapActor_TravelTo(int, int, int);
    __MapActor_TravelTo(a0, a1, a2);
}
static inline void API_MapActor_TravelToWait(int a0, int a1, int a2)
{
    extern void __MapActor_TravelToWait(int, int, int);
    __MapActor_TravelToWait(a0, a1, a2);
}
static inline void API_MapActor_Surprise(int a0, int a1)
{
    extern void __MapActor_Surprise(int, int);
    __MapActor_Surprise(a0, a1);
}
static inline void API_MapActor_Emote(int a0, int a1, int a2)
{
    extern void __MapActor_Emote(int, int, int);
    __MapActor_Emote(a0, a1, a2);
}

static inline void API_MapActor_SetAnim(int a0,int a1) { extern void __MapActor_SetAnim(int, int); __MapActor_SetAnim(a0,a1); }
static inline void API_WaitFrames(int a0) { extern void __WaitFrames(int); __WaitFrames(a0); }
static inline void API_Func_80933f8(int a0,int a1,int a2,int a3) { extern void __Func_80933f8(int, int, int, int); __Func_80933f8(a0,a1,a2,a3); }
static inline void API_Func_8091220(int a0,int a1) { extern void __Func_8091220(int, int); __Func_8091220(a0,a1); }
static inline void API_Func_8091200(int a0,int a1) { extern void __Func_8091200(int, int); __Func_8091200(a0,a1); }
static inline void API_Func_8091254(int a0) { extern void __Func_8091254(int); __Func_8091254(a0); }
static inline void API_CutsceneWait(int a0) { extern void __CutsceneWait(int); __CutsceneWait(a0); }
static inline void API_MapActor_DoAnim(int a0,int a1) { extern void __MapActor_DoAnim(int, int); __MapActor_DoAnim(a0,a1); }
static inline void API_MapActor_TravelToAnim(int a0,int a1,int a2) { extern void __MapActor_TravelToAnim(int, int, int); __MapActor_TravelToAnim(a0,a1,a2); }
static inline void API_MapActor_TravelToAnimWait(int a0,int a1,int a2) { extern void __MapActor_TravelToAnimWait(int, int, int); __MapActor_TravelToAnimWait(a0,a1,a2); }
static inline void API_MessageID(int a0) { extern void __MessageID(int); __MessageID(a0); }
static inline void API_ActorMessage_Wait(int a0,int a1,int a2) { extern void __ActorMessage_Wait(int, int, int); __ActorMessage_Wait(a0,a1,a2); }
static inline void API_ActorMessage(int a0,int a1) { extern void __ActorMessage(int, int); __ActorMessage(a0,a1); }
static inline void API_Func_80925cc(int a0,int a1) { extern void __Func_80925cc(int, int); __Func_80925cc(a0,a1); }
static inline void API_Func_809259c(int a0,int a1) { extern void __Func_809259c(int, int); __Func_809259c(a0,a1); }
static inline void API_ClearFlag(int a0) { extern void __ClearFlag(int); __ClearFlag(a0); }
static inline void API_SetFlag(int a0) { extern void __SetFlag(int); __SetFlag(a0); }

#endif /* GUARD_API_H */
