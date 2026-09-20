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

static inline void API_MapActor_Face(int a, int b, int c) { extern void __MapActor_Face(int, int, int); __MapActor_Face(a, b, c); }
static inline void API_MapActor_WaitMovement(int a) { extern void __MapActor_WaitMovement(int); __MapActor_WaitMovement(a); }
static inline void API_MapActor_Jump(int a, int b, int c) { extern void __MapActor_Jump(int, int, int); __MapActor_Jump(a, b, c); }
static inline void API_MapActor_TurnToFaceActor(int a, int b, int c) { extern void __MapActor_TurnToFaceActor(int, int, int); __MapActor_TurnToFaceActor(a, b, c); }
static inline void API_Func_80917d0(int a, int b) { extern void __Func_80917d0(int, int); __Func_80917d0(a, b); }
static inline void API_Func_8010704(int a, int b, int c, int d, int e, int f) { extern void __Func_8010704(int, int, int, int, int, int); __Func_8010704(a, b, c, d, e, f); }
static inline void API_Func_8012330(int a, int b, int c) { extern void __Func_8012330(int, int, int); __Func_8012330(a,b,c); }
static inline void API_Func_80105d4(int a, int b, int c, int d, int e, int f) { extern void __Func_80105d4(int, int, int, int, int, int); __Func_80105d4(a,b,c,d,e,f); }

static inline int API_GetFlag(int a) { extern int __GetFlag(int); return __GetFlag(a); }

static inline void API_MapActor_TravelBy(int a, int b, int c) { extern void __MapActor_TravelBy(int, int, int); __MapActor_TravelBy(a, b, c); }
static inline void API_Func_8092208(int a, int b, int c) { extern void __Func_8092208(int, int, int); __Func_8092208(a, b, c); }
static inline void API_Func_80933d4(unsigned int a, unsigned int b) { extern void __Func_80933d4(unsigned int, unsigned int); __Func_80933d4(a, b); }

static inline void *API_CreateActor(int a, int x, int y, int z) { extern void *__CreateActor(int, int, int, int); return __CreateActor(a, x, y, z); }
static inline void API_Actor_TravelTo(void *actor, int x, int y, int z) { extern void __Actor_TravelTo(void *, int, int, int); __Actor_TravelTo(actor, x, y, z); }
static inline void API_Func_8012078(int a, int b, int c, int d) { extern void __Func_8012078(int, int, int, int); __Func_8012078(a, b, c, d); }
static inline void API_Func_80922c4(int a, int b, int c) { extern void __Func_80922c4(int, int, int); __Func_80922c4(a, b, c); }
static inline void API_Func_8092304(unsigned int a, unsigned int b, unsigned int c) { extern void __Func_8092304(unsigned int, unsigned int, unsigned int); __Func_8092304(a, b, c); }
static inline void API_Func_809233c(int a, int b, int c, int d) { extern void __Func_809233c(int, int, int, int); __Func_809233c(a, b, c, d); }
static inline void API_Func_80931ec(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
    extern void __Func_80931ec(int, int, int, int, int, int, int, int, int, int, int);
    __Func_80931ec(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}
static inline void API_Func_8092a1c(int a, int b, void *c) { extern void __Func_8092a1c(int, int, void *); __Func_8092a1c(a, b, c); }
static inline void API_Func_80118a8(int a) { extern void __Func_80118a8(int); __Func_80118a8(a); }
static inline void API_Func_80118c0(int a) { extern void __Func_80118c0(int); __Func_80118c0(a); }
static inline void API_DeleteActor(int a) {
    extern void __DeleteActor(int);
    __DeleteActor(a);
}

static inline void API_Func_801776c(int a, int b)
{
    extern void __Func_801776c(int, int);
    __Func_801776c(a, b);
}

static inline void API_CutsceneStart(void)
{
    extern void __CutsceneStart(void);
    __CutsceneStart();
}
static inline void API_CutsceneEnd(void)
{
    extern void __CutsceneEnd(void);
    __CutsceneEnd();
}


/* Map overlay coordinate and call adapters; no assembly or scheduling barriers. */
static inline void API_Func_808edac(int a0, int a1, int a2)
{
    extern void __Func_808edac(int, int, int);
    __Func_808edac(a0, a1, a2);
}

static inline void CallFunc_8010560(int b, int c, void *a) {
    extern void __Func_8010560(void *, int, int);
    __Func_8010560(a, b, c);
}

static inline void MapActor_SetPos17(int x, int y, int actor) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(actor, x << 17, y << 17);
}

static inline void MapActor_SetPos18(int x, int y, int actor) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(actor, x << 18, y << 18);
}

static inline void MapActor_SetPos17_15(int x, int y, int actor) {
    extern void __MapActor_SetPos(int, int, int);
    __MapActor_SetPos(actor, x << 17, y << 15);
}

static inline void MapActor_Func_8092adc(int x, int actor, int z) {
    extern void __Func_8092adc(int, int, int);
    __Func_8092adc(actor, x << 6, z);
}

static inline void API_CopyMapTiles(int a, int b, int c, int d, int e, int f) { extern void __CopyMapTiles(int, int, int, int, int, int); __CopyMapTiles(a, b, c, d, e, f); }
static inline void API_Func_8093500(int a, int b) { extern void __Func_8093500(int, int); __Func_8093500(a, b); }
static inline void API_Func_8092b08(int a, int b) { extern void __Func_8092b08(int, int); __Func_8092b08(a, b); }
static inline void API_Func_8012350(void) { extern void __Func_8012350(void); __Func_8012350(); }
static inline void API_MapActor_PlayPendingSound(void) { extern void __MapActor_PlayPendingSound(void); __MapActor_PlayPendingSound(); }
static inline void API_SetCameraTarget(int a, int b) { extern void __SetCameraTarget(int, int); __SetCameraTarget(a, b); }
static inline void API_MapTransitionOut(void) { extern void __MapTransitionOut(void); __MapTransitionOut(); }
static inline void API_Func_8093530(void) { extern void __Func_8093530(void); __Func_8093530(); }
static inline void API_Func_8091e9c(int a) { extern void __Func_8091e9c(int); __Func_8091e9c(a); }
static inline void API_MapActor_SetIdle(int a) { extern void __MapActor_SetIdle(int); __MapActor_SetIdle(a); }
static inline void API_MapActor_SetBehavior(int a, int b) { extern void __MapActor_SetBehavior(int, int); __MapActor_SetBehavior(a, b); }
static inline void API_MapActor_WaitScript(int a) { extern void __MapActor_WaitScript(int); __MapActor_WaitScript(a); }
static inline int API_StartTask(void (*task)(void), unsigned int priority) { extern int __StartTask(void (*)(void), unsigned int); return __StartTask(task, priority); }
static inline int API_StopTask(void (*task)(void)) { extern int __StopTask(void (*)(void)); return __StopTask(task); }
static inline void API_MapTransitionIn(void) { extern void __MapTransitionIn(void); __MapTransitionIn(); }
static inline void API_WaitMapTransition(void) { extern void __WaitMapTransition(void); __WaitMapTransition(); }

static inline void API_PlaySound(int a) { extern void __PlaySound(int a); __PlaySound(a); }

#endif /* GUARD_API_H */
