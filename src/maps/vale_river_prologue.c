// fakematch
/* rom_77dd1c (overlay file 882): consolidated TU — vale_river_prologue map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_river_prologue/exports.s");

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2008030.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2008064.s");

extern unsigned char gOvl_0200d0e4[];

unsigned int ValeRiverPrologue_GetEntrances(void) {
    return (unsigned int)gOvl_0200d0e4;
}

int ValeRiverPrologue_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200d27c[];

void *ValeRiverPrologue_GetExits(void) {
    return (void *)gOvl_0200d27c;
}
extern unsigned char gOvl_0200d2b8[];

void *ValeRiverPrologue_GetActors(void) {
    return (void *)gOvl_0200d2b8;
}
extern unsigned char gOvl_0200d558[];

void *ValeRiverPrologue_GetEvents(void) {
    return (void *)gOvl_0200d558;
}

extern void __SetFlag(int);
extern void __ClearFlag(int);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_882_200810c(void)
{
    int a;
    int b;

    __SetFlag(0x84 << 2);
    a = 0xa;
    b = 0x54;

    __Func_8010704(0x28, 0x54, 7, 4, a, b);
}

void OvlFunc_882_2008134(void)
{
    int a;
    int b;

    __ClearFlag(0x84 << 2);
    a = 0xa;
    b = 0x54;

    __Func_8010704(0x28, 0x59, 7, 4, a, b);
}

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __Func_8091e9c(unsigned int);
extern unsigned int iwram_3001ebc;

void OvlFunc_882_200815c(unsigned int arg0) {
    int res;
    unsigned char *base;

    res = __GetFlag(0x834);
    if (res != 0) {
        __Func_8095214();
    }
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x100;
    *(int *)(base + 0x1c8) = 0x10;
    __Func_8091e9c(arg0);
}

extern unsigned char L5774[] __asm__(".Lm882_5774");

void OvlFunc_882_2008198(void)
{
    int zero;
    int x;
    int y;

    do {
        __PlaySound(0x9e);
    } while (0);
    {
        unsigned char *script;
        int a;
        int b;

        script = L5774;
        a = 0x2d;
        b = 0xb;

        __Func_8010560(script, a, b);
    }
    y = 0xd2;
    x = 0x101;
    y <<= 1;
    zero = 0;

    __MapActor_TravelToAnim(zero, x, y);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xb);
}

extern void __PlaySound(int);

void OvlFunc_882_20081d0(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(1);
}


void OvlFunc_882_20081e4(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(3);
}


void OvlFunc_882_20081f8(void) {
    __PlaySound(0x7b);
    OvlFunc_882_200815c(4);
}

extern void OvlFunc_882_200bfb0(void);

void OvlFunc_882_200820c(void)
{
    __PlaySound(0x7b);
    if (__GetFlag(0x841) != 0 && __GetFlag(0x842) == 0)
        OvlFunc_882_200bfb0();
    OvlFunc_882_200815c(2);
}

void __CutsceneWait(int);
void __Func_8010560(void *, int, int);
void __MapActor_TravelToAnim(int, int, int);
extern unsigned char L578a[] __asm__(".Lm882_578a");

void OvlFunc_882_2008240(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x36, 0x20);
    __MapActor_TravelToAnim(0, 0x196, 0x2d7);
    __CutsceneWait(3);
    OvlFunc_882_200815c(5);
}

extern unsigned char L57a0[] __asm__(".Lm882_57a0");
extern void OvlFunc_882_200950c(void);

void OvlFunc_882_2008278(void)
{
    if (!API_GetFlag(0x206)) {
        __PlaySound(0x9e);
        __Func_8010560(L57a0, 0x2d, 0x27);
    }
    if (!API_GetFlag(0x835) && !__GetFlag(0x831)) {
        OvlFunc_882_200950c();
        API_SetFlag(0x206);
    } else {
        API_MapActor_TravelToAnim(0, 0x106, 0x325);
        __CutsceneWait(3);
        OvlFunc_882_200815c(6);
    }
}


void OvlFunc_882_20082e4(void) {
    if (__GetFlag(0x205)) {
        goto loc_c0;
    }
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x32, 0x2c);

loc_c0:
    __MapActor_TravelToAnim(0, 0xaa << 1, 0xde << 2);
    __CutsceneWait(3);
    OvlFunc_882_200815c(7);
}


void OvlFunc_882_2008328(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57a0;
        __Func_8010560(rq, 0x31, 0x45);
    }
    __MapActor_TravelToAnim(0, 0xa3 << 1, 0x466);
    __CutsceneWait(3);
    OvlFunc_882_200815c(8);
}

extern unsigned char L57b6[] __asm__(".Lm882_57b6");

void OvlFunc_882_2008360(void)
{
    __PlaySound(0x9e);
    {
        unsigned char *rq = L57b6;
        __Func_8010560(rq, 0x34, 0x4c);
    }
    __MapActor_TravelToAnim(0, 0xbb << 1, 0x4d6);
    __CutsceneWait(3);
    OvlFunc_882_200815c(9);
}

static inline void TravelActor(int actor, int x, int y)
{
    __MapActor_TravelToAnim(actor, x, y);
}
void OvlFunc_882_2008398(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x23, 0x4a);
    TravelActor(0, 0x66, 0x4b6);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xa);
}
void OvlFunc_882_20083cc(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L578a, 0x23, 0x49);
    TravelActor(0, 0x66, 0x4b6);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xc);
}
void OvlFunc_882_2008400(void)
{
    __PlaySound(0x9e);
    __Func_8010560(L57a0, 0x26, 0x48);
    TravelActor(0, 0x92, 0x49e);
    __CutsceneWait(3);
    OvlFunc_882_200815c(0xd);
}
INCLUDE_ASM("asm/maps/vale_river_prologue/ValeRiverPrologue_MapInit.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2008a10.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2008d5c.s");

extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

static inline void CopyMapTileAttributes(int srcX, int srcY, int width, int height,
                                         int destX, int destY)
{
    __Func_8010704(srcX, srcY, width, height, destX, destY);
}

void OvlFunc_882_2008ec4(void)
{
    __Func_8010704(0x1d, 0x40, 1, 1, 0x15, 0x39);
    CopyMapTileAttributes(0x1d, 0x40, 1, 1, 0x15, 0x3a);
    __Func_8010704(0x1d, 0x40, 1, 1, 0x16, 0x3a);
    __Func_8010704(0x1d, 0x40, 1, 1, 0x14, 0x3a);
    __Func_8010704(0x1c, 0x14, 1, 1, 0x14, 0x39);
}

extern int __MapActor_GetActor(int);
extern void OvlFunc_882_20090a4(void);
extern void OvlFunc_882_2009a64(int, int);

void OvlFunc_882_2008f38(void) {
    struct Actor *a;

    if (API_GetFlag(0x311) != 0) {
        return;
    }
    API_CutsceneStart();
    if (API_GetFlag(0x831) == 0) {
        a = (struct Actor *)__MapActor_GetActor(0xc);
        API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        API_PlaySound(0x8d);
        API_WaitFrames(0x28);
        API_PlaySound(0x91);
        API_MapActor_SetPos(0xc, 0x17d0000, 0xca << 18);
        a->speed = 0xc0 << 9;
        a->accel = 0xc0 << 9;
        a->pos.y += 0x80 << 17;
        a->prevPos.y = a->pos.y;
        a->bounce = 0x80 << 8;
        API_MapActor_TravelToAnimWait(0xc, 0x91 << 1, 0x341);
        API_Func_8092b08(0xc, 1);
        API_MapActor_TravelToAnimWait(0xc, 0x81 << 1, 0xd5 << 2);
        API_Func_8092b08(0xc, 2);
        API_MapActor_TravelToAnimWait(0xc, 0xe0, 0xda << 2);
        API_CutsceneWait(0x28);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_PlayPendingSound();
        API_SetFlag(0x831);
    }
    OvlFunc_882_20090a4();
    API_SetFlag(0x311);
    if (API_GetFlag(0x837) != 0 && API_GetFlag(0x841) == 0 && API_GetFlag(0xc3 << 2) == 0) {
        if (((struct Actor *)__MapActor_GetActor(0))->pos.y > 0x80 << 16) {
            OvlFunc_882_2009a64(0xdb, 0x34b);
            API_MapActor_TravelToAnimWait(0, 0xb3, 0x33d);
        } else {
            OvlFunc_882_2009a64(0xd6, 0xe3 << 2);
            API_MapActor_TravelToAnimWait(0, 0xdb, 0x38f);
        }
        API_SetFlag(0xc3 << 2);
    }
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_20090a4.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009154.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_20092f0.s");

extern void OvlFunc_882_2009498(void);

void OvlFunc_882_2009348(void) {
    struct Actor *a;

    if (API_GetFlag(0x313) != 0) {
        return;
    }
    API_CutsceneStart();
    if (API_GetFlag(0x833) == 0) {
        a = (struct Actor *)__MapActor_GetActor(0xe);
        API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        API_PlaySound(0x8d);
        API_WaitFrames(0x28);
        API_PlaySound(0x91);
        API_MapActor_SetPos(0xe, 0xed << 17, 0x47b0000);
        a->speed = 0x80 << 9;
        a->accel = 0x80 << 9;
        a->pos.y += 0x90 << 15;
        a->prevPos.y = a->pos.y;
        a->bounce = 0x80 << 8;
        API_MapActor_TravelToAnimWait(0xe, 0xd8 << 1, 0x47b);
        API_CutsceneWait(0x28);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_PlayPendingSound();
        API_SetFlag(0x833);
    }
    OvlFunc_882_2009498();
    API_SetFlag(0x313);
    if (API_GetFlag(0x837) != 0 && API_GetFlag(0x841) == 0 && API_GetFlag(0xc3 << 2) == 0) {
        if (((struct Actor *)__MapActor_GetActor(0))->pos.z <= 0x479ffff) {
            OvlFunc_882_2009a64(0xce << 1, 0x8c << 3);
            API_MapActor_TravelToAnimWait(0, 0xcf << 1, 0x42c);
        } else {
            OvlFunc_882_2009a64(0x1bd, 0x494);
            API_MapActor_TravelToAnimWait(0, 0x1bf, 0x4cb);
        }
        API_SetFlag(0xc3 << 2);
    }
    API_CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009498.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200950c.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009600.s");

extern void __CutsceneStart(void);
extern void __Func_80925cc(int, int);
extern void __MessageID(int);
extern void __CutsceneEnd(void);

void OvlFunc_882_2009684(void)
{
    if (__GetFlag(0x837) == 0 && __GetFlag(0x836) != 0)
    {
        __CutsceneStart();
        __Func_80925cc(0x16, 2);
        __CutsceneWait(0x14);
        __MessageID(0xe71);
        OvlFunc_882_200973c();
        __CutsceneEnd();
    }
}

extern void __ActorMessage(int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern int _MSG_ed0;

void OvlFunc_882_20096cc(void) {
    if (__GetFlag(0x841)) {
        __CutsceneStart();
        __MapActor_Face(0x16, 0, 0);
        __CutsceneWait(0x14);
        __MessageID((int) (&_MSG_ed0));
        __ActorMessage(0x16, 0);
        API_Func_8092adc(0x16, 0xe000, 0xa);
        __CutsceneEnd();
    } else if (!__GetFlag(0x837)) {
        __CutsceneStart();
        __MessageID(0xe6e);
        OvlFunc_882_200973c();
        __CutsceneEnd();
    }
}

extern void __SetFlag(int);
extern void __ShowActorMessage_NoWait(int, int);
extern void __MapActor_TurnToFaceActor(int, int, int);
extern int __Func_8091c7c(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetAnim(int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_SetPos(int, int, int);
extern void __Func_80917d0(int, int);
extern int _MSG_e70;

void OvlFunc_882_200973c(void) {
    int r5v;
    int a;
    unsigned long long t = 0;
    unsigned long z;

    do { t = (unsigned long) t; } while (0);
    z = t;

    __ShowActorMessage_NoWait(0x16, z);
    __MapActor_TurnToFaceActor(0, 0x16, 0);
    r5v = 0;
    if (__Func_8091c7c(0, 0) == 0) {
        __MessageID(0xee5);
        r5v = 1;
    } else {
        __MessageID(0xee6);
    }
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0x16, 0, 0x28);
    API_MapActor_Surprise(0x16, 0x100);
    __MapActor_SetAnim(0x15, 3);
    __MapActor_SetAnim(0x16, 1);
    __CutsceneWait(0x28);
    __MapActor_Face(0x16, 0, 0);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x16, 3);
    if (r5v != 0) {
        __MessageID((int) (&_MSG_e70));
    } else {
        __MessageID(0xee7);
    }
    __ActorMessage(0x16, 0);
    __MapActor_SetAnim(0x16, 2);
    a = __MapActor_GetActor(0);
    if (a != 0) {
        __MapActor_TravelTo(0x16, *(short *)(a + 0xa), *(short *)(a + 0x12));
    }
    __MapActor_WaitMovement(0x16);
    __MapActor_SetPos(0x16, 0, 0);
    __Func_80917d0(1, 1);
    __SetFlag(0x837);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009828.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200998c.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009a64.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_2009b18.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200a09c.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200a0fc.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200a180.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200a8a4.s");


void OvlFunc_882_200ad28(void) {
    extern unsigned char gScript_882__0200cec8[];
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);
    struct Actor *a;

    API_CutsceneStart();
    API_MapActor_SetAnim(0xa, 1);
    API_CutsceneWait(0xa);
    API_MapActor_TurnToFaceActor(0xa, 0, 0x14);
    if (API_GetFlag(0x30d)) {
        API_MessageID(0xea5);
        API_ActorMessage_Wait(0xa, 0, 0xa);
    } else {
        API_MessageID(0xea4);
        API_Func_809259c(0xa, 1);
        API_ActorMessage_Wait(0xa, 0, 0xa);
        API_Func_809259c(0xa, 2);
        API_ActorMessage_Wait(0xa, 0, 0xa);
    }
    MapActor_Func_8092adc(0x80, 0xa, 0x14);
    API_MapActor_SetAnim(0xa, 5);
    API_CutsceneWait(0xa);
    a = (struct Actor *)__MapActor_GetActor(0xa);
    a->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
    API_MapActor_SetBehavior(0xa, (int)gScript_882__0200cec8);
    API_CutsceneWait(0x14);
    API_SetFlag(0x30d);
    API_CutsceneEnd();
}
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200adec.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200b1ac.s");
void OvlFunc_882_200bc48(void)
{
    API_WaitFrames(0x14);
    API_SetFlag(0xb3 << 1);
    API_Func_80118c0(0);
    API_Func_80118c0(1);
    API_Func_80118c0(2);
    API_Func_80118c0(3);
    API_Func_80118c0(4);
    API_Func_80118c0(5);
    API_Func_8091200(0x10003, 1);
    API_Func_8091200(0x80 << 9, 2);
    API_Func_8091254(1);
    API_WaitFrames(0x78);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x3c);
    API_ClearFlag(0xb3 << 1);
    API_Func_80118a8(0);
    API_Func_80118a8(1);
    API_Func_80118a8(2);
    API_Func_80118a8(3);
    API_Func_80118a8(4);
    API_Func_80118a8(5);
}
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200bce4.s");

extern unsigned int iwram_3001e40;

void OvlFunc_882_200be18(void)
{
    void *actor = __MapActor_GetActor(0x1b);
    char *p = *(char **)((char *)actor + 0x50);

    if (iwram_3001e40 & 1) {
        *(unsigned char *)(p + 0x23) = 2;
    } else {
        *(unsigned char *)(p + 0x23) = 0x40;
    }
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200be48.s");

extern void OvlFunc_882_200c5b8(void);

void OvlFunc_882_200bfb0(void) {
    struct Actor *a;

    API_CutsceneStart();
    API_Func_80933f8(-1, -1, -1, 0);
    API_MapActor_SetIdle(0x16);
    API_StopTask(OvlFunc_882_200c5b8);
    API_MapActor_TravelToAnimWait(0, 0xf0 << 1, 0xae << 3);
    API_MapActor_SetPos(0, 0, 0);
    API_Func_8092adc(0x16, 0xc0 << 6, 0x14);
    a = (struct Actor *)__MapActor_GetActor(0x16);
    a->flags |= 1;
    API_MapActor_SetPos(0x16, 0xf9 << 16, 0x9b << 19);
    API_WaitFrames(1);
    API_MessageID(0xed3);
    API_ActorMessage(0x1016, 0);
    API_MapActor_SetPos(0x16, 0xac << 16, 0x4fe0000);
    API_WaitFrames(1);
    API_Func_80933d4(0x80 << 11, 0x80 << 8);
    API_Func_80933f8(0xa2 << 16, 0, 0x5050000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(0x16, 4);
    API_ActorMessage_Wait(0x1016, 0, 0xa);
    API_Func_8092adc(0x16, 0xc0 << 8, 0x14);
    API_Func_80925cc(0x16, 2);
    API_ActorMessage_Wait(0x1016, 0, 0xa);
    API_Func_8092adc(0x16, 0x80 << 5, 0x14);
    API_MapActor_DoAnim(0x16, 3);
    API_MapActor_SetSpeed(0x16, 0x80 << 10, 0x80 << 9);
    API_MapActor_TravelToAnimWait(0x16, 0xa5, 0x514);
    API_MapActor_TravelToAnimWait(0x16, 0xc3, 0xb3 << 3);
    API_SetFlag(0x842);
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200c0f0.s");

extern unsigned char iwram_3001ebc__a1[] __asm__("iwram_3001ebc");

void OvlFunc_882_200c234(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc__a1;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87c);
    __StartMapBattle(0xc, 2);
    __SetFlag(0x900);
    __CutsceneEnd();
}

extern unsigned char iwram_3001ebc__a2[] __asm__("iwram_3001ebc");

void OvlFunc_882_200c278(void)
{
    unsigned int *p;
    __CutsceneStart();
    p = *(unsigned int **)iwram_3001ebc__a2;
    *(unsigned int *)((char *)p + 0x1c0) = 0x200;
    *(unsigned int *)((char *)p + 0x1c8) = 0x40;
    __SetFlag(0x87f);
    __StartMapBattle(0xc, 3);
    __SetFlag(0x900);
    __CutsceneEnd();
}

extern unsigned int L57fc __asm__(".Lm882_57fc");
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_882_200c41c(unsigned int);

void OvlFunc_882_200c2bc(unsigned int arg0)
{
    unsigned int *p;
    unsigned int idx;

    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    p = &iwram_3001e40;
    idx = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(*p, idx) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a2 __asm__("iwram_3001e40");

void OvlFunc_882_200c304(int arg0)
{
    unsigned int t;

    if (iwram_3001e40__a2 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a2 >> 1, 6));
    }
    t = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(iwram_3001e40__a2, t) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}

extern volatile unsigned int iwram_3001e40__a3 __asm__("iwram_3001e40");
extern void __Actor_SetColorswap(int a, int b);

void OvlFunc_882_200c34c(arg0) int arg0;
{
    if (iwram_3001e40__a3 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40__a3 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200c378.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200c3c8.s");
INCLUDE_ASM("asm/maps/vale_river_prologue/OvlFunc_882_200c41c.s");

extern void __Func_8096fb0(int, int);

void OvlFunc_882_200c550(void) {
    __Func_8096fb0(0x8c, 0);
}

void OvlFunc_882_200c560(void) {
    __Func_8097194();
}

extern unsigned char L57f8[] __asm__(".Lm882_57f8");

void OvlFunc_882_200c56c(void) {
  OvlFunc_882_200c304(__MapActor_GetActor(0x20));
  OvlFunc_882_200c304(__MapActor_GetActor(0x21));
  OvlFunc_882_200c304(__MapActor_GetActor(0x1e));
  if (*(int *)L57f8 == 0) {
    OvlFunc_882_200c304(__MapActor_GetActor(0x1d));
  }
}


void OvlFunc_882_200c5a8(void)
{
	__MapActor_GetActor(0x13);
	OvlFunc_882_200c34c();
}

void OvlFunc_882_200c5b8(void)
{
    struct Sprite *s;

    s = ((struct Actor *)__MapActor_GetActor(0))->sprite;
    ((struct Actor *)__MapActor_GetActor(0x16))->sprite->oam.priority = s->oam.priority;
    ((struct Actor *)__MapActor_GetActor(8))->sprite->oam.priority = s->oam.priority;
}

void OvlFunc_882_200c5fc(void)
{
  int arg0;
 do { __CutsceneStart(); } while (0);
  arg0 = 0xee4;
  __Func_801776c(arg0, 1);
  __CutsceneEnd();
}

extern int _MSG_1120;

void OvlFunc_882_200c618(void)
{
 do { __CutsceneStart(); } while (0);
  __Func_801776c((int)&_MSG_1120, 1);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_river_prologue/vale_river_prologue_data.s");

INCLUDE_ASM("asm/maps/vale_river_prologue/imports.s");
