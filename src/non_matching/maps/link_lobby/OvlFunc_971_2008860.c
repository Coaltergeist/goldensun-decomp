static inline void API_ClearFlag(int a0) { extern void __ClearFlag(int); __ClearFlag(a0); }
static inline void API_CutsceneEnd(void)
{
    extern void __CutsceneEnd(void);
    __CutsceneEnd();
}
static inline void API_CutsceneStart(void)
{
    extern void __CutsceneStart(void);
    __CutsceneStart();
}
static inline void API_Func_80118a8(int a) { extern void __Func_80118a8(int); __Func_80118a8(a); }
static inline void API_Func_80118c0(int a) { extern void __Func_80118c0(int); __Func_80118c0(a); }
static inline int API_GetFlag(int a) { extern int __GetFlag(int); return __GetFlag(a); }
static inline void API_MapActor_Face(int a, int b, int c) { extern void __MapActor_Face(int, int, int); __MapActor_Face(a, b, c); }
static inline void API_MapActor_SetSpeed(unsigned int a0, int a1, int a2)
{
    extern void __MapActor_SetSpeed(unsigned int, int, int);
    __MapActor_SetSpeed(a0, a1, a2);
}
static inline void API_MapActor_TravelToAnim(int a0,int a1,int a2) { extern void __MapActor_TravelToAnim(int, int, int); __MapActor_TravelToAnim(a0,a1,a2); }
static inline void API_MapActor_WaitMovement(int a) { extern void __MapActor_WaitMovement(int); __MapActor_WaitMovement(a); }
static inline void API_MessageID(int a0) { extern void __MessageID(int); __MessageID(a0); }
static inline void API_SetFlag(int a0) { extern void __SetFlag(int); __SetFlag(a0); }
static inline int API_StartTask(void (*task)(void), unsigned int priority) { extern int __StartTask(void (*)(void), unsigned int); return __StartTask(task, priority); }
static inline int API_StopTask(void (*task)(void)) { extern int __StopTask(void (*)(void)); return __StopTask(task); }
static inline void API_WaitFrames(int a0) { extern void __WaitFrames(int); __WaitFrames(a0); }

struct CS971_StateView {
    unsigned char beforeActor[0x1f4];
    int actor;
    unsigned char beforeMode[0x33];
    unsigned char battleMode;
};
extern struct CS971_StateView CS971_State __asm__("gState");
extern unsigned char *CS971_Scene __asm__("iwram_3001ebc");
struct CS971_PacketView { unsigned short firstE, x, secondE, c; };
extern struct CS971_PacketView CS971_Packet __asm__("ewram_2002224");
extern unsigned char CS971_Restore[] __asm__("ewram_2018000");
extern void *CS971_Allocate(int, unsigned int) __asm__("__galloc_ewram");
extern void CS971_Free(int) __asm__("__gfree");
extern void *CS971_ShowBox(unsigned int, int, int, unsigned int) __asm__("__Func_8017658");
extern void CS971_CloseBox(void *, int) __asm__("__CloseUIBox");
extern int CS971_ShowActorMessage(int, int) __asm__("__ShowActorMessage_NoWait");
extern int CS971_TaskStatus(void (*)(void), unsigned int) __asm__("__Func_8004358");
extern void CS971_Destination(unsigned short, unsigned short) __asm__("__Func_8091f90");
extern void CS971_ReturnDestination(unsigned short, unsigned short) __asm__("__Func_8091fa8");
extern void CS971_StartBattle(int, int) __asm__("__StartMapBattle");
extern void OvlFunc_971_2008148(void);
extern int OvlFunc_971_20087b0(void);
static inline void CS971_Half(unsigned short *p, int value) { *p = value; }
extern unsigned char CS971_Area[] __asm__(".Lcs971_linkArea");
extern unsigned char CS971_ExecX[] __asm__(".Lcs971_execX");
extern unsigned char CS971_ExecE[] __asm__(".Lcs971_execE");
extern unsigned char CS971_ExecC[] __asm__(".Lcs971_execC");
__asm__(".equ .Lcs971_linkArea, 0xbe\n.equ .Lcs971_execX, 0x58\n.equ .Lcs971_execE, 0x45\n.equ .Lcs971_execC, 0x43");

