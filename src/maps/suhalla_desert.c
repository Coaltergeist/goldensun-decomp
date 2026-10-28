/* rom_7eaf28 (overlay file 960): consolidated TU — suhalla_desert map overlay. */

#include "nonmatching.h"
#include "api.h"

extern void __Func_8091f14(int a, int b);

void OvlFunc_960_2008314(void) {
    __Func_8091f14(15, 45);
}

extern void __Actor_SetSpriteFlags(unsigned int arg0, int arg1);

unsigned int OvlFunc_960_2008324(unsigned int arg0)
{
    __Actor_SetSpriteFlags(arg0, 0);
    *(unsigned char *)(arg0 + 0x59) = 0;
    return 0;
}

unsigned int OvlFunc_960_200833c(unsigned int arg0) {
    unsigned char *ptr = (unsigned char *)arg0;
    ptr[0x54] ^= 1;
    return 1;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char _EVENT_a4[], _EVENT_a5[], _EVENT_a6[];
extern unsigned char gOvl_02009488[];
extern unsigned char Lm960_14d0[] __asm__(".Lm960_14d0");
extern unsigned char Lm960_1548[] __asm__(".Lm960_1548");
extern unsigned char Lm960_1458[] __asm__(".Lm960_1458");

void *SuhallaDesert_GetEntrances(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_a4) return gOvl_02009488;
    if (ev == (int)_EVENT_a5) return Lm960_14d0;
    if (ev == (int)_EVENT_a6) return Lm960_1548;
    return Lm960_1458;
}


int SuhallaDesert_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020095c0[];

unsigned int SuhallaDesert_GetExits(void) {
    return (unsigned int)gOvl_020095c0;
}

extern unsigned char Lm960_1610[] __asm__(".Lm960_1610");
extern unsigned char gScript_930__020096b8[];
extern unsigned char Lm960_1790[] __asm__(".Lm960_1790");
extern unsigned char Lm960_15f8[] __asm__(".Lm960_15f8");
extern unsigned char ConstActors_a4[] __asm__(".Lconst_actors_a4");
__asm__(".equ .Lconst_actors_a4, 0xa4");
extern unsigned char ConstActors_a5[] __asm__(".Lconst_actors_a5");
__asm__(".equ .Lconst_actors_a5, 0xa5");
extern unsigned char ConstActors_a6[] __asm__(".Lconst_actors_a6");
__asm__(".equ .Lconst_actors_a6, 0xa6");

void *SuhallaDesert_GetActors(void) {
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)ConstActors_a4) return Lm960_1610;
    if (ev == (int)ConstActors_a5) return gScript_930__020096b8;
    if (ev == (int)ConstActors_a6) return Lm960_1790;
    return Lm960_15f8;
}
extern unsigned char *__MapActor_GetActor(int);
extern unsigned char *iwram_3001ebc;
extern unsigned int iwram_3001e40;
extern int __GetFlagByte(int);
extern void __SetFlagByte(int, int);

void OvlFunc_960_2008400(void)
{
    unsigned char *actor;
    unsigned char *p;
    unsigned short *ptr;
    unsigned short val;
    int flag;
    int off;
    int off2;

    off = 0xfa << 1;
    actor = __MapActor_GetActor(*(int *)((char *)&gState + off));
    p = iwram_3001ebc;
    *(unsigned short *)(actor + 6) = iwram_3001e40 << 12;
    flag = __GetFlagByte(0x210);
    if (flag == 0) {
    } else if (flag == 1) {
        off2 = 0xc1 << 1;
        ptr = (unsigned short *)(p + off2);
        val = 0x63;
        *ptr = val;
    } else {
        if (__GetFlag(0x106) == 0)
            flag -= 1;
    }
    __SetFlagByte(0x210, flag);
}
#include "actor.h"
#include "api.h"
void OvlFunc_960_2008464(int arg0)
{
    extern unsigned char gStateBytes[] __asm__("gState");
    extern void OvlFunc_960_2008400(void);
    unsigned char *gs;
    struct Actor *actor;
    short *target;
    unsigned char *base;
    int leaderId;
    int flag;
    gs = gStateBytes;
    leaderId = *(int *)(gs + (0xfa << 1));
    actor = (struct Actor *)__MapActor_GetActor(leaderId);
    __MapActor_GetActor(arg0);
    flag = API_GetFlag(0x20f);
    if (flag != 0)
        return;
    API_CutsceneStart();
    API_MapActor_Surprise(leaderId, 0x101);
    API_MapActor_SetAnim(leaderId, 9);
    target = (short *)__MapActor_GetActor(arg0);
    if (target != 0) {
        API_MapActor_TravelTo(leaderId, target[5], target[9]);
    }
    API_MapActor_WaitMovement(leaderId);
    API_PlaySound(0xf4);
    API_StartTask(OvlFunc_960_2008400, 0xc8 << 4);
    actor->__unk55 = flag;
    API_Actor_TravelTo(actor, actor->pos.x, actor->pos.y + (0x80 << 14), actor->pos.z);
    API_MapActor_WaitMovement(leaderId);
    actor->motion.y = flag;
    actor->__unk55 = 4;
    *(gs + (0xf9 << 1)) = 2;
    API_SetFlag(0x20f);
    __SetFlagByte(0x86 << 2, arg0);
    __SetFlagByte(0x84 << 2, 0xb4);
    API_CutsceneEnd();
    base = iwram_3001ebc;
    *(u16 *)(base + (0xbe << 1)) = flag;
}

