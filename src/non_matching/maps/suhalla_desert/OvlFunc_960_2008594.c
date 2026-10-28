static inline void CS960_API_ActorMessage(int a0,int a1) { extern void CS960__ActorMessage(int, int) __asm__("__ActorMessage"); CS960__ActorMessage(a0,a1); }
static inline void CS960_API_CutsceneEnd(void)
{
    extern void CS960__CutsceneEnd(void) __asm__("__CutsceneEnd");
    CS960__CutsceneEnd();
}
static inline void CS960_API_CutsceneStart(void)
{
    extern void CS960__CutsceneStart(void) __asm__("__CutsceneStart");
    CS960__CutsceneStart();
}
static inline void CS960_API_CutsceneWait(int a0) { extern void CS960__CutsceneWait(int) __asm__("__CutsceneWait"); CS960__CutsceneWait(a0); }
static inline void CS960_API_Func_80925cc(int a0,int a1) { extern void CS960__Func_80925cc(int, int) __asm__("__Func_80925cc"); CS960__Func_80925cc(a0,a1); }
static inline void CS960_API_Func_8092adc(int a0, int a1, int a2)
{
    extern void CS960__Func_8092adc(int, int, int) __asm__("__Func_8092adc");
    CS960__Func_8092adc(a0, a1, a2);
}
static inline int CS960_API_GetFlag(int a) { extern int CS960__GetFlag(int) __asm__("__GetFlag"); return CS960__GetFlag(a); }
static inline void CS960_API_MapActor_DoAnim(int a0,int a1) { extern void CS960__MapActor_DoAnim(int, int) __asm__("__MapActor_DoAnim"); CS960__MapActor_DoAnim(a0,a1); }
static inline void CS960_API_MapActor_Emote(int a0, int a1, int a2)
{
    extern void CS960__MapActor_Emote(int, int, int) __asm__("__MapActor_Emote");
    CS960__MapActor_Emote(a0, a1, a2);
}
static inline void CS960_API_MapActor_Face(int a, int b, int c) { extern void CS960__MapActor_Face(int, int, int) __asm__("__MapActor_Face"); CS960__MapActor_Face(a, b, c); }
static inline void CS960_API_MapActor_SetAnim(int a0,int a1) { extern void CS960__MapActor_SetAnim(int, int) __asm__("__MapActor_SetAnim"); CS960__MapActor_SetAnim(a0,a1); }
static inline void CS960_API_MapActor_SetPos(int a0, int a1, int a2)
{
    extern void CS960__MapActor_SetPos(int, int, int) __asm__("__MapActor_SetPos");
    CS960__MapActor_SetPos(a0, a1, a2);
}
static inline void CS960_API_MapActor_SetSpeed(unsigned int a0, int a1, int a2)
{
    extern void CS960__MapActor_SetSpeed(unsigned int, int, int) __asm__("__MapActor_SetSpeed");
    CS960__MapActor_SetSpeed(a0, a1, a2);
}
static inline void CS960_API_MapActor_TravelTo(int a0, int a1, int a2)
{
    extern void CS960__MapActor_TravelTo(int, int, int) __asm__("__MapActor_TravelTo");
    CS960__MapActor_TravelTo(a0, a1, a2);
}
static inline void CS960_API_MapActor_TravelToAnim(int a0,int a1,int a2) { extern void CS960__MapActor_TravelToAnim(int, int, int) __asm__("__MapActor_TravelToAnim"); CS960__MapActor_TravelToAnim(a0,a1,a2); }
static inline void CS960_API_MapActor_TravelToAnimWait(int a0,int a1,int a2) { extern void CS960__MapActor_TravelToAnimWait(int, int, int) __asm__("__MapActor_TravelToAnimWait"); CS960__MapActor_TravelToAnimWait(a0,a1,a2); }
static inline void CS960_API_MapActor_WaitMovement(int a) { extern void CS960__MapActor_WaitMovement(int) __asm__("__MapActor_WaitMovement"); CS960__MapActor_WaitMovement(a); }
static inline void CS960_API_MessageID(int a0) { extern void CS960__MessageID(int) __asm__("__MessageID"); CS960__MessageID(a0); }
static inline void CS960_API_PlaySound(int a) { extern void CS960__PlaySound(int a) __asm__("__PlaySound"); CS960__PlaySound(a); }
static inline void CS960_API_SetFlag(int a0) { extern void CS960__SetFlag(int) __asm__("__SetFlag"); CS960__SetFlag(a0); }
static inline void CS960_API_WaitFrames(int a0) { extern void CS960__WaitFrames(int) __asm__("__WaitFrames"); CS960__WaitFrames(a0); }
#include "gba/io.h"
#include "actor.h"
struct CS960_StateView { unsigned char pad[0x1f4]; int actorId; };
extern struct CS960_StateView CS960_State __asm__("gState");
extern struct Actor *CS960_Actor(int) __asm__("__MapActor_GetActor");
struct CS960_DmaTransfer { unsigned int src, dest, control; };
struct CS960_DmaQueue { unsigned short count; struct CS960_DmaTransfer tasks[32]; };
extern struct CS960_DmaQueue CS960_Queue __asm__("gDMATaskCount");
static inline void CS960_StoreByte(unsigned char *p, int value) { *p = value; }
void OvlFunc_960_2008594(int actorId)
{
    struct Actor *leader = CS960_Actor(CS960_State.actorId);
    struct Actor *tornado = CS960_Actor(actorId);
    int alreadyActive = CS960_API_GetFlag(0x340);
    int savedX = *(short *)((unsigned char *)leader + 0xa);
    int savedZ = *(short *)((unsigned char *)leader + 0x12);
    int i, next;
    struct Actor *actor;
    unsigned char *flags;
    CS960_API_CutsceneStart();
    CS960_API_PlaySound(0xf4);
    i = 0;
    do {
        tornado->scale.x = 0x800 + (i << 11);
        tornado->scale.y = 0x1000 + (i << 12);
        if (!alreadyActive) {
            struct CS960_DmaQueue *queue = &CS960_Queue;
            unsigned int savedIme;
            int count;
            unsigned int *task;
            next = i + 1;
            savedIme = REG_IME;
            SET_IO(REG_IME, REG_ADDR_IME);
            count = queue->count;
            if (count < 32) {
                task = (unsigned int *)((unsigned char *)queue + count * 12);
                queue->count = count + 1;
                task++;
                *task++ = ((16 - next) << 8) | next;
                *task++ = REG_ADDR_BLDALPHA;
                *task = 0x20000;
            }
            SET_IO(REG_IME, savedIme);
        } else {
            next = i + 1;
        }
        CS960_API_WaitFrames(1);
        i = next;
    } while (i <= 15);
    CS960_API_SetFlag(0x1fe + actorId);
    CS960_API_SetFlag(0x340);
    if (CS960_API_GetFlag(0x9a0) && !CS960_API_GetFlag(0x9b6)) {
        CS960_API_SetFlag(0x9b6);
        CS960_API_MapActor_SetSpeed(13, 0x10000, 0x8000);
        CS960_API_MapActor_SetSpeed(0, 0x18000, 0xc000);
        actor = CS960_Actor(0);
        if (actor) CS960_API_MapActor_SetPos(13, actor->pos.x, actor->pos.z);
        CS960_API_MapActor_Face(13, 0x4000, 0);
        flags = (unsigned char *)CS960_Actor(13);
        flags += 0x5a;
        *flags = 0xfe & *flags;
        CS960_API_MapActor_TravelToAnim(13, savedX, savedZ - 16);
        flags = (unsigned char *)CS960_Actor(0);
        flags += 0x5a;
        *flags = 0xfe & *flags;
        CS960_API_MapActor_TravelToAnimWait(0, savedX + 8, savedZ - 40);
        CS960_API_CutsceneWait(1);
        flags = (unsigned char *)CS960_Actor(0);
        flags += 0x5a;
        CS960_StoreByte(flags, 1 | *flags);
        CS960_API_MapActor_SetAnim(13, 1);
        CS960_API_Func_8092adc(0, 0x4000, 0);
        CS960_API_MessageID(0x262e);
        CS960_API_MapActor_Emote(13, 0x106, 60);
        CS960_API_ActorMessage(13, 0);
        CS960_API_MapActor_Emote(13, 0x102, 60);
        CS960_API_ActorMessage(13, 0);
        CS960_API_Func_8092adc(13, 0x2000, 0);
        CS960_API_MapActor_Emote(13, 0x101, 60);
        CS960_API_ActorMessage(13, 0);
        CS960_API_CutsceneWait(10);
        CS960_API_Func_8092adc(13, 0xc000, 30);
        CS960_API_Func_80925cc(13, 2);
        CS960_API_ActorMessage(13, 0);
        CS960_API_MapActor_DoAnim(13, 3);
        CS960_API_ActorMessage(13, 0);
        CS960_API_MapActor_SetSpeed(13, 0x10000, 0x8000);
        CS960_API_MapActor_SetAnim(13, 2);
        actor = CS960_Actor(0);
        if (actor)
            CS960_API_MapActor_TravelTo(13, *(short *)((unsigned char *)actor + 0xa), *(short *)((unsigned char *)actor + 0x12));
        CS960_API_MapActor_WaitMovement(13);
        CS960_API_MapActor_SetPos(13, 0, 0);
    }
    CS960_API_CutsceneEnd();
}