void OvlFunc_971_2008860(void)
{
    unsigned char *scene, *saved, *source, *dest;
    void *box;
    int cancelled, idleFrames, abortWait;
    unsigned int i;
    void (*task)(void);

    scene = CS971_Scene;
    cancelled = 0;
    box = 0;
    idleFrames = 0;
    if (API_GetFlag(0x173)) {
        API_CutsceneStart();
    } else {
        if (!API_GetFlag(0x200) || API_GetFlag(0x205))
            return;
        API_CutsceneStart();
        API_SetFlag(0x203);
        OvlFunc_971_2008128(2);
        if (!OvlFunc_971_200808c(2))
            box = CS971_ShowBox(0x2928, 5, 4, 1);
        while (!OvlFunc_971_200808c(2)) {
            API_WaitFrames(1);
            abortWait = 0;
            if (!API_GetFlag(0x201))
                abortWait = 1;
            if (API_GetFlag(0x205))
                abortWait = 1;
            if (!OvlFunc_971_200808c(2) && !OvlFunc_971_200808c(1)) {
                idleFrames++;
                if (idleFrames > 25)
                    abortWait = 1;
            } else {
                idleFrames = 0;
            }
            if (abortWait) {
                CS971_Half((unsigned short *)(scene + 0x182), 2);
                API_SetFlag(0x205);
                API_ClearFlag(0x201);
                API_ClearFlag(0x202);
                OvlFunc_971_2008128(4);
                cancelled = 1;
                API_ClearFlag(0x200);
                break;
            }
        }
        if (box != 0)
            CS971_CloseBox(box, 1);
        API_WaitFrames(5);
    }
    if (!cancelled) {
        saved = CS971_Allocate(0x36, 0x7c8);
        task = OvlFunc_971_2008148;
        API_StopTask(task);
        API_Func_80118a8(5);
        API_WaitFrames(8);
        API_Func_80118c0(5);
        if (API_GetFlag(0x173)) {
            API_MapActor_Face(8, CS971_State.actor, 0);
            API_MessageID(0x293b);
            CS971_ShowActorMessage(8, 0);
            API_WaitFrames(45);
            API_MapActor_SetSpeed(0, 0x10000, 0x8000);
            API_MapActor_TravelToAnim(0, 0xd8, 0xb8);
            API_MapActor_WaitMovement(0);
            API_MapActor_TravelToAnim(0, 0xd8, 0xa8);
            API_MapActor_WaitMovement(0);
        } else {
            API_MapActor_SetSpeed(0, 0x10000, 0x8000);
            API_MapActor_TravelToAnim(0, 0xd8, 0xc8);
            API_MapActor_WaitMovement(0);
            API_MapActor_SetSpeed(0, 0x1999, 0xccc);
            API_MapActor_TravelToAnim(0, 0xd8, 0xa8);
            if (OvlFunc_971_20087b0() < 0) {
                API_MapActor_SetSpeed(0, 0x10000, 0x8000);
                API_MapActor_TravelToAnim(0, 0xd8, 0xc8);
                API_Func_80118a8(5);
                API_WaitFrames(8);
                API_Func_80118c0(5);
                API_MapActor_WaitMovement(0);
                CS971_Free(0x36);
                OvlFunc_971_2008128(0);
                OvlFunc_971_2008128(4);
                API_StartTask(task, 0xc80);
                CS971_TaskStatus(task, 1);
                API_ClearFlag(0x201);
                API_ClearFlag(0x202);
                API_ClearFlag(0x303);
                API_ClearFlag(0x203);
                API_ClearFlag(0x200);
                CS971_Half((unsigned short *)(scene + 0x182), 2);
                goto end;
            }
            API_MapActor_SetSpeed(0, 0x8000, 0x4000);
            API_MapActor_WaitMovement(0);
        }
        if (API_GetFlag(0x173)) {
            CS971_Destination((unsigned int)CS971_Area, 8);
            CS971_ReturnDestination((unsigned int)CS971_Area, 9);
        } else {
            CS971_Destination((unsigned int)CS971_Area, 10);
            CS971_ReturnDestination((unsigned int)CS971_Area, 11);
        }
        CS971_State.battleMode = 4;
        CS971_StartBattle(1, 1);
        CS971_Packet.x = (unsigned int)CS971_ExecX;
        CS971_Packet.firstE = (unsigned int)CS971_ExecE;
        CS971_Packet.secondE = (unsigned int)CS971_ExecE;
        CS971_Packet.c = (unsigned int)CS971_ExecC;
        source = saved;
        dest = CS971_Restore;
        i = 0;
        do {
            *dest++ = *source++;
            i++;
        } while (i <= 0x7c7);
        CS971_Free(0x36);
    }
end:
    API_CutsceneEnd();
}
