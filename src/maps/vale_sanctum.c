/* rom_7892c8 (overlay file 888): consolidated TU — vale_sanctum map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_sanctum/exports.s");

extern void *__MapActor_GetActor(int);

int OvlFunc_888_2008030(int arg0) {
    int *r2;
    int r3;

    r2 = (int *)__MapActor_GetActor(*(short *)((char *)arg0 + 0x64));
    r3 = *(int *)((char *)arg0 + 0x10);
    *(short *)((char *)arg0 + 6) = __atan2(
        *(int *)((char *)r2 + 0x10) - r3,
        *(int *)((char *)r2 + 8) - *(int *)((char *)arg0 + 8));
    return 0;
}

extern unsigned char gOvl_0200baa8[];

unsigned int ValeSanctum_GetEntrances(void) {
    return (unsigned int)gOvl_0200baa8;
}

unsigned int ValeSanctum_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200bbc8[];

void *ValeSanctum_GetExits(void) {
    return (void *)gOvl_0200bbc8;
}

#include "state/global_state.h"
extern GlobalState gState;
extern unsigned char Lm888_3c0c[] __asm__(".Lm888_3c0c");
extern unsigned char Lm888_3ccc[] __asm__(".Lm888_3ccc");
extern unsigned char Lm888_3d2c[] __asm__(".Lm888_3d2c");
extern unsigned char Lm888_3e04[] __asm__(".Lm888_3e04");
extern unsigned char Lm888_3bf4[] __asm__(".Lm888_3bf4");

int ValeSanctum_GetActors(void)
{
    GlobalState *p = &gState;
    int f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 1: case 2: return (int)Lm888_3c0c;
    case 0xa: case 0xb: case 0xc: case 0x23: return (int)Lm888_3ccc;
    case 0x14: case 0x15: return (int)Lm888_3d2c;
    case 0x1d: case 0x20: return (int)Lm888_3e04;
    default: return (int)Lm888_3bf4;
    }
}

extern unsigned char Lm888_3e70[] __asm__(".Lm888_3e70");
extern unsigned char Lm888_3ec4[] __asm__(".Lm888_3ec4");
extern unsigned char Lm888_3f0c[] __asm__(".Lm888_3f0c");
extern unsigned char Lm888_40ec[] __asm__(".Lm888_40ec");
extern unsigned char Lm888_4038[] __asm__(".Lm888_4038");
extern unsigned char Lm888_4080[] __asm__(".Lm888_4080");
extern unsigned char Lm888_3fd8[] __asm__(".Lm888_3fd8");
extern unsigned char Lm888_3f78[] __asm__(".Lm888_3f78");
extern unsigned char Lm888_3e34[] __asm__(".Lm888_3e34");

int ValeSanctum_GetEvents(void)
{
    GlobalState *p = &gState;
    int f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 0xa: case 0xc: return (int)Lm888_3e70;
    case 0xb: return (int)Lm888_3ec4;
    case 0x14: case 0x15: case 0x32: return (int)Lm888_3f0c;
    case 0x20: return (int)Lm888_40ec;
    case 0x1d: return (int)Lm888_4038;
    case 0x23: return (int)Lm888_4080;
    default:
        if (__GetFlag(0x87a)) return (int)Lm888_3fd8;
        if (__GetFlag(0x815)) return (int)Lm888_3f78;
        return (int)Lm888_3e34;
    }
}
void OvlFunc_888_200827c(void)
{
    unsigned int r2;
    int ev;

    API_CutsceneStart();
    if (API_GetFlag(0x855)) {
        API_MessageID(0x1377);
    } else {
        API_MessageID(0x1289);
    }
    r2 = 0xe1;
    r2 <<= 1;
    ev = *(short *)((char *)&gState + r2);
    if (ev == 0xb) {
        API_MessageID(0x1ce9);
    }
    API_MapActor_SetAnim(9, 1);
    API_MapActor_TurnToFaceActor(9, 0, 0);
    API_CutsceneWait(2);
    API_ActorMessage(9, 0);
    API_CutsceneEnd();
}
extern void __MapActor_SetIdle(int);
extern void __MapActor_SetBehavior(int, int);

void OvlFunc_888_20082ec(void)
{
    GlobalState *p;

    API_CutsceneStart();
    if (API_GetFlag(0x855) == 0) {
        API_MessageID(0x128b);
    } else {
        API_MessageID(0x1379);
    }
    p = &gState;
    if (*(short *)((char *)p + 0x1c2) == 0xb) {
        API_MessageID(0x1ceb);
    }
    __MapActor_SetIdle(9);
    API_MapActor_SetAnim(9, 1);
    API_CutsceneWait(2);
    API_ActorMessage(9, 0);
    __MapActor_SetBehavior(9, 2);
    API_CutsceneEnd();
}
extern void *__MapActor_GetActor(int);
extern int __ShowActorMessage_NoWait();
extern int __Func_8091c7c(int, int);
extern void OvlFunc_888_200987c(void);
extern void __Func_80f95a0(void);

void OvlFunc_888_2008360(void)
{
    API_CutsceneStart();
    API_MessageID(0x1164);
    __ShowActorMessage_NoWait(8, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(0x14);
    } else {
        API_CutsceneWait(0x14);
        __ShowActorMessage_NoWait(8, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            API_CutsceneWait(0x14);
            __ShowActorMessage_NoWait(8, 0);
            if (__Func_8091c7c(0, 0) == 0) {
                API_CutsceneWait(0x14);
                if (((struct Actor *)__MapActor_GetActor(8))->facing >= 0xa000
                    && ((struct Actor *)__MapActor_GetActor(8))->facing <= 0xe000) {
                    API_MapActor_SetSpeed(8, 0x8000, 0x4000);
                    API_Func_8092adc(8, 0, 0);
                    API_CutsceneWait(0xa);
                    ((struct Actor *)__MapActor_GetActor(8))->__unk5A &= ~1;
                    API_MapActor_TravelToAnimWait(8, 0x98, 0x78);
                    API_CutsceneWait(1);
                    ((struct Actor *)__MapActor_GetActor(8))->__unk5A |= 1;
                    API_CutsceneWait(0x14);
                    API_MapActor_DoAnim(8, 3);
                    API_CutsceneWait(0x14);
                    API_MapActor_TravelToAnimWait(0, 0xa8, 0x78);
                    API_MapActor_TravelToAnim(0, 0xc0, 0xa8);
                    API_CutsceneWait(0x14);
                    API_MapActor_TravelToAnimWait(8, 0xa8, 0x78);
                    API_Func_8092adc(8, 0x3000, 0);
                    API_MapActor_WaitMovement(0);
                } else {
                    API_MapActor_TravelToAnim(0, 0xc0, 0xa8);
                    API_CutsceneWait(0x14);
                    API_Func_8092adc(8, 0x3000, 0);
                    API_MapActor_WaitMovement(0);
                }
                OvlFunc_888_200987c();
                API_Func_8091200(0, 0);
                API_Func_8091254(0x78);
                API_CutsceneWait(0x78);
                API_PlaySound(0x56);
                __Func_80f95a0();
                API_SetFlag(0x9f0);
                API_Func_8091e9c(0x1e);
            }
        }
    }
    API_CutsceneEnd();
}
extern unsigned char Lm888_3c9c[] __asm__(".Lm888_3c9c");
extern unsigned char iwram_3001ebc[];
extern void __LoadFieldActors(void *);
extern int __ShowActorMessage_NoWait();
extern int __Func_8091c7c(int, int);

void OvlFunc_888_20084e8(void)
{
    unsigned short *a;

    API_CutsceneStart();
    __LoadFieldActors(Lm888_3c9c);
    API_WaitFrames(1);
    API_MessageID(0x1bfd);
    __ShowActorMessage_NoWait(9, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        API_ActorMessage(9, 0);
    } else {
        a = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        *a += 1;
        API_Func_80931ec(2, 0x10, 1, 0x18, 1, 3, 7, 0x10, 1, 0xe, 0);
        API_ActorMessage(9, 0);
    }
    API_CutsceneEnd();
}

void OvlFunc_888_2008574(void) {
    unsigned short *r2;
    unsigned short r3;
    unsigned long long t;
    unsigned long v;

    __CutsceneStart();
    __MapActor_Face(10, 0, 0);
    __CutsceneWait(10);
    __MessageID(0x119f);
    __ShowActorMessage_NoWait(10, 0);
    if (__Func_8091c7c(0, 0) == 1) {
        r2 = (unsigned short *)(*(unsigned int *)iwram_3001ebc + (0xec << 1));
        r3 = *r2;
        r3 += 1;
        *r2 = r3;
    }
    t = 10;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}

void OvlFunc_888_200b270(void);
void OvlFunc_888_200888c(void);

int ValeSanctum_MapInit(void)
{
    GlobalState *p;
    int f1;

    *(int *)(*(unsigned int *)iwram_3001ebc + 0x1c0) = 0x209;
    API_Func_8091200(0x80 << 9, 0);
    API_Func_8091254(1);
    API_CutsceneWait(1);

    p = &gState;
    f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 0xa:
    case 0xb:
    case 0xc:
        if (API_GetFlag(0x855)) {
            API_MapActor_SetPos(10, 0xc8 << 16, 0xa0 << 15);
        }
        API_ClearFlag(0x12f);
        break;

    case 0x14:
        OvlFunc_888_200b270();
        if (!API_GetFlag(0x109)) {
            OvlFunc_888_200888c();
        }
        API_ClearFlag(0x12f);
        break;

    case 0x1d:
    case 0x20:
    case 0x23:
        API_ClearFlag(0x12f);
        break;

    case 0x15:
        OvlFunc_888_200b270();
        API_SetFlag(0x201);
        if (!API_GetFlag(0x109)) {
            OvlFunc_888_200888c();
        }
        API_ClearFlag(0x12f);
        break;
    }

    return 0;
}
extern void __Func_8093500(unsigned int, unsigned int);
extern void __Func_8093530(void);

void OvlFunc_888_20086e8(void) {
    API_CutsceneStart();
    API_Func_80933d4(0x80 << 9, 0x80 << 6);
    __Func_8093500(1, 1);
    __Func_8093530();
    API_CutsceneWait(0x14);
    API_MapActor_Face(8, 0, 0);
    API_CutsceneWait(0xa);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(0x14);
    API_MessageID(0x116c);
    API_ActorMessage(8, 0);
    API_SetFlag(0x80 << 2);
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200874c.s");

int OvlFunc_888_2008848(struct Actor *actor)
{
    struct Actor *a0;
    struct Sprite *dst;
    struct Sprite *src;

    a0 = (struct Actor *)__MapActor_GetActor(0);
    dst = actor->sprite;
    dst->oam.priority = a0->sprite->oam.priority;

    src = ((struct Actor *)__MapActor_GetActor(0))->sprite;
    actor->sprite->shadowOAM.priority = src->oam.priority;
    return 0;
}



void OvlFunc_888_200888c(void)
{
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern int __Func_8091c7c(int, int);
    extern void __Func_8092504(int);
    extern void __Func_8092950(int, int);
    extern void __Func_80f95a0(void);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_888_200987c(void);
    extern void OvlFunc_888_200a5c4(void);
    extern void OvlFunc_888_200a660(void);
    extern void OvlFunc_888_200a750(int, int);
    extern void OvlFunc_888_200a90c(void);
    extern int __ShowActorMessage_NoWait(int, int);
    unsigned char * transitionState;
    unsigned int pulse;
    int flagValue1;
    int choice2;
    int choice3;
    int choice4;
    unsigned char *actor;

    API_CutsceneStart();
    flagValue1 = API_GetFlag(0x201);
    if (flagValue1 != 0) {
        API_MapActor_TurnToFaceActor(0, 8, 0);
        API_MapActor_Face(1, 0, 0);
        API_MapActor_Face(11, 0, 0);
        API_MapActor_Face(12, 0, 0);
        API_MapActor_Face(9, 0, 0);
        API_MapActor_Face(10, 0, 0);
        API_Func_80933f8(0xc00000, -1, 0xa00000, 1);
        API_Func_8093530();
        transitionState = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
        *(int *)(transitionState + 0x1c0) = 0x100;
        *(int *)(transitionState + 0x1c8) = 0x40;
        API_MapTransitionIn();
        API_WaitMapTransition();
        API_CutsceneWait(0x78);
    } else {
        API_Func_8091200(0x10002, 0);
        API_Func_8091254(1);
        API_CutsceneWait(1);
        API_Func_80933f8(0xc00000, -1, 0xa00000, 1);
        API_Func_8093530();
        *(int *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1c0) = 0x209;
        API_MapTransitionIn();
        API_WaitMapTransition();
        OvlFunc_888_200a90c();
        API_Func_8091200(0x10000, 0);
        API_Func_8091254(0x3c);
        API_CutsceneWait(0x64);
        API_MapActor_SetAnim(0, 1);
        API_MapActor_SetAnim(1, 1);
        API_CutsceneWait(30);
        API_MapActor_Face(0, 12, 0);
        API_MapActor_Face(1, 12, 0);
        API_CutsceneWait(20);
        API_MapActor_SetBehavior(8, (int)1);
        API_MapActor_SetBehavior(12, (int)1);
        API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(11, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
        API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
        API_CutsceneWait(30);
        API_Func_80925cc(12, 2);
        API_MessageID(0x1138);
        API_ActorMessage(12, 0);
        API_CutsceneWait(10);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_DoAnim(1, 3);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(12, 3);
        API_CutsceneWait(20);
        API_Func_80925cc(11, 2);
        API_CutsceneWait(20);
        API_MapActor_Face(0, 11, 0);
        API_MapActor_Face(1, 11, 0);
        API_CutsceneWait(20);
        __ShowActorMessage_NoWait(11, 0);
        choice2 = __Func_8091c7c(0, 0);
        if (choice2 == 0) {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(11, 3);
            API_CutsceneWait(20);
            API_ActorMessage(11, 0);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        } else {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(11, 4);
            API_CutsceneWait(20);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_ActorMessage(11, 0);
        }
        API_CutsceneWait(20);
        API_Func_80925cc(9, 1);
        API_CutsceneWait(20);
        API_MapActor_Face(0, 9, 0);
        API_MapActor_Face(1, 9, 0);
        API_MapActor_Face(11, 9, 0);
        API_CutsceneWait(20);
        __ShowActorMessage_NoWait(9, 0);
        choice3 = __Func_8091c7c(0, 0);
        if (choice3 == 0) {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(9, 3);
            API_CutsceneWait(20);
            API_ActorMessage(9, 0);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
        } else {
            API_CutsceneWait(20);
            API_MapActor_DoAnim(9, 4);
            API_CutsceneWait(20);
            *(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) = (*(unsigned short *)((*(unsigned char **)CS_iwram_3001ebc) + 0x1d8) + 1);
            API_ActorMessage(9, 0);
        }
        API_CutsceneWait(20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(11, 3);
        API_MapActor_SetAnim(12, 3);
        API_MapActor_SetAnim(9, 3);
        API_MapActor_DoAnim(10, 3);
        API_CutsceneWait(30);
        API_MapActor_Emote(12, 0x101, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Face(12, 8, 0);
        API_CutsceneWait(20);
        API_MapActor_TravelToAnimWait(12, 0xe0, 0x78);
        API_CutsceneWait(10);
        API_ActorMessage(12, 0);
        API_CutsceneWait(20);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_MapActor_Face(11, 8, 0);
        API_MapActor_Face(9, 8, 0);
        API_MapActor_Face(10, 8, 0);
        API_CutsceneWait(10);
        API_Func_80925cc(11, 1);
        API_CutsceneWait(10);
        API_ActorMessage(11, 0);
        API_CutsceneWait(30);
        API_Func_80925cc(8, 3);
        API_MapActor_Emote(8, 0x100, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Face(8, 12, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(12, 0x5000, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Face(12, 8, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(12, 3);
        API_CutsceneWait(10);
        API_ActorMessage(12, 0);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_Func_8092adc(8, 0x3000, 0);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(12, 0x5000, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Face(12, 8, 0);
        API_CutsceneWait(0x32);
        API_MapActor_Emote(12, 0x101, 0);
        API_CutsceneWait(0x28);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(11, 0x101, 0);
        API_MapActor_Emote(9, 0x101, 0);
        API_MapActor_Emote(10, 0x101, 0);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(8, 1);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(10);
        API_MapActor_Emote(0, 0x100, 0);
        API_MapActor_Emote(1, 0x100, 0);
        API_MapActor_Emote(11, 0x100, 0);
        API_MapActor_Emote(12, 0x100, 0);
        API_MapActor_Emote(9, 0x100, 0);
        API_MapActor_Emote(10, 0x100, 0);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(1, 2);
        API_CutsceneWait(10);
        API_ActorMessage(1, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(10);
        API_MapActor_Emote(12, 0x102, 0);
        API_Func_809259c(0, 1);
        API_Func_809259c(1, 1);
        API_Func_809259c(11, 1);
        API_Func_809259c(9, 1);
        API_Func_80925cc(10, 1);
        API_CutsceneWait(10);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(30);
        API_MapActor_Face(12, 0, 0);
        API_MapActor_Face(11, 0, 0);
        API_CutsceneWait(20);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(12, 2);
        API_CutsceneWait(20);
        API_MapActor_Face(12, 8, 0);
        API_CutsceneWait(20);
        API_ActorMessage(12, 0);
        API_CutsceneWait(30);
        API_Func_80925cc(11, 2);
        API_CutsceneWait(20);
        API_MapActor_Face(8, 0, 0);
        API_CutsceneWait(20);
        API_ActorMessage(11, 0);
        API_CutsceneWait(20);
        API_CutsceneWait(0x28);
        API_Func_80925cc(8, 2);
        API_MapActor_SetAnim(8, 0);
        __Func_8092950(8, 0x100);
        OvlFunc_888_200a5c4();
        API_PlaySound(0xc4);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x20);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(16);
        pulse = 0;
        do {
            OvlFunc_888_200a750(8, 0x1200);
            pulse++;
            API_CutsceneWait(8);
        } while (pulse <= 5);
        API_CutsceneWait(8);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x20);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x60);
        API_CutsceneWait(0x20);
        __Func_8092950(8, 0);
        API_CutsceneWait(30);
        OvlFunc_888_200a660();
        API_MapActor_SetAnim(8, 1);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_Surprise(12, 0x102);
        API_MapActor_Surprise(0, 0x102);
        API_MapActor_Surprise(1, 0x102);
        API_MapActor_Surprise(11, 0x102);
        API_MapActor_Surprise(9, 0x102);
        API_MapActor_Surprise(10, 0x102);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(10, 1);
        API_CutsceneWait(20);
        API_ActorMessage(10, 0);
        API_CutsceneWait(20);
        API_MapActor_TurnToFaceActor(0, 1, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(30);
        API_MapActor_TurnToFaceActor(0, 1, 0);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_TurnToFaceActor(9, 10, 0);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(9, 3);
        API_MapActor_SetAnim(10, 3);
        __Func_8092504(10);
        API_CutsceneWait(30);
        API_MapActor_TurnToFaceActor(0, 11, 0);
        API_MapActor_TurnToFaceActor(1, 12, 0);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(11, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(12, 3);
        __Func_8092504(12);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(8, 2);
        API_MapActor_SetAnim(8, 0);
        __Func_8092950(8, 0x100);
        OvlFunc_888_200a5c4();
        API_PlaySound(0xc4);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x20);
        OvlFunc_888_200a750(8, 0x1200);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_MapActor_Face(11, 8, 0);
        API_MapActor_Face(12, 8, 0);
        API_MapActor_Face(9, 8, 0);
        API_MapActor_Face(10, 8, 0);
        API_CutsceneWait(16);
        API_Func_809259c(0, 1);
        API_Func_809259c(1, 1);
        API_Func_809259c(11, 1);
        API_Func_809259c(12, 1);
        API_Func_809259c(9, 1);
        API_Func_809259c(10, 1);
        pulse = 0;
        do {
            OvlFunc_888_200a750(8, 0x1200);
            pulse++;
            API_CutsceneWait(8);
        } while (pulse <= 5);
        API_CutsceneWait(8);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x20);
        OvlFunc_888_200a750(8, 0x1200);
        API_CutsceneWait(0x80);
        __Func_8092950(8, 0);
        API_CutsceneWait(30);
        OvlFunc_888_200a660();
        API_MapActor_SetAnim(8, 1);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(30);
        API_MapActor_Emote(12, 0x105, 0);
        API_CutsceneWait(20);
        API_MapActor_TurnToFaceActor(9, 10, 0);
        API_CutsceneWait(0x28);
        API_MapActor_Face(9, 8, 0);
        API_MapActor_Face(10, 8, 0);
        API_ActorMessage(12, 0);
        API_CutsceneWait(20);
        API_Func_80925cc(11, 2);
        API_CutsceneWait(20);
        API_ActorMessage(11, 0);
        API_CutsceneWait(20);
        API_Func_809259c(0, 1);
        API_Func_809259c(1, 1);
        API_MapActor_TurnToFaceActor(0, 1, 0);
        API_Func_809259c(9, 1);
        API_Func_809259c(10, 1);
        API_MapActor_TurnToFaceActor(9, 10, 0);
        API_MapActor_Surprise(12, 0x102);
        API_CutsceneWait(0x3c);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_MapActor_Face(9, 8, 0);
        API_MapActor_Face(10, 8, 0);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(11, 0x101, 0);
        API_MapActor_Emote(12, 0x101, 0);
        API_MapActor_Emote(9, 0x101, 0);
        API_MapActor_Emote(10, 0x101, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(1, 3);
        API_MapActor_SetAnim(11, 3);
        API_MapActor_SetAnim(12, 3);
        API_MapActor_SetAnim(9, 3);
        API_MapActor_SetAnim(10, 3);
        __Func_8092504(10);
        API_CutsceneWait(20);
        API_Func_80925cc(12, 1);
        API_CutsceneWait(20);
        API_ActorMessage(12, 0);
        API_CutsceneWait(20);
        API_MapActor_Face(8, 12, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0x32);
        API_MapActor_Face(8, 0, 0);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(30);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_MapActor_Emote(11, 0x102, 0);
        API_MapActor_Emote(12, 0x102, 0);
        API_MapActor_Emote(9, 0x102, 0);
        API_MapActor_Emote(10, 0x102, 0);
        API_CutsceneWait(0x50);
        API_Func_80925cc(11, 1);
        API_CutsceneWait(20);
        API_ActorMessage(11, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_MapActor_Emote(0, 0x101, 0);
        API_MapActor_Emote(1, 0x101, 0);
        API_MapActor_Emote(11, 0x101, 0);
        API_MapActor_Emote(12, 0x101, 0);
        API_MapActor_Emote(9, 0x101, 0);
        API_MapActor_Emote(10, 0x101, 0);
        API_CutsceneWait(0x50);
        API_Func_80925cc(8, 1);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_Surprise(0, 0x102);
        API_MapActor_Surprise(1, 0x102);
        API_MapActor_Surprise(11, 0x102);
        API_MapActor_Surprise(12, 0x102);
        API_MapActor_Surprise(9, 0x102);
        API_MapActor_Surprise(10, 0x102);
        API_CutsceneWait(0x3c);
        API_MapActor_DoAnim(12, 4);
        API_CutsceneWait(20);
        API_ActorMessage(12, 0);
        API_CutsceneWait(20);
        API_Func_80925cc(8, 1);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(0x28);
        API_MapActor_TurnToFaceActor(0, 1, 0);
        API_MapActor_TurnToFaceActor(9, 10, 0);
        API_MapActor_Face(12, 0, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_MapActor_Face(11, 8, 0);
        API_MapActor_Face(12, 8, 0);
        API_MapActor_Face(9, 8, 0);
        API_MapActor_Face(10, 8, 0);
        API_CutsceneWait(20);
        API_Func_80925cc(11, 1);
        API_CutsceneWait(20);
        API_ActorMessage(11, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_TravelToAnimWait(8, 0xc8, 0x88);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(12, 0, 0);
        API_MapActor_TurnToFaceActor(8, 1, 0);
        API_CutsceneWait(0x28);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(0x32);
        API_MapActor_Face(8, 0, 0);
        API_CutsceneWait(0x28);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(0x32);
        API_Func_80925cc(8, 1);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(30);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_Surprise(11, 0x102);
        API_Func_80925cc(11, 1);
        API_ActorMessage(11, 0);
        API_CutsceneWait(30);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(30);
        API_MapActor_Emote(12, 0x102, 0);
        API_Func_809259c(12, 1);
        API_CutsceneWait(20);
        API_ActorMessage(12, 0);
        API_CutsceneWait(30);
        API_MapActor_TravelToAnimWait(8, 0xa8, 0x78);
        API_MapActor_Face(0, 8, 0);
        API_MapActor_Face(1, 8, 0);
        API_MapActor_Face(12, 8, 0);
        API_Func_8092adc(8, 0xd000, 0);
        API_CutsceneWait(20);
        API_MapActor_DoAnim(8, 4);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(30);
        API_MapActor_Emote(0, 0x102, 0);
        API_MapActor_Emote(1, 0x102, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_DoAnim(8, 3);
        API_CutsceneWait(10);
        API_ActorMessage(8, 0);
        API_CutsceneWait(10);
        API_MapActor_Face(8, 0, 0);
        API_CutsceneWait(20);
        API_ActorMessage(8, 0);
        API_CutsceneWait(20);
        API_MapActor_Face(12, 0, 0);
        API_MapActor_Surprise(1, 0x102);
        API_Func_80925cc(1, 2);
        API_MapActor_Face(1, 0, 0);
        API_CutsceneWait(20);
        API_ActorMessage(1, 0);
        API_CutsceneWait(30);
    }
    API_MessageID(0x1162);
    API_Func_80925cc(8, 1);
    API_CutsceneWait(20);
    __ShowActorMessage_NoWait(8, 0);
    choice4 = __Func_8091c7c(0, 0);
    if (choice4 == 0) {
        OvlFunc_888_200987c();
        API_Func_8091200(0, 0);
        API_Func_8091254(0x78);
        API_CutsceneWait(0x78);
        API_PlaySound(0x56);
        __Func_80f95a0();
        API_SetFlag(0x9f0);
        API_Func_8091e9c(30);
    } else {
        API_CutsceneWait(30);
        API_Func_80925cc(12, 1);
        API_MapActor_DoAnim(12, 4);
        API_CutsceneWait(20);
        API_ActorMessage(12, 0);
        API_CutsceneWait(20);
        actor = __MapActor_GetActor(10);
        actor += 0x23;
        {
            unsigned int flags = 0xfe;
            flags &= *actor;
            *actor = flags;
        }
        actor = __MapActor_GetActor(10);
        *(int *)(actor + 0x6c) = (int)OvlFunc_888_2008848;
    }
    API_CutsceneEnd();
}

void OvlFunc_888_200987c(void)
{
    extern void __Func_8092950(int, int);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_888_200a5c4(void);
    extern void OvlFunc_888_200a660(void);
    extern void OvlFunc_888_200b1b8(int);
    unsigned int shrinkFrame;
    struct Actor *actor;

    API_MapActor_Surprise(1, 0x102);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(1, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(11, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(12, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(8, 0xcccc, 0x6666);
    API_Func_80933f8(0xc00000, -1, 0xa00000, 1);
    API_Func_8093530();
    API_MapActor_Face(1, 0, 0);
    API_MapActor_Face(12, 0, 0);
    API_MapActor_Face(9, 0, 0);
    API_MapActor_Face(10, 0, 0);
    API_MapActor_TurnToFaceActor(0, 11, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(0x32);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(11, 8, 0);
    API_MapActor_Face(12, 8, 0);
    API_MapActor_Face(9, 8, 0);
    API_MapActor_Face(10, 8, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(20);
    API_MessageID(0x1171);
    API_ActorMessage(1, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(12, 1, 0);
    API_Func_809259c(12, 2);
    API_MapActor_Emote(12, 0x103, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(12, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(0x28);
    API_MapActor_Face(1, 8, 0);
    API_MapActor_Face(12, 8, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(8, 0xd000, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0x50);
    API_PlaySound(17);
    API_Func_8091200(0x10005, 1);
    API_Func_8091254(0x3c);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0xc00000, -1, 0x680000, 1);
    API_CutsceneWait(0x78);
    API_PlaySound(21);
    API_PlaySound(0x134);
    API_MapActor_SetPos(13, 0xc80000, 0x80000);
    API_MapActor_SetSpeed(13, 0x6666, 0x3333);
    API_MapActor_TravelToWait(13, 0xc8, 0x48);
    API_PlaySound(0x120);
    API_CutsceneWait(30);
    API_Func_80925cc(8, 2);
    API_MapActor_SetAnim(8, 0);
    OvlFunc_888_200a5c4();
    API_MapActor_Face(0, 13, 0);
    API_MapActor_Face(1, 13, 0);
    API_MapActor_Face(11, 13, 0);
    API_MapActor_Face(12, 13, 0);
    API_MapActor_Face(9, 13, 0);
    API_MapActor_Face(10, 13, 0);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_Func_809259c(11, 2);
    API_Func_809259c(12, 2);
    API_Func_809259c(9, 2);
    API_Func_809259c(10, 2);
    API_CutsceneWait(0x28);
    API_ActorMessage(13, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(0x28);
    API_ActorMessage(13, 0);
    API_CutsceneWait(0x3c);
    __Func_8092950(13, 0x100);
    API_PlaySound(17);
    API_PlaySound(0x134);
    /* The original obtains actor 13 separately for each scale component. */
    shrinkFrame = 0;
    do {
        OvlFunc_888_200b1b8(13);
        API_CutsceneWait(4);
        actor = (struct Actor *)__MapActor_GetActor(13);
        actor->scale.x = (actor->scale.x + 0xfffffd71);
        actor = (struct Actor *)__MapActor_GetActor(13);
        shrinkFrame++;
        actor->scale.y = (actor->scale.y + 0xfffffd71);
    } while (shrinkFrame <= 31);
    API_PlaySound(0x120);
    __Func_8092950(13, 0);
    API_MapActor_SetPos(13, 0, 0);
    API_CutsceneWait(0x28);
    API_Func_80933f8(0xc00000, -1, 0xa00000, 1);
    API_Func_8093530();
    API_Func_8091200(0x10000, 0);
    API_Func_8091254(0x3c);
    API_CutsceneWait(0x78);
    OvlFunc_888_200a660();
    API_MapActor_SetAnim(8, 1);
    API_PlaySound(2);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(8, 2);
    API_CutsceneWait(20);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_809259c(11, 1);
    API_Func_809259c(12, 1);
    API_Func_809259c(9, 1);
    API_Func_80925cc(10, 1);
    API_CutsceneWait(30);
    API_ActorMessage(11, 0);
    API_CutsceneWait(30);
    API_MapActor_Face(8, 0, 0);
    API_CutsceneWait(30);
    API_MapActor_Face(12, 8, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    API_MapActor_Face(11, 8, 0);
    API_MapActor_Face(9, 8, 0);
    API_MapActor_Face(10, 8, 0);
    API_CutsceneWait(20);
    API_ActorMessage(12, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(8, 12, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_MapActor_Face(8, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(11, 0x102, 0);
    API_MapActor_Emote(12, 0x102, 0);
    API_MapActor_Emote(9, 0x102, 0);
    API_MapActor_Emote(10, 0x102, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(8, 0x102, 0);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(0xb4);
    API_MapActor_Emote(12, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_TurnToFaceActor(0, 1, 0);
    API_MapActor_TurnToFaceActor(9, 10, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    API_MapActor_Face(9, 8, 0);
    API_MapActor_Face(10, 8, 0);
    API_CutsceneWait(0x28);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(8, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_809259c(11, 1);
    API_Func_809259c(12, 1);
    API_Func_809259c(9, 1);
    API_Func_80925cc(10, 1);
    API_CutsceneWait(30);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(8, 0x101, 0);
    API_CutsceneWait(0x50);
    API_MapActor_Emote(12, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(12, 0);
    API_CutsceneWait(30);
    API_MapActor_Emote(8, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(8, 1);
    API_MapActor_Emote(8, 0x106, 0);
    API_CutsceneWait(20);
    API_Func_809259c(0, 1);
    API_Func_809259c(1, 1);
    API_Func_809259c(11, 1);
    API_Func_809259c(12, 1);
    API_Func_809259c(9, 1);
    API_Func_80925cc(10, 1);
    API_CutsceneWait(0x28);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(30);
    API_ActorMessage(8, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(1, 3);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(0x78);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(20);
    API_ActorMessage(1, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x105, 0);
    API_MapActor_Emote(1, 0x105, 0);
    API_MapActor_Emote(11, 0x105, 0);
    API_MapActor_Emote(12, 0x100, 0);
    API_MapActor_Emote(9, 0x105, 0);
    API_MapActor_Emote(10, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(12, 1);
    API_ActorMessage(12, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(8, 12, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 4);
    API_CutsceneWait(20);
    API_ActorMessage(8, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_MapActor_Emote(11, 0x100, 0);
    API_MapActor_Emote(12, 0x100, 0);
    API_MapActor_Emote(9, 0x100, 0);
    API_MapActor_Emote(10, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Face(8, 0, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(8, 3);
    API_ActorMessage(8, 0);
    API_CutsceneWait(0x28);
    API_MapActor_TravelToAnimWait(8, 0xa8, 0xb0);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    API_MapActor_Face(11, 8, 0);
    API_MapActor_Face(12, 8, 0);
    API_MapActor_Face(9, 8, 0);
    API_MapActor_Face(10, 8, 0);
    API_MapActor_TravelToAnimWait(8, 0xc8, 0xc8);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 8, 0);
    API_MapActor_Face(12, 8, 0);
    API_Func_8092adc(11, 0, 0);
    API_Func_8092adc(9, 0x8000, 0);
    API_Func_8092adc(10, 0x8000, 0);
    API_MapActor_TravelToAnim(8, 0xc8, 0x110);
    API_CutsceneWait(0x28);
    API_Func_8092adc(11, 0x3000, 0);
    API_Func_8092adc(9, 0x5000, 0);
    API_Func_8092adc(10, 0x5000, 0);
    API_MapActor_WaitMovement(8);
    API_MapActor_SetPos(8, 0, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_MapActor_Emote(11, 0x102, 0);
    API_MapActor_Emote(12, 0x102, 0);
    API_MapActor_Emote(9, 0x102, 0);
    API_MapActor_Emote(10, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_CutsceneWait(0x78);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(1, 10, 0);
    API_MapActor_Face(11, 9, 0);
    API_MapActor_Face(12, 9, 0);
    API_CutsceneWait(0x78);
    API_MapActor_Emote(9, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Face(9, 0, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(10);
    API_Func_8092adc(9, 0x5000, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(9, 0x102, 0);
    API_CutsceneWait(0x50);
    API_MapActor_Face(9, 10, 0);
    API_Func_80925cc(9, 1);
    API_CutsceneWait(20);
    API_ActorMessage(9, 0);
    API_CutsceneWait(20);
    API_Func_8092adc(10, 0x5000, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(10, 0x101, 0);
    API_CutsceneWait(0x3c);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_MapActor_Face(10, 0, 0);
    API_CutsceneWait(30);
    API_Func_80925cc(10, 2);
    API_CutsceneWait(30);
    API_Func_8092adc(10, 0x5000, 0);
    API_CutsceneWait(20);
    API_ActorMessage(10, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnim(9, 0xc8, 0x110);
    API_MapActor_TravelToAnimWait(10, 0xc8, 0x110);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_Emote(12, 0x105, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_TravelToAnimWait(12, 0xc8, 0x88);
    API_MapActor_TurnToFaceActor(0, 12, 0);
    API_MapActor_Face(1, 12, 0);
    API_MapActor_Face(11, 12, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(12, 4);
    API_CutsceneWait(20);
    API_ActorMessage(12, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_TravelToAnimWait(11, 0xa8, 0xa8);
    API_MapActor_Face(11, 12, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 11, 0);
    API_MapActor_Face(1, 11, 0);
    API_CutsceneWait(20);
    API_MapActor_DoAnim(11, 4);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(12, 4);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 12, 0);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(20);
    API_ActorMessage(12, 0);
    API_CutsceneWait(20);
    API_Func_80925cc(11, 2);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(12, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_ActorMessage(12, 0);
    API_CutsceneWait(20);
    API_Func_809259c(0, 2);
    API_Func_809259c(1, 2);
    API_MapActor_Emote(0, 0x100, 0);
    API_MapActor_Emote(1, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(20);
    API_ActorMessage(11, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 11, 0);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(11, 3);
    API_CutsceneWait(30);
    API_MapActor_SetAnim(12, 3);
}
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a5c4.s");

extern void __MapActor_SetPos(int, int, int);

void OvlFunc_888_200a660(void) {
    unsigned char *r0;

    r0 = (unsigned char *)__MapActor_GetActor(0xe);
    *(int *)(r0 + 0x6c) = 0;
    __MapActor_SetPos(0xe, 0, 0);
}

extern unsigned int iwram_3001e40;

void OvlFunc_888_200a67c(struct Actor *arg0) {
    struct Actor *a0 = (struct Actor *)__MapActor_GetActor(8);

    arg0->prevPos.x = arg0->pos.x = a0->pos.x;
    arg0->prevPos.y = arg0->pos.y = a0->pos.y;
    arg0->prevPos.z = arg0->pos.z = a0->pos.z + 0xfffe0000;

    switch (iwram_3001e40 & 3) {
    case 0:
        arg0->prevPos.x = arg0->pos.x = a0->pos.x + 0xfffc8000;
        break;
    case 1:
        arg0->prevPos.x = arg0->pos.x = a0->pos.x + (0xc0 << 10);
        break;
    case 2:
        arg0->prevPos.y = arg0->pos.y = a0->pos.y + (0x80 << 10);
        break;
    case 3:
        arg0->prevPos.z = arg0->pos.z = a0->pos.z;
        break;
    }
}

void OvlFunc_888_200a6f0(struct Actor *actor)
{
    struct Actor *linked = actor->linkedActor;
    u16 *waveCounter = (u16 *)&actor->waveCounter;
    u16 angle = *waveCounter;
    actor->pos.x = linked->pos.x + __cos(angle) * 14;
    actor->pos.z = linked->pos.z + __sin(angle) * 10;
    actor->prevPos.x = actor->pos.x;
    actor->prevPos.z = actor->pos.z;
    *waveCounter += actor->__unk66;
}
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a750.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a7d4.s");
static inline void SanctumSetFlag(unsigned char *p, unsigned int flags, unsigned int value) { *p = flags | value; }
static inline void SanctumWriteByte(unsigned char *p, int value) { *p = value; }
static inline void SanctumWriteHalf(unsigned short *p, int value) { *p = value; }

void OvlFunc_888_200a90c(void)
{
    extern unsigned char ActorCmd_ARRAY_888__0200b740[];
    extern int OvlFunc_888_2008030(int);
    extern unsigned char gScript_888__0200b81c[];
    extern unsigned char * SanctumGetActor(int) __asm__("__MapActor_GetActor");
    extern void OvlFunc_888_200b098(int, int, int, int);
    unsigned char *actor;

    API_MapActor_SetSpeed(0, 0x18000, 0xc000);
    API_MapActor_SetSpeed(1, 0x18000, 0xc000);
    API_Func_80925cc(12, 2);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(15);
    API_MapActor_Face(0, 1, 0);
    API_Func_809259c(0, 1);
    actor = SanctumGetActor(0);
    actor += 0x5a;
    SanctumSetFlag(actor, 0xfe & *actor, 0);
    API_MapActor_TravelToAnim(0, 0xb8, 0xa8);
    actor = SanctumGetActor(1);
    actor += 0x5a;
    SanctumSetFlag(actor, 0xfe & *actor, 0);
    API_MapActor_TravelToAnimWait(1, 0xc8, 0xa8);
    API_CutsceneWait(1);
    actor = SanctumGetActor(1);
    actor += 0x5a;
    SanctumWriteByte(actor, (*actor | 1));
    API_MapActor_WaitMovement(0);
    API_MapActor_SetAnim(0, 1);
    actor = SanctumGetActor(0);
    actor += 0x5a;
    SanctumWriteByte(actor, (*actor | 1));
    actor = SanctumGetActor(1);
    actor += 0x5a;
    SanctumWriteByte(actor, (1 | *actor));
    API_MapActor_Jump(1, 2, 0);
    API_CutsceneWait(15);
    API_MapActor_Face(1, 8, 0);
    API_CutsceneWait(5);
    API_MapActor_Jump(1, 2, 0);
    API_CutsceneWait(25);
    API_Func_80925cc(1, 2);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(5);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(5);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(10);
    API_MapActor_Face(1, 0, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(15);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_SetAnim(12, 3);
    API_MapActor_SetAnim(8, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(10, 3);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 12, 0);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 11, 0);
    API_MapActor_Face(1, 11, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(20);
    API_Func_8092adc(0, 0, 0);
    API_CutsceneWait(15);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(10);
    OvlFunc_888_200b098(0xde, 0xb80000, 0x1b0000, 0xa80000);
    API_MapActor_Face(1, 0, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(10);
    API_MapActor_Jump(1, 4, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(15);
    API_Func_8092adc(1, 0xb000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xb000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(30);
    API_MapActor_Jump(1, 4, 0);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(15);
    API_Func_8092adc(1, 0x5000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x5000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x3000, 0);
    API_CutsceneWait(30);
    API_Func_8092adc(0, 0xc000, 0);
    API_Func_8092adc(1, 0xc000, 0);
    API_CutsceneWait(10);
    API_MapActor_Emote(0, 0x102, 0);
    API_MapActor_Emote(1, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    actor = SanctumGetActor(8);
    actor += 0x64;
    SanctumWriteHalf((unsigned short *)actor, 1);
    actor = SanctumGetActor(8);
    *(int (**)(int))(actor + 0x6c) = OvlFunc_888_2008030;
    actor = SanctumGetActor(12);
    actor += 0x64;
    SanctumWriteHalf((unsigned short *)actor, 1);
    actor = SanctumGetActor(12);
    *(int (**)(int))(actor + 0x6c) = OvlFunc_888_2008030;
    API_MapActor_TravelToAnimWait(1, 0xc4, 0xb4);
    API_MapActor_TravelToAnimWait(1, 0xb8, 0xb8);
    API_MapActor_TravelToAnimWait(1, 0xb4, 0xb4);
    API_MapActor_TravelToAnimWait(1, 0xa8, 0xa8);
    API_MapActor_TravelToAnimWait(1, 0xb4, 0x9c);
    API_MapActor_TravelToAnim(1, 0xc8, 0x68);
    API_MapActor_TravelToAnimWait(0, 0xc0, 0xa8);
    API_Func_8092adc(0, 0xc000, 0);
    API_MapActor_WaitMovement(1);
    API_CutsceneWait(30);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0x5000, 0);
    API_CutsceneWait(15);
    actor = SanctumGetActor(12);
    *(int (**)(int))(actor + 0x6c) = 0;
    actor = SanctumGetActor(8);
    *(int (**)(int))(actor + 0x6c) = 0;
    API_Func_809259c(8, 2);
    API_MapActor_Emote(8, 0x100, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_SetAnim(8, 0);
    API_MapActor_Emote(0, 0x102, 0);
    API_CutsceneWait(0x3c);
    API_MapActor_TurnToFaceActor(0, 11, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(11, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0xc000, 0);
    API_CutsceneWait(10);
    API_Func_80925cc(0, 2);
    API_CutsceneWait(10);
    API_MapActor_Jump(0, 2, 0);
    API_CutsceneWait(20);
    API_MapActor_Jump(0, 2, 0);
    API_CutsceneWait(20);
    API_CutsceneWait(15);
    API_MapActor_TurnToFaceActor(0, 12, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(0, 3);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(0x3c);
    API_MapActor_TravelToAnimWait(1, 0xd0, 0xa8);
    API_MapActor_Face(0, 11, 0);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 4);
    API_MapActor_DoAnim(1, 4);
    API_CutsceneWait(10);
    API_Func_809259c(0, 1);
    API_Func_80925cc(1, 1);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(10);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0, 0);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(10);
    API_Func_809259c(0, 2);
    API_Func_80925cc(1, 2);
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(0, (int)ActorCmd_ARRAY_888__0200b740);
    API_MapActor_SetBehavior(1, (int)gScript_888__0200b81c);
    API_MapActor_WaitScript(0);
    API_MapActor_WaitScript(1);
    API_MapActor_SetSpeed(0, 0x18000, 0xc000);
    API_MapActor_SetSpeed(1, 0x18000, 0xc000);
    API_MapActor_Jump(0, 6, 0);
    API_MapActor_Jump(1, 6, 0);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(1, 8, 0);
    API_CutsceneWait(1);
    API_MapActor_Face(0, 12, 0);
    API_MapActor_Face(1, 11, 0);
    API_CutsceneWait(1);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(1, 9, 0);
    API_CutsceneWait(1);
    API_MapActor_TravelToAnim(0, 0xc0, 0xa8);
    API_MapActor_TravelToAnimWait(1, 0xd0, 0xa8);
    API_MapActor_WaitMovement(0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x5000, 0);
    API_Func_8092adc(1, 0xb000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x3000, 0);
    API_Func_8092adc(1, 0xd000, 0);
    API_CutsceneWait(10);
    API_Func_8092adc(0, 0x5000, 0);
    API_Func_8092adc(1, 0xb000, 0);
    API_CutsceneWait(20);
    API_MapActor_Face(0, 11, 0);
    API_MapActor_Face(1, 12, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(11, 3);
    API_MapActor_DoAnim(12, 3);
    API_CutsceneWait(30);
    API_MapActor_TurnToFaceActor(0, 1, 0);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(1, 3);
    API_CutsceneWait(10);
    API_Func_8092adc(1, 0, 0);
    API_CutsceneWait(10);
    API_MapActor_SetAnim(0, 2);
    API_MapActor_SetAnim(1, 2);
    API_CutsceneWait(0x3c);
}
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200b098.s");
extern void __Actor_SetScript(struct Actor *, void *);
extern unsigned char gScript_888__0200c18c[];

void OvlFunc_888_200b144(struct Actor *actor)
{
    int scale;

    actor->prevPos.y = actor->pos.y += actor->waveCounter << 12;

    scale = 0;
    switch (((s16)actor->__unk66 >> 2) & 3) {
    case 0:
        scale = 0x80 << 9;
        break;
    case 1:
    case 3:
        scale = 0xcccc;
        break;
    case 2:
        scale = 0x9999;
        break;
    }

    actor->scale.x = scale;
    actor->scale.y = scale;

    if (--*(s16 *)&actor->__unk66 <= 0) {
        __Actor_SetScript(actor, gScript_888__0200c18c);
    }
}
extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
extern u32 __Random(void);
extern struct Actor *__CreateActor(int, int, int, int);
extern void OvlFunc_888_200b144(struct Actor *);

void OvlFunc_888_200b1b8(int arg0)
{
    struct Actor *actor;
    struct Actor *newActor;
    struct Sprite *sprite;
    fx32 x;
    fx32 y;

    actor = (struct Actor *)__MapActor_GetActor(arg0);
    if (actor == NULL) {
        return;
    }

    x = actor->pos.x + ((_umodsi3_RAM(__Random(), 20)) << 16) + 0xfff60000;
    y = actor->pos.y + ((__Random() & 0xf) << 16) + 0xfff80000;

    newActor = (struct Actor *)__CreateActor(0x11e, x, y, actor->pos.z);
    if (newActor == NULL) {
        return;
    }

    sprite = newActor->sprite;
    newActor->__unk55 = 0;
    newActor->waveCounter = (_umodsi3_RAM(__Random(), 10)) + 5;
    newActor->__unk66 = (_umodsi3_RAM(__Random(), 60)) + 30;
    newActor->update = (actorfun_t)OvlFunc_888_200b144;
    sprite->flags = 0;
    sprite->oam.priority = actor->sprite->oam.priority;
}

extern void __CopyMapTiles(int, int, int, int, int, int);
void OvlFunc_888_200b270(void) {
    int a;
    int b;
    a = 3;
    b = 2;
	__CopyMapTiles(0, 0x40, 0xb, 0x44, a, b);
    a = 0xb;
    b = 8;
	API_Func_8010704(0xb, 0xa, 3, 2, a, b);
	API_WaitFrames(1);
}


unsigned int OvlFunc_888_200b2a8(void)
{
    unsigned char *p;
    unsigned int v;

    p = (unsigned char *)__MapActor_GetActor(0);
    v = (*(unsigned short *)(p + 6) + 0x5fff) << 16;
    if (v <= 0x3ffe0000) {
        return 1;
    }
    return 0;
}

extern void __UI_Sanctum(int a);
extern void __CutsceneStart(void);
extern int __GetFlag(int flag);
extern void __MessageID(int id);
extern void __ActorMessage(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_888_200b2d0(void) {
    if (OvlFunc_888_200b2a8() != 0) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x87a)) {
            __MessageID(0x1bfc);
        } else if (__GetFlag(0x815)) {
            __MessageID(0x119d);
        } else {
            __MessageID(0x1035);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}

extern void OvlFunc_888_2008360(void);

void OvlFunc_888_200b334(void) {
    unsigned int r2;

    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        r2 = 0xe1;
        r2 <<= 1;
        switch (*(short *)((char *)&gState + r2)) {
        case 0xa:
        case 0xc:
            if (__GetFlag(0x855)) {
                __MessageID(0x1376);
            } else {
                __MessageID(0x1288);
            }
            break;
        case 0xb:
            __MessageID(0x1ce8);
            break;
        case 0x14:
        case 0x15:
        case 0x32:
            __CutsceneEnd();
            OvlFunc_888_2008360();
            return;
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}


void OvlFunc_888_200b45c(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x845)) {
            __MessageID(0x171c);
        } else {
            __MessageID(0x1408);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}
void OvlFunc_888_200b4a8(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x190a);
        if (__GetFlag(0x909)) {
            __MessageID(0x1951);
        }
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}


void OvlFunc_888_200b4f0(void) {
    if (OvlFunc_888_200b2a8()) {
        __UI_Sanctum(8);
    } else {
        __CutsceneStart();
        __MessageID(0x1823);
        __ActorMessage(8, 0);
        __CutsceneEnd();
    }
}

INCLUDE_ASM("asm/maps/vale_sanctum/vale_sanctum_data.s");

INCLUDE_ASM("asm/maps/vale_sanctum/imports.s");