extern void OvlFunc_960_2008464(int);

void OvlFunc_960_2008558(void) {
    OvlFunc_960_2008464(8);
}


void OvlFunc_960_2008564(void) {
    OvlFunc_960_2008464(9);
}


void OvlFunc_960_2008570(void) {
    OvlFunc_960_2008464(10);
}


void OvlFunc_960_200857c(void) {
    OvlFunc_960_2008464(11);
}


void OvlFunc_960_2008588(void) {
    OvlFunc_960_2008464(12);
}

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008594.s");

extern void OvlFunc_960_2008594(int);

void OvlFunc_960_20087fc(void) {
    OvlFunc_960_2008594(8);
}


void OvlFunc_960_2008808(void) {
    OvlFunc_960_2008594(9);
}


void OvlFunc_960_2008814(void) {
    OvlFunc_960_2008594(10);
}


void OvlFunc_960_2008820(void) {
    OvlFunc_960_2008594(11);
}


void OvlFunc_960_200882c(void) {
    OvlFunc_960_2008594(12);
}


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
    struct Actor *actor;

    if (__GetFlag(0x9a0) == 0)
        return;
    if (__GetFlag(0x1b7) != 0)
        return;
    if (__GetFlag(0x9b0) == 0)
        return;

    __SetFlag(0x9b5);
    __CutsceneStart();
    __MessageID(0x2633);

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_SetPos(0xd, actor->pos.x, actor->pos.z);

    API_MapActor_Face(0xd, 0xc000, 0);
    API_MapActor_TravelToAnimWait(0, 0x1b8, 0x4e8);
    API_Func_8092adc(0xd, 0x4000, 0);
    API_MapActor_TravelToAnimWait(0, 0x1bc, 0x4d8);
    API_MapActor_Emote(0, 0x100, 0x28);
    API_Func_8092adc(0, 0x4000, 0x1e);
    __MapActor_DoAnim(0xd, 4);
    __ActorMessage(0xd, 0);
    API_MapActor_Emote(0, 0x105, 0x3c);
    API_MapActor_Emote(0xd, 0x105, 0x3c);
    __ActorMessage(0xd, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(0xd, 2);
    __ActorMessage(0xd, 0);
    API_Func_8092adc(0xd, 0xc000, 0x1e);
    __Func_8093054(0xd, 0);
    __CutsceneWait(0x1e);
    API_MapActor_Emote(0xd, 0x106, 0x3c);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0xd, 3);
    __ActorMessage(0xd, 0);
    API_MapActor_SetSpeed(0xd, 0xb333, 0x5999);
    API_MapActor_TravelToAnimWait(0xd, 0x1b8, 0x4e8);
    __ActorMessage(0xd, 0);
    __MapActor_DoAnim(0, 3);
    __MapActor_SetAnim(0xd, 2);

    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != 0)
        __MapActor_TravelTo(0xd, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));

    __MapActor_WaitMovement(0xd);
    __MapActor_SetPos(0xd, 0, 0);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_20089cc.s");
