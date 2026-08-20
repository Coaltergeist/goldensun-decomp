// fakematch
/* rom_79c0c4 (overlay file 908): consolidated TU — bilibin_rooms map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/bilibin_rooms/exports.s");

extern unsigned char gOvl_02008598[];

unsigned int BilibinRooms_GetEntrances(void) {
    return (unsigned int)gOvl_02008598;
}

unsigned int BilibinRooms_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008688[];

void *BilibinRooms_GetExits(void) {
    return (void *)gOvl_02008688;
}

extern void __Func_808b868(unsigned char *p);
extern unsigned char L6b0[] __asm__(".Lm908_6b0");

unsigned char *BilibinRooms_GetActors(void) {
    __Func_808b868(L6b0);
    return L6b0;
}

void OvlFunc_908_200805c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(7, 0x10);
    } else {
        if (!__GetFlag(0x845)) {
            __MessageID(0x13e3);
        } else {
            __MessageID(0x16f5);
        }
        __ActorMessage(0x10, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_908_20080bc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(9, 0x12);
    } else {
        if (!__GetFlag(0x845)) {
            __MessageID(0x13e9);
        } else {
            __MessageID(0x16f9);
        }
        __ActorMessage(0x12, 0);
    }
    __CutsceneEnd();
}

extern unsigned char gOvl_020088f0[];

void *BilibinRooms_GetEvents(void) {
    return (void *)gOvl_020088f0;
}

INCLUDE_ASM("asm/maps/bilibin_rooms/OvlFunc_908_2008124.s");
INCLUDE_ASM("asm/maps/bilibin_rooms/OvlFunc_908_20081a8.s");

// fakematch
extern unsigned char *iwram_3001ebc;

void OvlFunc_908_20081e0(void)
{
    unsigned short *p;
    int r;
    unsigned short u;
    unsigned long long t2;
    unsigned long v2;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x13f0);
    u = 0x18;
    do { u = (unsigned short) u; } while (0);
    __ActorMessage_Wait(u, 0, 0x14);
    __MapActor_Face(0x18, 0, 0);
    __CutsceneWait(10);
    __ShowActorMessage_NoWait(0x18, 0);
    r = __Func_8091c7c(0, 0);
    if (r != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    t2 = 0x18;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x18;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 10);
    }
    __CutsceneEnd();
}


void OvlFunc_908_2008250(void)
{
    unsigned short *p;
    unsigned int w;

    __CutsceneStart();
    __MessageID(0x13f6);
    __MapActor_Face(0x1b, 0, 0);
    __CutsceneWait(10);
    __ShowActorMessage_NoWait(0x1b, 0);
    if (__Func_8091c7c(0, 0) != 0) {
        p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    {
        register unsigned int rq __asm__("r0") = 0x1b;
        __asm__ volatile ("" : : "r" (rq));
        __ActorMessage(rq, 0);
    }
    w = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x1b;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 7;
        __Func_8092adc(rq, w, 10);
    }
    __CutsceneEnd();
}

void OvlFunc_908_20082b4(void) {
    __CutsceneStart();
    __MessageID(0x16e1);
    __Func_8093054(8, 0);
    __CutsceneEnd();
}

void OvlFunc_908_20082d4(void) {
    __CutsceneStart();
    __MessageID(0x16ec);
    __Func_8093054(0xd, 0);
    __CutsceneEnd();
}

void OvlFunc_908_20082f4(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(2, 0x13);
    } else {
        if (__GetFlag(0x845) != 0) {
            __MessageID(0x16fb);
            __Func_8093054(0x13, 0);
        } else {
            __MessageID(0x13eb);
            __ActorMessage(0x13, 0);
        }
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin_rooms/OvlFunc_908_200835c.s");

void OvlFunc_908_20083f4(void) {
    unsigned short a;
    int p0, p1, p2;
    __CutsceneStart();
    __MessageID(0x1703);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __ActorMessage(a, 0);

    p2 = 0;
    __asm__ volatile ("" : : "r" (p2));
    p0 = 0x16;
    __asm__ volatile ("" : : "r" (p0));
    p1 = 0;
    __asm__ volatile ("" : : "r" (p1));
    __MapActor_Face(p0, p1, p2);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __ActorMessage(a, 0);

    a = 0x16;
    do { a = (unsigned short) a; } while (0);
    __Func_8092adc(a, 0, 0xa);

    __CutsceneEnd();
}

// fakematch
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_908_2008430(void)
{
  register int r1v __asm__("r1");
  register int r0v __asm__("r0");
  register int r2v __asm__("r2");
  __CutsceneStart();
  __MessageID(0x1705);
  __ActorMessage(0x17, 0);
  __MapActor_Face(0x17, 0, 0);
  __ActorMessage(0x17, 0);
  r1v = 0xc0;
  __asm__ volatile ("" : : "r" (r1v));
  r0v = 0x17;
  __asm__ volatile ("" : : "r" (r0v));
  r1v = r1v << 8;
  __asm__ volatile ("" : : "r" (r1v));
  r2v = 10;
  __asm__ volatile ("" : : "r" (r2v));
  __Func_8092adc(r0v, r1v, r2v);
  __CutsceneEnd();
}

void OvlFunc_908_2008470(void) {
    __CutsceneStart();
    __MessageID(0x170a);
    __Func_8093054(0x1b, 0);
    __CutsceneEnd();
}

extern int __GetFlag(int);

void OvlFunc_908_2008490(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x146f);
    } else {
        __MessageID(0x13d9);
    }
    __ActorMessage(0xa, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin_rooms/BilibinRooms_MapInit.s");

INCLUDE_ASM("asm/maps/bilibin_rooms/imports.s");
