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

typedef struct { unsigned char _bytes[704]; } GlobalState;
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
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_2008360.s");
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

INCLUDE_ASM("asm/maps/vale_sanctum/ValeSanctum_MapInit.s");
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

INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200888c.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200987c.s");
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

INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a6f0.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a750.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a7d4.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200a90c.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200b098.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200b144.s");
INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200b1b8.s");

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

INCLUDE_ASM("asm/maps/vale_sanctum/OvlFunc_888_200b334.s");


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