extern int __GetFlag(int);
extern void __SetFlag(int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_SetPos(int, int, int);
typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_960__020097a8[];

void OvlFunc_960_2008adc(void) {
    int x = 0x780000;
    int y = 0x3380000;

    if (__GetFlag(0x9b7) == 0) {
        __SetFlag(0x20e);
        __MapActor_SetPos(0xc, x, y);
        __MapActor_SetBehavior(0xc, gScript_960__020097a8);
    }
}

extern unsigned int iwram_3001f30;

void OvlFunc_960_2008b14(void) {
    unsigned int ptr;
    ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

extern unsigned char Const_A5[] __asm__(".Lconst_a5");

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008b24.s");
extern void __PlaySound(int);

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008c00.s");
extern unsigned int iwram_3001e40;

void OvlFunc_960_2008ce4(void)
{
    unsigned short v;
    unsigned int u;

    v = iwram_3001e40 & 0x3f;
    if (v > 0x1f)
        v = 0x40 - v;
    u = ((unsigned int)v >> 1) + 7;
    u |= (u << 10) | (u << 5);
    *(volatile unsigned short *)0x500019e = (u << 16) >> 16;
}

INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008d24.s");
extern unsigned char Const_A5[] __asm__(".Lconst_a5");
__asm__(".equ .Lconst_a5, 0xa5");

extern void OvlFunc_960_2008ce4(void);

extern unsigned char *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_808edac(int, int, int);
extern void __Func_808ee0c(void);
extern void __StartTask(void *, int);

static inline void MapActor_SetPos(int actor, int x, int y) {
    __MapActor_SetPos(actor, x << 16, y << 18);
}

static inline void Func_808edac(int a, int b, int c)
{
    __Func_808edac(a, -b, -c);
}

int OvlFunc_960_2008dc8(void)
{
    int off;
    int zero;
    unsigned int t1, t2;
    unsigned int t3, t4;

    off = 0xe0 << 1;
    if (*(short *)((char *)&gState + off) == (int)Const_A5) {
        ((unsigned char *)__MapActor_GetActor(0xe))[0x23] = 2;
        zero = 0;
        ((unsigned char *)__MapActor_GetActor(0xe))[0x55] = zero;
        MapActor_SetPos(0xe, 0xf8, 0xb2);
        t1 = 0xf;
        t2 = 0x2c;
        __Func_8010704(0x1f, 0x5f, 1, 1, t1, t2);
        Func_808edac(100, 1, 1);
        __Func_808ee0c();
        t3 = 0xc;
        t4 = 0x47;
        __Func_8010704(0x7f, 0x7f, 1, 1, t3, t4);
        __StartTask(OvlFunc_960_2008ce4, 0xc8 << 4);
    }
}
extern unsigned char _EVENT_a6[];
extern unsigned char Lm960_19c4[] __asm__(".Lm960_19c4");
extern unsigned char Lm960_17b4[] __asm__(".Lm960_17b4");

int SuhallaDesert_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_a6) return (int)Lm960_19c4;
    return (int)Lm960_17b4;
}
extern unsigned char iwram_3001e70_raw[] __asm__("iwram_3001e70");
extern void __StartTask(void *, int);
extern void __PlaySound(int);
extern void OvlFunc_960_2008d24(void);
extern void OvlFunc_960_2008f50(void);
extern void OvlFunc_960_2009094(void);
extern unsigned short Lm960_1a00 __asm__(".Lm960_1a00");

int SuhallaDesert_MapInit(void)
{
    unsigned char *r7;
    unsigned int *p;
    unsigned int *dst;
    int ev;
    int off;

    r7 = *(unsigned char **)(iwram_3001e70_raw + 0);
    p = *(unsigned int **)(iwram_3001e70_raw + 0x4c);
    off = 0xe0 << 1;
    dst = (unsigned int *)((char *)p + off);
    *dst = 0x201;
    if (__GetFlagByte(0x84 << 2) != 0) {
        off = 0xf9 << 1;
        *(unsigned char *)((char *)&gState + off) = 2;
        __StartTask(OvlFunc_960_2008400, 0xc8 << 4);
    }
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)ConstActors_a4 || ev == (int)Const_A5) {
        Lm960_1a00 = *(unsigned short *)0x500019e;
        OvlFunc_960_2008d24();
    }
    off = 0xe0 << 1;
    ev = *(short *)((char *)&gState + off);
    if (ev == (int)ConstActors_a4) {
        OvlFunc_960_2008f50();
    } else if (ev == (int)Const_A5) {
        OvlFunc_960_2009094();
    } else {
        __PlaySound(0x90 << 1);
    }
    off = 0xe1 << 1;
    if (*(short *)((char *)&gState + off) == 0) {
        *(unsigned short *)(r7 + 0x14) &= 0xfdff;
    }
    return 0;
}
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2008f50.s");
INCLUDE_ASM("asm/maps/suhalla_desert/OvlFunc_960_2009094.s");
INCLUDE_ASM("asm/maps/suhalla_desert/suhalla_desert_data.s");
