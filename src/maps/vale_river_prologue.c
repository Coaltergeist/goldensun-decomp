// fakematch
/* rom_77dd1c (overlay file 882): consolidated TU — vale_river_prologue map overlay. */

#include "nonmatching.h"
#include "api.h"
#include "actor.h"

INCLUDE_ASM("asm/maps/vale_river_prologue/exports.s");

int OvlFunc_882_2008030(struct Actor *a) {
    extern int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);
    int t;

    if (a->waveCounter != 0) {
        t = a->waveCounter;
    } else {
        a->facing = __Random();
        t = _umodsi3_RAM(__Random(), 0x14) + 0x14;
        a->waveCounter = t;
    }
    a->waveCounter = t - 1;
    return 1;
}

int OvlFunc_882_2008064(struct Actor *a) {
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern unsigned int __Random(void);

    switch (a->waveCounter) {
    case 6:
        a->scale.x += -0x4000;
        a->scale.y += 0x80 << 6;
        break;
    case 4:
        a->scale.x += 0x80 << 6;
        a->scale.y += -0x1000;
        break;
    case 2:
        a->scale.x += 0x80 << 5;
        a->scale.y += -0x800;
        break;
    case 0:
        a->scale.x = 0x80 << 9;
        a->scale.y = 0x80 << 9;
        a->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
        break;
    }
    a->waveCounter--;
    return 1;
}

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

struct RiverInitStateView { unsigned char prefix[0x1c2]; short room; };
static inline void RiverByte(unsigned char *p, int value) { *p = value; }
static inline void RiverHalf(unsigned short *p, int value) { *p = value; }

int ValeRiverPrologue_MapInit(void)
{
    extern void OvlFunc_882_200c5b8(void);
    extern unsigned char gScript_882__0200c9f4[];
    extern unsigned char gScript_882__0200cec8[];
    extern struct RiverInitStateView RiverInitState __asm__("gState");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_8091ff0(int);
    extern void __Func_8095268(void);
    extern void * __MapActor_GetActor(int);
    extern void OvlFunc_882_200810c(void);
    extern void OvlFunc_882_2008a10(void);
    extern void OvlFunc_882_2008ec4(void);
    extern void OvlFunc_882_20090a4(void);
    extern void OvlFunc_882_20092f0(void);
    extern void OvlFunc_882_2009498(void);
    extern void OvlFunc_882_200c0f0(void);
    extern unsigned int __Random(void);
    extern void __StartRain(void);
    extern void __StartThunder(void);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    unsigned char *saved9, *saved26, *saved22, *saved8, *saved10, *saved24, *saved25;
    unsigned char * field;
    int flagValue1;
    int flagValue2;
    int flagValue3;
    int flagValue4;
    int flagValue5;
    int flagValue6;
    int flagValue7;
    unsigned int flagValue9;
    unsigned int flagValue10;
    unsigned int flagValue11;
    unsigned int flagValue12;
    unsigned int flagValue13;
    unsigned int flagValue14;
    unsigned int flagValue15;
    unsigned int flagValue16;
    unsigned int flagValue19;
    unsigned int flagValue20;
    unsigned int flagValue21;
    unsigned int flagValue22;
    unsigned int flagValue23;
    unsigned int flagValue24;
    int flagValue26;
    int flagValue28;
    unsigned char *actor;

    __Func_8091ff0(0xaa);
    API_MapActor_SetPos(23, 0, 0);
    flagValue1 = API_GetFlag(0x109);
    if (flagValue1 != 0) {
        API_ClearFlag(0x205);
        API_ClearFlag(0x206);
    }
    flagValue2 = API_GetFlag(0x830);
    if (flagValue2 != 0) {
        API_MapActor_SetPos(11, 0x14e0000, 0x3a40000);
        OvlFunc_882_2008ec4();
    }
    flagValue3 = API_GetFlag(0x831);
    if (flagValue3 != 0) {
        API_MapActor_SetPos(12, 0xe00000, 0x3680000);
        OvlFunc_882_20090a4();
    }
    flagValue4 = API_GetFlag(0x832);
    if (flagValue4 != 0) {
        API_MapActor_SetPos(13, 0x400000, 0x2bf0000);
        OvlFunc_882_20092f0();
    }
    flagValue5 = API_GetFlag(0x833);
    if (flagValue5 != 0) {
        API_MapActor_SetPos(14, 0x1b00000, 0x47b0000);
        OvlFunc_882_2009498();
    }
    actor = __MapActor_GetActor(11);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(12);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(13);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(14);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(15);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(16);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(17);
    actor += 0x59;
        RiverByte(actor, (*actor | 4));
    actor = __MapActor_GetActor(18);
    actor += 0x59;
        RiverByte(actor, (4 | *actor));
    flagValue6 = API_GetFlag(0x837);
    if (flagValue6 != 0) {
        API_MapActor_SetPos(22, 0, 0);
    }
    actor = __MapActor_GetActor(19);
    *(int *)(actor + 0x18) = 0x20000;
    *(int *)(actor + 0x1c) = 0x20000;
    flagValue7 = API_GetFlag(0x838);
    if (flagValue7 != 0) {
        API_MapActor_SetPos(19, 0x720000, 0x14d0000);
    } else {
        API_MapActor_SetBehavior(19, (int)gScript_882__0200c9f4);
    }
    if (API_GetFlag(0x841)) {
        OvlFunc_882_200c0f0();
        API_MapActor_SetPos(9, 0xa50000, 0x4cd0000);
        saved9 = __MapActor_GetActor(9);
        RiverHalf((unsigned short *)(saved9 + 0x6), 0xe000);
        flagValue9 = __Random();
        flagValue10 = _umodsi3_RAM(flagValue9, 0x5a);
        flagValue10 += 0x3c;
        RiverHalf((unsigned short *)(saved9 + 0x64), flagValue10);
        saved9 += 0x66;
        RiverHalf((unsigned short *)saved9, 1);
        API_MapActor_SetBehavior(9, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(26, 0xa50000, 0x4e60000);
        saved26 = __MapActor_GetActor(26);
        RiverHalf((unsigned short *)(saved26 + 0x6), 0xe000);
        flagValue11 = __Random();
        flagValue12 = _umodsi3_RAM(flagValue11, 0x5a);
        flagValue12 += 0x3c;
        RiverHalf((unsigned short *)(saved26 + 0x64), flagValue12);
        saved26 += 0x66;
        RiverHalf((unsigned short *)saved26, 2);
        API_MapActor_SetBehavior(26, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(22, 0x980000, 0x5050000);
        saved22 = __MapActor_GetActor(22);
        RiverHalf((unsigned short *)(saved22 + 0x6), 0xe000);
        flagValue13 = __Random();
        flagValue14 = _umodsi3_RAM(flagValue13, 0x5a);
        flagValue14 += 0x3c;
        RiverHalf((unsigned short *)(saved22 + 0x64), flagValue14);
        saved22 += 0x66;
        RiverHalf((unsigned short *)saved22, 3);
        API_MapActor_SetBehavior(22, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(8, 0xb80000, 0x5180000);
        saved8 = __MapActor_GetActor(8);
        RiverHalf((unsigned short *)(saved8 + 0x6), 0xe000);
        flagValue15 = __Random();
        flagValue16 = _umodsi3_RAM(flagValue15, 0x5a);
        flagValue16 += 0x3c;
        RiverHalf((unsigned short *)(saved8 + 0x64), flagValue16);
        saved8 += 0x66;
        RiverHalf((unsigned short *)saved8, 4);
        API_MapActor_SetBehavior(8, (int)gScript_882__0200cec8);
        API_MapActor_SetAnim(8, 6);
        actor = __MapActor_GetActor(22);
        actor += 0x23;
        RiverByte(actor, (0xfe & *actor));
        actor = __MapActor_GetActor(8);
        actor += 0x23;
        RiverByte(actor, (0xfe & *actor));
        API_StartTask(OvlFunc_882_200c5b8, 0xc80);
        API_MapActor_SetPos(24, 0, 0);
        API_MapActor_SetPos(25, 0, 0);
        API_MapActor_SetPos(23, 0, 0);
        API_MapActor_SetPos(19, 0, 0);
        if (API_GetFlag(0x842)) API_MapActor_SetPos(22, 0, 0);
    } else if (API_GetFlag(0x83a)) {
        API_MapActor_SetPos(10, 0xc00000, 0x4be0000);
        API_Func_8092adc(10, 0x2000, 0);
        API_MapActor_SetAnim(10, 5);
        saved10 = __MapActor_GetActor(10);
        flagValue19 = __Random();
        flagValue20 = _umodsi3_RAM(flagValue19, 0x5a);
        flagValue20 += 0x3c;
        saved10 += 0x64;
        RiverHalf((unsigned short *)saved10, flagValue20);
        API_MapActor_SetBehavior(10, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(24, 0xe30000, 0x4be0000);
        API_Func_8092adc(24, 0x4000, 0);
        API_MapActor_SetAnim(24, 6);
        saved24 = __MapActor_GetActor(24);
        flagValue21 = __Random();
        flagValue22 = _umodsi3_RAM(flagValue21, 0x5a);
        saved24 += 0x64;
        RiverHalf((unsigned short *)saved24, (flagValue22 + 0x3c));
        API_MapActor_SetBehavior(24, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(25, 0xf70000, 0x4be0000);
        API_Func_8092adc(25, 0x4000, 0);
        API_MapActor_SetAnim(25, 6);
        saved25 = __MapActor_GetActor(25);
        flagValue23 = __Random();
        flagValue24 = _umodsi3_RAM(flagValue23, 0x5a);
        saved25 += 0x64;
        RiverHalf((unsigned short *)saved25, (flagValue24 + 0x3c));
        API_MapActor_SetBehavior(25, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(23, 0xf30000, 0x4fd0000);
        API_Func_8092adc(23, 0xc000, 0);
        actor = __MapActor_GetActor(23);
        __Actor_SetSpriteFlags(actor, 0);
        API_MapActor_SetPos(17, 0, 0);
        API_MapActor_SetPos(18, 0, 0);
    } else {
        API_MapActor_SetPos(17, 0, 0);
        API_MapActor_SetPos(18, 0, 0);
    }
    if (RiverInitState.room != 15 || API_GetFlag(0x87b)) {
        __StartRain();
        __StartThunder();
    }
    flagValue26 = API_GetFlag(0x210);
    if (flagValue26 != 0) {
        OvlFunc_882_200810c();
    }
    API_SetFlag(0x834);
    API_Func_8010704(29, 24, 1, 2, 26, 0x2e);
    API_Func_8010704(29, 25, 1, 1, 27, 0x2e);
    API_Func_8010704(29, 25, 1, 1, 28, 0x2e);
    API_Func_8010704(19, 0x5a, 1, 1, 20, 0x58);
    API_Func_8010704(19, 0x5a, 1, 1, 20, 0x59);
    actor = __MapActor_GetActor(21);
    *(unsigned char *)(actor + 0x55) = 0;
    *(int *)(actor + 0xc) = 0xc00000;
    *(unsigned char *)(actor + 0x59) = 8;
    __Actor_SetSpriteFlags(actor, 0);
    API_WaitFrames(1);
    if (!API_GetFlag(0x87b) && RiverInitState.room == 15) {
        OvlFunc_882_2008a10();
    } else {
        API_MapActor_SetAnim(23, 7);
        flagValue28 = API_GetFlag(0x837);
        if (flagValue28 == 0) {
            API_CutsceneStart();
            API_MapActor_Surprise(22, 0x101);
            API_MapActor_SetPos(22, 0x1900000, 0x2630000);
            API_MapActor_SetPos(21, 0x1a80000, 0x2730000);
            API_MapActor_TravelToAnim(22, 0x190, 0x26b);
            API_MapActor_TravelToAnimWait(21, 0x1a8, 0x26b);
            API_MapActor_SetAnim(21, 2);
            API_MapActor_SetAnim(22, 5);
            API_CutsceneEnd();
        } else {
            API_CutsceneStart();
            API_MapActor_SetPos(21, 0x1a80000, 0x2730000);
            API_MapActor_TravelToAnimWait(21, 0x1a8, 0x26b);
            API_MapActor_SetAnim(21, 3);
            API_CutsceneEnd();
        }
        field = (unsigned char *)((*(unsigned char **)CS_iwram_3001ebc));
        *(int *)(field + 0x1c0) = 0x100;
        *(int *)(field + 0x1c8) = 24;
        API_MapTransitionIn();
        API_WaitMapTransition();
        __Func_8095268();
    }
    return 0;
}
extern unsigned char CS882_MessageE5C[] __asm__(".Lconst_e5c");
/* pooled literal (ldr rN, =0xe5c in the original) */
__asm__(".equ .Lconst_e5c, 0xe5c");

void OvlFunc_882_2008a10(void)
{
    extern unsigned char CS_882_578a[] __asm__(".Lm882_578a");
    extern unsigned char CS_iwram_3001ebc[] __asm__("iwram_3001ebc");
    extern void __Func_8010560(void *, int, int);
    extern int __Func_8091c7c(int, int);
    extern void __Func_8095240(void);
    extern void __Func_8095268(void);
    extern int __ShowActorMessage_NoWait(int, int);
    extern void __StartRain(void);
    extern void __StartThunder(void);
    unsigned char *scene;

    API_CutsceneStart();
    __StartRain();
    __StartThunder();
    __Func_8095240();
    API_WaitFrames(0x3c);
    API_Func_80933d4(0x4000, 0x800);
    API_Func_80933f8(0x13c0000, 0xa00000, 0x3700000, 1);
    API_MapActor_SetPos(10, 0x1260000, 0x3640000);
    API_MapActor_SetPos(0, 0, 0);
    scene = *(unsigned char **)CS_iwram_3001ebc;
    *(int *)(scene + 0x1c0) = 0x100;
    *(int *)(scene + 0x1c8) = 16;
    API_MapTransitionIn();
    API_WaitMapTransition();
    __Func_8095268();
    API_PlaySound(0x9e);
    __Func_8010560(CS_882_578a, 0x32, 0x2c);
    API_MapActor_Surprise(22, 0x101);
    API_MapActor_SetSpeed(9, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(0, 0xcccc, 0x6666);
    API_MapActor_SetSpeed(10, 0xcccc, 0x6666);
    API_MapActor_SetPos(9, 0x1560000, 0x37a0000);
    API_MapActor_TravelToAnimWait(9, 0x156, 0x389);
    API_MapActor_PlayPendingSound();
    API_MapActor_TravelToAnim(9, 0x128, 0x389);
    API_MapActor_SetPos(0, 0x1560000, 0x37a0000);
    API_MapActor_TravelToAnim(0, 0x156, 0x37a);
    API_MapActor_TravelToAnimWait(0, 0x156, 0x389);
    API_MapActor_TravelToAnimWait(0, 0x13e, 0x389);
    API_MapActor_SetAnim(9, 1);
    API_Func_80925cc(9, 1);
    API_Func_8092adc(9, 0xc000, 0x3c);
    API_MessageID((int)CS882_MessageE5C);
    API_ActorMessage(9, 0);
    API_MapActor_TravelToAnimWait(10, 0x126, 0x346);
    API_CutsceneWait(0x28);
    API_MapActor_DoAnim(10, 4);
    API_ActorMessage(10, 0);
    API_MapActor_TurnToFaceActor(0, 9, 0);
    API_CutsceneWait(0x28);
    API_Func_8092adc(10, 0x4000, 0);
    API_ActorMessage_Wait(10, 0, 20);
    API_MapActor_Emote(9, 0x101, 20);
    API_Func_8092adc(9, 0xc000, 10);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_DoAnim(10, 4);
    API_ActorMessage(10, 0);
    API_MapActor_Surprise(9, 0x102);
    API_CutsceneWait(30);
    API_Func_8092adc(9, 0, 0x32);
    API_Func_8092adc(9, 0xc000, 10);
    API_MapActor_SetSpeed(9, 0x18000, 0xc000);
    API_MapActor_TravelToAnimWait(9, 0x121, 0x373);
    API_Func_8092adc(9, 0xe000, 0);
    API_ActorMessage(9, 0);
    API_Func_80925cc(10, 2);
    API_ActorMessage(10, 0);
    API_MapActor_DoAnim(9, 4);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(9, 0x2000, 10);
    API_MessageID((int)CS882_MessageE5C + 8);
    __ShowActorMessage_NoWait(9, 0);
    API_MapActor_TravelToAnimWait(0, 0x12e, 0x389);
    API_Func_8092adc(0, 0xc000, 0);
    while (__Func_8091c7c(0, 0) == 1) {
        API_Func_80925cc(9, 1);
        API_MessageID(0xe65);
        __ShowActorMessage_NoWait(9, 0);
    }
    API_MapActor_DoAnim(9, 3);
    API_MessageID(0xe66);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_SetSpeed(10, 0x18000, 0xc000);
    API_MapActor_TravelToAnim(10, 0x129, 0x2ee);
    API_CutsceneWait(10);
    API_MapActor_TravelToAnimWait(9, 0x129, 0x2ee);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetAnim(10, 1);
    API_MapActor_SetAnim(21, 2);
    API_MapActor_SetAnim(22, 5);
    API_ClearFlag(0x12f);
    API_SetFlag(0x87b);
    API_SetFlag(0x205);
    API_CutsceneEnd();
}
void OvlFunc_882_2008d5c(void)
{
    extern void OvlFunc_882_2008ec4(void);
    extern void OvlFunc_882_2009a64(int, int);
    extern int __MapActor_GetActor(int);
    struct Actor *actor;
    struct Sprite *sprite;

    if (API_GetFlag(0xc4 << 2))
        return;

    API_CutsceneStart();
    if (!API_GetFlag(0x83 << 4)) {
        actor = (struct Actor *)__MapActor_GetActor(0xb);
        sprite = actor->sprite;
        API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        API_PlaySound(0x8d);
        API_WaitFrames(0x28);
        API_PlaySound(0x91);
        actor->flags &= ~1;
        sprite->oam.priority = 1;
        API_MapActor_SetPos(0xb, 0x1d90000, 0xe9 << 18);
        actor->speed = 0xc0 << 9;
        actor->accel = 0xc0 << 9;
        actor->pos.y += 0xf0 << 16;
        actor->prevPos.y = actor->pos.y;
        actor->bounce = 0x6666;
        API_MapActor_TravelToAnimWait(0xb, 0xac << 1, 0xe9 << 2);
        sprite->oam.priority = 3;
        actor->flags |= 1;
        API_CutsceneWait(0x28);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_PlayPendingSound();
        API_SetFlag(0x83 << 4);
    }
    OvlFunc_882_2008ec4();
    API_SetFlag(0xc4 << 2);
    if (API_GetFlag(0x837) && !API_GetFlag(0x841) && !API_GetFlag(0xc3 << 2)) {
        if (((struct Actor *)__MapActor_GetActor(0))->pos.y > (0x80 << 16)) {
            OvlFunc_882_2009a64(0xa3 << 1, 0x396);
            API_MapActor_TravelToAnimWait(0, 0x123, 0x396);
        } else {
            OvlFunc_882_2009a64(0x14f, 0x3bd);
        }
        API_SetFlag(0xc3 << 2);
    }
    API_CutsceneEnd();
}


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

void OvlFunc_882_20090a4(void)
{
    CopyMapTileAttributes(0x1d, 0x17, 1, 1, 0xf, 0x35);
    CopyMapTileAttributes(0x1d, 0x17, 1, 1, 0xe, 0x35);
    CopyMapTileAttributes(0x1d, 0x17, 1, 1, 0xd, 0x35);
    CopyMapTileAttributes(0x1a, 0x14, 2, 1, 0xe, 0x34);
    CopyMapTileAttributes(0x19, 0x15, 1, 1, 0xd, 0x36);
    CopyMapTileAttributes(0x19, 0x15, 1, 1, 0xf, 0x36);
    CopyMapTileAttributes(0xe, 0x35, 1, 1, 0xe, 0x36);
    CopyMapTileAttributes(0xd, 0x37, 1, 1, 0xf, 0x37);
}
void OvlFunc_882_2009154(void)
{
    extern void OvlFunc_882_20092f0(void);
    u16 savedPriority;
    u8 savedFlags;
    struct Actor *boulder, *player;

    if (API_GetFlag(0x312))
        return;
    API_CutsceneStart();
    if (!API_GetFlag(0x832)) {
        boulder = (struct Actor *)__MapActor_GetActor(13);
        player = (struct Actor *)__MapActor_GetActor(0);
        savedPriority = player->sprite->oam.priority;
        savedFlags = player->flags;
        API_Func_8012330(0x40000, 0x40000, 0x10000);
        API_PlaySound(0x8d);
        API_WaitFrames(40);
        API_PlaySound(0x91);
        API_Func_8092b08(0, 3);
        ((struct Actor *)__MapActor_GetActor(0))->flags |= 2;
        API_MapActor_SetPos(13, 0, 0x2bf0000);
        boulder->speed = 0x18000;
        boulder->accel = 0x18000;
        boulder->pos.y += 0x500000;
        boulder->prevPos.y = boulder->pos.y;
        boulder->bounce = 0x8000;
        API_MapActor_TravelToAnimWait(13, 0x40, 0x2bf);
        API_CutsceneWait(40);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_8012350();
        API_MapActor_PlayPendingSound();
        API_SetFlag(0x832);
        API_Func_8092b08(0, savedPriority);
        ((struct Actor *)__MapActor_GetActor(0))->flags |= 1;
        player->flags = savedFlags;
    }
    OvlFunc_882_20092f0();
    API_SetFlag(0x312);
    if (API_GetFlag(0x837) && !API_GetFlag(0x841) && !API_GetFlag(0x30c)) {
        if (((struct Actor *)__MapActor_GetActor(0))->pos.z <= 0x2b4ffff) {
            OvlFunc_882_2009a64(0x3e, 0x29d);
            API_MapActor_TravelToAnimWait(0, 0x1b, 0x273);
        } else {
            OvlFunc_882_2009a64(0x4b, 0x2cb);
            API_MapActor_TravelToAnimWait(0, 0x43, 0x2f5);
        }
        API_SetFlag(0x30c);
    }
    API_CutsceneEnd();
}

void OvlFunc_882_20092f0(void) {
    __Func_8010704(0x1d, 0x16, 1, 1, 3, 0x2a);
    __Func_8010704(0x1d, 0x15, 1, 1, 2, 0x2a);
    __Func_8010704(0x1d, 0x15, 1, 1, 4, 0x2a);
    __Func_8010704(0x17, 0x14, 3, 1, 2, 0x2b);
}

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

void OvlFunc_882_2009498(void)
{
    CopyMapTileAttributes(0x1d, 0x14, 1, 1, 0x1a, 0x47);
    CopyMapTileAttributes(0x1d, 0x14, 1, 1, 0x1a, 0x46);
    CopyMapTileAttributes(0x1d, 0x14, 1, 1, 0x1b, 0x46);
    CopyMapTileAttributes(0x1c, 0x15, 1, 1, 0x1c, 0x47);
    CopyMapTileAttributes(0x1c, 0x16, 1, 1, 0x1b, 0x48);
}

extern unsigned char Lconst_e67[] __asm__(".Lconst_e67");
__asm__(".equ .Lconst_e67, 0xe67");

void OvlFunc_882_200950c(void) {
    extern void __MapActor_RunScript(int, void *);
    extern unsigned char gScript_882__0200c8c0[];
    int msg;

    API_CutsceneStart();
    API_MapActor_TravelToAnimWait(0, 0x83 << 1, 0x32a);
    API_MapActor_SetPos(0x14, 0x83 << 17, 0x3250000);
    API_MapActor_TravelToAnim(0x14, 0x83 << 1, 0x339);
    API_MapActor_SetSpeed(0, 0x80 << 10, 0x80 << 9);
    API_MapActor_Jump(0, 2, 0);
    API_MapActor_TravelToAnimWait(0, 0x8d << 1, 0x357);
    API_MapActor_SetAnim(0x14, 1);
    API_MapActor_Jump(0, 4, 0);
    API_MapActor_TurnToFaceActor(0, 0x14, 0);
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(0x1e);
    API_Func_80925cc(0, 2);
    API_MapActor_Emote(0x14, 0x80 << 1, 0x14);
    msg = (int)Lconst_e67;
    API_MessageID(msg);
    API_ActorMessage(0x14, 0);
    API_CutsceneWait(0x14);
    __Func_8093054(0x14, 0);
    API_Func_80925cc(0x14, 2);
    API_MessageID(msg + 4);
    API_ActorMessage_Wait(0x14, 0, 0x14);
    __MapActor_RunScript(0x14, gScript_882__0200c8c0);
    API_SetFlag(0x835);
    API_CutsceneEnd();
}

void OvlFunc_882_2009600(void) {
    if (API_GetFlag(0x836) == 0 && API_GetFlag(0x837) == 0) {
        API_CutsceneStart();
        API_MessageID(0xe6c);
        API_ActorMessage_Wait(0x16, 0, 0x14);
        API_MapActor_Emote(0, 0x101, 0x28);
        API_MapActor_TravelToAnimWait(0, 0xbf << 1, 0x26b);
        API_MapActor_Face(0, 0x16, 0);
        API_Func_80925cc(0, 2);
        API_CutsceneWait(0x1e);
        API_ActorMessage(0x16, 0);
        API_SetFlag(0x836);
        API_CutsceneEnd();
    }
}

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

extern unsigned char Lconst_e74[] __asm__(".Lconst_e74");
__asm__(".equ .Lconst_e74, 0xe74");

void OvlFunc_882_2009828(void)
{
    extern void __MapActor_RunScript(int, void *);
    extern unsigned char gScript_882__0200c934[];
    extern unsigned char gScript_882__0200c984[];
    extern void __Func_8093054(int, int);
    struct Actor *a;
    int msg;
    int speed;

    if (API_GetFlag(0x837))
        return;

    API_CutsceneStart();
    API_MapActor_Surprise(0x16, 0x80 << 1);
    msg = (int)Lconst_e74;
    API_MessageID(msg);
    API_ActorMessage(0x16, 0);
    API_MapActor_Emote(0, 0x80 << 1, 0x14);
    API_Func_8092adc(0, 0x80 << 7, 0);
    API_Func_80933d4(0x6666, 0xccc);
    API_Func_80933f8(0x80 << 17, -1, 0x93 << 18, 1);
    API_MapActor_SetSpeed(0x16, 0x80 << 10, 0x80 << 9);
    __MapActor_RunScript(0x16, gScript_882__0200c934);
    API_MapActor_TurnToFaceActor(0, 0x16, 0);
    API_CutsceneWait(0x1e);
    API_MapActor_SetBehavior(0x16, (int)gScript_882__0200c984);
    API_ActorMessage(0x16, 0);
    a = (struct Actor *)__MapActor_GetActor(0x16);
    speed = 0x80 << 9;
    a->scale.y = speed;
    API_Func_80925cc(0x16, 1);
    API_CutsceneWait(0x14);
    __Func_8093054(0x16, 0);
    API_CutsceneWait(0x28);
    API_Func_80925cc(0x16, 1);
    API_MessageID(msg + 5);
    API_ActorMessage_Wait(0x16, 0, 0x14);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_DoAnim(0x16, 3);
    API_ActorMessage(0x16, 0);
    API_MapActor_SetSpeed(0x16, speed, 0x80 << 8);
    API_MapActor_SetAnim(0x16, 2);
    a = (struct Actor *)__MapActor_GetActor(0);
    if (a != NULL)
        API_MapActor_TravelTo(0x16, ((s16 *)&a->pos.x)[1], ((s16 *)&a->pos.z)[1]);
    API_MapActor_WaitMovement(0x16);
    API_MapActor_SetPos(0x16, 0, 0);
    API_Func_80917d0(1, 1);
    API_MapActor_SetAnim(0x15, 3);
    API_SetFlag(0x837);
    API_CutsceneEnd();
}

void OvlFunc_882_200998c(void) {
    int a;

    API_CutsceneStart();
    a = __MapActor_GetActor(0);
    if (a != 0) {
        API_MapActor_SetPos(0x16, ((struct Actor *)a)->pos.x, ((struct Actor *)a)->pos.z);
    }
    API_MapActor_SetSpeed(0x16, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0x16, 0x119, 0x1fb);
    API_MapActor_TurnToFaceActor(0x16, 0, 0);
    API_CutsceneWait(0x1e);
    API_MessageID(0xe7b);
    API_ActorMessage(0x16, 0);
    API_MapActor_Face(0, 0x16, 0);
    API_CutsceneWait(0xa);
    API_Func_80925cc(0, 1);
    API_CutsceneWait(0x14);
    API_Func_8092adc(0x16, 0x80 << 7, 0);
    API_ActorMessage(0x16, 0);
    API_MapActor_SetAnim(0x16, 2);

    a = __MapActor_GetActor(0);
    if (a != 0) {
        API_MapActor_TravelTo(0x16, *(short *)(a + 0xa), *(short *)(a + 0x12));
    }
    API_MapActor_WaitMovement(0x16);
    API_MapActor_SetPos(0x16, 0, 0);
    API_MapActor_TravelToAnimWait(0, 0x80 << 1, 0x205);
    API_CutsceneEnd();
}

void OvlFunc_882_2009a64(int x, int y)
{
    struct Actor *a;

    a = (struct Actor *)__MapActor_GetActor(0);
    if (a != NULL)
        API_MapActor_SetPos(0x16, a->pos.x, a->pos.z);
    API_MapActor_SetSpeed(0x16, 0x80 << 9, 0x80 << 8);
    API_MapActor_TravelToAnimWait(0x16, x, y);
    API_MapActor_TurnToFaceActor(0, 0x16, 0);
    API_CutsceneWait(0x14);
    API_MapActor_Surprise(0, 0x81 << 1);
    API_CutsceneWait(0x28);
    API_MessageID(0xe7d);
    API_ActorMessage(0x16, 0);
    API_Func_80925cc(0x16, 2);
    API_ActorMessage(0x16, 0);
    API_MapActor_DoAnim(0, 3);
    API_MapActor_SetAnim(0x16, 2);
    a = (struct Actor *)__MapActor_GetActor(0);
    if (a != NULL)
        API_MapActor_TravelTo(0x16, ((s16 *)&a->pos.x)[1], ((s16 *)&a->pos.z)[1]);
    API_MapActor_WaitMovement(0x16);
    API_MapActor_SetPos(0x16, 0, 0);
}

void OvlFunc_882_2009b18(void)
{
    extern unsigned char CS_882_54b0[] __asm__(".Lm882_54b0");
    extern unsigned char CS_882_57f8[] __asm__(".Lm882_57f8");
    extern unsigned char CS_882_57fc[] __asm__(".Lm882_57fc");
    extern void OvlFunc_882_200c56c(void);
    extern void OvlFunc_882_200c5a8(void);
    extern unsigned char gScript_882__0200ca00[];
    extern unsigned char gScript_882__0200ca3c[];
    extern void __DeleteFieldActor(int);
    extern void __Func_8092950(int, int);
    extern void __LoadFieldActors(void *);
    extern int __MapActor_GetActor(int);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_882_200c2bc(unsigned int);
    extern void OvlFunc_882_200c550(void);
    extern void OvlFunc_882_200c560(void);
    unsigned int frame;
    int raisedY;
    int flagValue1;
    struct Actor *actor;

    flagValue1 = API_GetFlag(0x838);
    if (flagValue1 == 0) {
        API_CutsceneStart();
        __LoadFieldActors(CS_882_54b0);
        OvlFunc_882_200c550();
        API_WaitFrames(1);
        API_PlaySound(0x8d);
        API_Func_8012330(0x20000, 0x20000, 0x10000);
        API_CutsceneWait(30);
        API_Func_8012330(0x30000, 0x30000, 0x10000);
        API_PlaySound(0x91);
        API_CutsceneWait(30);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_SetPos(22, actor->pos.x, actor->pos.z);
        }
        API_MapActor_SetSpeed(0, 0x20000, 0x10000);
        API_MapActor_SetSpeed(22, 0x20000, 0x10000);
        API_MapActor_SetBehavior(0, (int)gScript_882__0200ca00);
        __MapActor_RunScript(22, gScript_882__0200ca3c);
        API_MapActor_WaitScript(0);
        API_MapActor_Emote(0, 0x100, 0);
        API_MapActor_Emote(22, 0x100, 30);
        API_Func_8012330(0x40000, 0x40000, 0x10000);
        API_PlaySound(0x91);
        API_CutsceneWait(0x28);
        API_Func_8012330(0x50000, 0x50000, 0x10000);
        API_PlaySound(0x91);
        API_CutsceneWait(20);
        API_MapActor_Surprise(0, 0x102);
        API_MapActor_Surprise(22, 0x102);
        API_CutsceneWait(0x28);
        API_MapActor_SetAnim(0x20, 5);
        API_MapActor_SetAnim(0x21, 5);
        API_MapActor_SetAnim(30, 8);
        API_MapActor_SetAnim(29, 8);
        actor = (struct Actor *)__MapActor_GetActor(30);
        actor->scale.x = 0xffff0000;
        API_Func_8092b08(0x20, 2);
        API_Func_8092b08(0x21, 2);
        API_Func_8092b08(30, 3);
        API_Func_8092b08(29, 3);
        API_MessageID(0xe7f);
        API_ActorMessage_Wait(28, 0, 20);
        API_Func_8092adc(0, 0xc000, 0);
        API_Func_8092adc(22, 0xc000, 20);
        API_Func_80933d4(0x40000, 0x8000);
        API_Func_80933f8(0x700000, -1, 0x14b0000, 1);
        API_Func_8093530();
        for (frame = 0; frame < 40; frame++) {
            actor = (struct Actor *)__MapActor_GetActor(0x20);
            OvlFunc_882_200c2bc((unsigned int)actor);
            actor = (struct Actor *)__MapActor_GetActor(0x21);
            OvlFunc_882_200c2bc((unsigned int)actor);
            actor = (struct Actor *)__MapActor_GetActor(30);
            OvlFunc_882_200c2bc((unsigned int)actor);
            actor = (struct Actor *)__MapActor_GetActor(29);
            OvlFunc_882_200c2bc((unsigned int)actor);
            API_WaitFrames(1);
        }
        *(int *)CS_882_57f8 = 0;
        *(int *)CS_882_57fc = 0;
        API_StartTask(OvlFunc_882_200c56c, 0xc80);
        API_StartTask(OvlFunc_882_200c5a8, 0xc80);
        API_CutsceneWait(0x28);
        *(int *)CS_882_57fc = 1;
        API_CutsceneWait(30);
        API_MapActor_SetPos(19, 0x720000, 0x1220000);
        actor = (struct Actor *)__MapActor_GetActor(19);
        raisedY = (int)((actor->pos.y + 0x400000));
        actor->pos.y = raisedY;
        actor->prevPos.y = raisedY;
        API_MapActor_SetSpeed(19, 0xcccc, 0x6666);
        API_PlaySound(0x91);
        API_MapActor_TravelToWait(19, 0x72, 0x14d);
        API_MapActor_SetAnim(19, 2);
        API_Func_8012330(0x20000, 0x20000, 0x10000);
        API_PlaySound(0x91);
        *(int *)CS_882_57fc = 0;
        API_MapActor_SetSpeed(19, 0x6666, 0x3333);
        API_MapActor_TravelToWait(19, 0x72, 0x12c);
        API_MapActor_SetAnim(19, 2);
        API_Func_8012330(0x50000, 0x50000, 0x10000);
        API_PlaySound(0x91);
        *(int *)CS_882_57fc = 2;
        API_MapActor_SetSpeed(19, 0xcccc, 0x6666);
        API_MapActor_TravelToWait(19, 0x72, 0x14d);
        API_MapActor_SetAnim(19, 2);
        API_Func_8012330(0x20000, 0x20000, 0x10000);
        API_PlaySound(0x91);
        *(int *)CS_882_57fc = 0;
        API_MapActor_SetSpeed(19, 0x6666, 0x3333);
        API_MapActor_TravelToWait(19, 0x72, 0x12c);
        API_MapActor_SetAnim(19, 2);
        API_Func_8012330(0x40000, 0x40000, 0x10000);
        API_PlaySound(0x91);
        *(int *)CS_882_57fc = 2;
        API_MapActor_SetSpeed(19, 0xcccc, 0x6666);
        API_MapActor_TravelToWait(19, 0x72, 0x14d);
        API_MapActor_SetAnim(19, 2);
        API_Func_8012330(0x20000, 0x20000, 0x10000);
        API_PlaySound(0x91);
        *(int *)CS_882_57fc = 1;
        API_CutsceneWait(20);
        API_MapActor_Surprise(0x20, 0x102);
        API_Func_80925cc(0x20, 2);
        API_ActorMessage(31, 0);
        API_MapActor_Emote(0x21, 0x100, 0);
        API_Func_80925cc(0x21, 2);
        API_ActorMessage_Wait(28, 0, 0x28);
        API_MapActor_Surprise(30, 0x102);
        API_Func_80925cc(30, 2);
        API_ActorMessage(30, 0);
        *(int *)CS_882_57f8 = 1;
        API_MapActor_SetAnim(29, 1);
        API_WaitFrames(1);
        __Func_8092950(29, 0);
        API_MapActor_Emote(29, 0x105, 20);
        API_Func_8092adc(29, 0x8000, 0x28);
        API_Func_8092adc(29, 0, 20);
        API_Func_8092adc(29, 0x8000, 20);
        API_Func_8092adc(29, 0x4000, 0x28);
        API_MapActor_Emote(29, 0x100, 0);
        API_Func_80925cc(29, 2);
        API_MapActor_Jump(29, 4, 0x28);
        API_MapActor_SetAnim(29, 9);
        API_CutsceneWait(10);
        API_ActorMessage_Wait(29, 0, 20);
        API_PlaySound(0x121);
        API_Func_8012330(-1, -1, 0xe666);
        API_Func_80933d4(0x60000, 0xc000);
        API_Func_80933f8(0x540000, -1, 0x2340000, 1);
        API_Func_8093530();
        API_MapActor_PlayPendingSound();
        API_MapActor_Face(22, 0, 0);
        API_CutsceneWait(20);
        API_MapActor_Surprise(22, 0x102);
        API_CutsceneWait(30);
        API_StopTask(OvlFunc_882_200c56c);
        API_StopTask(OvlFunc_882_200c5a8);
        API_ActorMessage(22, 0);
        API_MapActor_Face(0, 22, 0);
        API_CutsceneWait(20);
        OvlFunc_882_200c560();
        API_MapActor_SetAnim(0, 3);
        API_MapActor_DoAnim(22, 3);
        API_CutsceneWait(20);
        API_MapActor_SetAnim(22, 2);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != 0) {
            API_MapActor_TravelTo(22, *(short *)((char *)actor + 0xa), *(short *)((char *)actor + 0x12));
        }
        API_MapActor_WaitMovement(22);
        API_MapActor_SetPos(22, 0, 0);
        __DeleteFieldActor(31);
        __DeleteFieldActor(28);
        __DeleteFieldActor(30);
        __DeleteFieldActor(29);
        __DeleteFieldActor(0x20);
        __DeleteFieldActor(0x21);
        API_SetFlag(0x838);
        API_CutsceneEnd();
    }
}

extern unsigned char L48bc[] __asm__(".Lm882_48bc");
extern unsigned int iwram_3001e40__a0 __asm__("iwram_3001e40");

void OvlFunc_882_200a09c(int actor, int colorswap) {
    unsigned char *sprite;
    unsigned int *p;
    unsigned int mask;
    int cs;
    unsigned char count;
    int i;

    mask = *(unsigned char *)(actor + 0x54) & 0xf;
    if (mask != 1)
        return;

    sprite = *(unsigned char **)(actor + 0x50);
    cs = colorswap - 1;
    if (colorswap == 0) {
        cs = L48bc[(iwram_3001e40__a0 >> 1) & mask];
    }

    count = sprite[0x27];
    if (count != 0) {
        p = (unsigned int *)(sprite + 0x28);
        for (i = count; i != 0; i--) {
            unsigned int e = *p++;
            if (e != 0 && *(unsigned int *)((char *)e + 0x10) != 0) {
                *(unsigned char *)((char *)e + 5) = cs;
            }
        }
    }
    sprite[0x25] = 1;
}

extern unsigned int L57fc__a1 __asm__(".Lm882_57fc");
extern void OvlFunc_882_200a09c(int, int);
extern unsigned int iwram_3001e40__a1 __asm__("iwram_3001e40");

void OvlFunc_882_200a0fc(void)
{
    if ((iwram_3001e40__a1 >> L57fc__a1) & 3)
    {
        OvlFunc_882_200a09c(__MapActor_GetActor(0x20), 1);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x21), 1);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x1e), 1);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x1d), 1);
    }
    else
    {
        OvlFunc_882_200a09c(__MapActor_GetActor(0x20), 8);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x21), 8);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x1e), 8);
        OvlFunc_882_200a09c(__MapActor_GetActor(0x1d), 8);
    }
}
void OvlFunc_882_200a180(void)
{
    extern unsigned char gScript_882__0200cec8[];
    extern void __Actor_SetSpriteFlags(void *, int);
    extern unsigned int __Random(void);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern void OvlFunc_882_200a8a4(void);
    struct Actor *actor;

    if (!API_GetFlag(0x83a)) {
        API_CutsceneStart();
        API_MapActor_SetPos(10, 0xc00000, 0x4be0000);
        API_Func_8092adc(10, 0x2000, 0);
        API_MapActor_SetAnim(10, 5);
        ((struct Actor *)__MapActor_GetActor(10))->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
        API_MapActor_SetBehavior(10, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(9, 0xc00000, 0x4a50000);
        API_Func_8092adc(9, 0x2000, 0);
        API_MapActor_SetPos(24, 0xe30000, 0x4be0000);
        API_Func_8092adc(24, 0x4000, 0);
        API_MapActor_SetAnim(24, 6);
        ((struct Actor *)__MapActor_GetActor(24))->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
        API_MapActor_SetBehavior(24, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(25, 0xfa0000, 0x4be0000);
        API_Func_8092adc(25, 0x4000, 0);
        API_MapActor_SetAnim(25, 6);
        ((struct Actor *)__MapActor_GetActor(25))->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
        API_MapActor_SetBehavior(25, (int)gScript_882__0200cec8);
        API_MapActor_SetPos(26, 0xe30000, 0x4a50000);
        API_Func_8092adc(26, 0x3000, 0);
        API_MapActor_SetPos(23, 0xf30000, 0x4fd0000);
        API_Func_8092adc(23, 0xc000, 0);
        __Actor_SetSpriteFlags((void *)__MapActor_GetActor(23), 0);
        API_WaitFrames(3);
        API_MessageID(0xe8c);
        API_ActorMessage(0x201a, 0);
        API_MapActor_Emote(0, 0x100, 20);
        API_MapActor_TravelToAnimWait(0, 0x96, 0x446);
        actor = (struct Actor *)__MapActor_GetActor(0);
        if (actor != NULL) {
            API_MapActor_SetPos(22, actor->pos.x, actor->pos.z);
        }
        API_MapActor_TravelToAnimWait(22, 0x84, 0x446);
        API_MapActor_TurnToFaceActor(0, 22, 0);
        API_CutsceneWait(0x28);
        API_Func_8092adc(0, 0x4000, 0);
        API_Func_8092adc(22, 0x4000, 20);
        API_Func_80933d4(0x40000, 0x8000);
        API_Func_80933f8(0xd80000, -1, 0x4d00000, 1);
        API_Func_8093530();
        API_CutsceneWait(0x28);
        API_Func_80925cc(10, 2);
        API_ActorMessage_Wait(10, 0, 10);
        API_Func_80925cc(23, 3);
        API_Func_8092adc(9, 0, 10);
        API_MapActor_DoAnim(9, 3);
        API_ActorMessage_Wait(9, 0, 10);
        API_Func_8092adc(9, 0x3000, 10);
        API_Func_80933d4(0x30000, 0x6000);
        API_Func_80933f8(0xe80000, -1, 0x4e50000, 1);
        API_Func_8093530();
        API_CutsceneWait(20);
        API_PlaySound(0x86);
        API_MapActor_Jump(23, 4, 0);
        API_MapActor_SetAnim(23, 6);
        API_CutsceneWait(10);
        API_MapActor_SetPos(23, 0, 0);
        API_CutsceneWait(0x3c);
        API_MapActor_PlayPendingSound();
        {
            struct Actor *a;
            API_MapActor_SetAnim(10, 1);
            a = (struct Actor *)__MapActor_GetActor(10);
            a->scale.x = 0x10000;
            a->scale.y = 0x10000;
            API_MapActor_SetAnim(24, 1);
            a = (struct Actor *)__MapActor_GetActor(24);
            a->scale.x = 0x10000;
            a->scale.y = 0x10000;
            API_MapActor_SetAnim(25, 1);
            a = (struct Actor *)__MapActor_GetActor(25);
            a->scale.x = 0x10000;
            a->scale.y = 0x10000;
        }
        API_Func_809259c(10, 2);
        API_Func_809259c(9, 2);
        API_Func_809259c(24, 2);
        API_Func_809259c(25, 2);
        API_Func_80925cc(26, 2);
        API_Func_80933d4(0x9999, 0x1333);
        API_Func_80933f8(0xd80000, -1, 0x4d00000, 1);
        API_Func_8093530();
        API_MapActor_Surprise(26, 0x102);
        API_MapActor_Surprise(9, 0x102);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(26, 2);
        API_Func_809259c(26, 3);
        API_ActorMessage(26, 0);
        API_MapActor_Jump(25, 2, 0);
        API_MapActor_TravelTo(25, 0xea, 0x4b5);
        API_MapActor_Jump(26, 2, 0);
        API_MapActor_TravelTo(26, 0xe3, 0x4b1);
        API_CutsceneWait(0x5a);
        API_Func_80933f8(0xe80000, -1, 0x4e50000, 1);
        API_Func_8093530();
        API_MapActor_SetPos(23, 0xf30000, 0x4fd0000);
        API_WaitFrames(1);
        API_PlaySound(0x6a);
        ((struct Actor *)__MapActor_GetActor(23))->motion.y = 0x20000;
        API_CutsceneWait(6);
        API_MapActor_SetAnim(23, 7);
        API_CutsceneWait(20);
        API_MapActor_PlayPendingSound();
        API_CutsceneWait(20);
        API_Func_80933d4(0x19999, 0x3333);
        API_Func_80933f8(0xd80000, -1, 0x4d00000, 1);
        API_Func_8093530();
        API_Func_80925cc(24, 2);
        API_CutsceneWait(20);
        API_MapActor_Emote(24, 0x105, 0x28);
        API_MapActor_TurnToFaceActor(24, 10, 0);
        API_CutsceneWait(10);
        API_Func_80925cc(10, 2);
        API_ActorMessage(0x800a, 0);
        ((struct Actor *)__MapActor_GetActor(25))->__unk5A &= ~1;
        ((struct Actor *)__MapActor_GetActor(26))->__unk5A &= ~1;
        API_MapActor_SetSpeed(25, 0x9999, 0x4ccc);
        API_MapActor_SetSpeed(26, 0x9999, 0x4ccc);
        API_MapActor_TravelTo(25, 0xf7, 0x4ba);
        API_MapActor_TravelToWait(26, 0xe3, 0x4a5);
        ((struct Actor *)__MapActor_GetActor(25))->__unk5A |= 1;
        ((struct Actor *)__MapActor_GetActor(26))->__unk5A |= 1;
        API_Func_8092adc(26, 0x6000, 0);
        API_Func_8092adc(25, 0x8000, 10);
        API_MapActor_SetAnim(24, 4);
        API_ActorMessage_Wait(0x8018, 0, 10);
        API_Func_8092adc(10, 0xc000, 20);
        API_Func_8092adc(10, 0, 10);
        API_MapActor_SetAnim(10, 4);
        API_ActorMessage_Wait(0x800a, 0, 10);
        API_MapActor_Emote(24, 0x105, 0);
        API_MapActor_Emote(10, 0x105, 0x3c);
        API_MapActor_Emote(9, 0x106, 20);
        API_Func_8092adc(9, 0x8000, 0x28);
        API_Func_8092adc(9, 0xc000, 20);
        API_Func_8092adc(9, 0, 30);
        API_Func_8092adc(9, 0x4000, 10);
        API_ActorMessage_Wait(9, 0, 10);
        API_Func_8092adc(10, 0xc000, 0);
        API_Func_8092adc(25, 0x9000, 0);
        API_Func_8092adc(24, 0xa000, 0);
        API_Func_8092adc(26, 0x8000, 10);
        API_Func_80925cc(10, 1);
        API_ActorMessage_Wait(0x800a, 0, 10);
        API_MapActor_SetAnim(9, 4);
        API_ActorMessage_Wait(9, 0, 10);
        API_MapActor_Emote(10, 0x105, 0);
        API_MapActor_Emote(24, 0x105, 0);
        API_MapActor_Emote(25, 0x105, 0);
        API_MapActor_Emote(26, 0x105, 0x28);
        API_Func_8092adc(9, 0, 10);
        API_MapActor_TurnToFaceActor(24, 25, 0);
        API_CutsceneWait(20);
        API_Func_8092adc(9, 0, 0);
        API_Func_8092adc(10, 0, 10);
        API_Func_8092adc(24, 0x8000, 0);
        API_Func_8092adc(25, 0x8000, 10);
        API_MapActor_SetAnim(24, 3);
        API_MapActor_DoAnim(25, 3);
        API_MapActor_TurnToFaceActor(10, 9, 0);
        API_CutsceneWait(20);
        API_Func_80925cc(10, 1);
        API_ActorMessage_Wait(0x800a, 0, 10);
        API_MapActor_DoAnim(9, 3);
        API_Func_8092adc(24, 0xd000, 10);
        API_Func_809259c(24, 1);
        API_ActorMessage_Wait(24, 0, 10);
        API_Func_8092adc(10, 0, 0);
        API_Func_8092adc(9, 0, 0);
        API_Func_80925cc(26, 1);
        API_Func_8092adc(26, 0x2000, 20);
        API_Func_8092adc(25, 0xa000, 20);
        API_MapActor_DoAnim(25, 3);
        API_ActorMessage_Wait(25, 0, 10);
        API_MapActor_DoAnim(26, 3);
        API_CutsceneWait(20);
        API_Func_80925cc(9, 2);
        API_MapActor_DoAnim(9, 3);
        API_ActorMessage_Wait(9, 0, 10);
        API_Func_8092adc(26, 0x8000, 10);
        API_MapActor_DoAnim(26, 3);
        API_CutsceneWait(20);
        API_Func_80925cc(9, 1);
        API_ActorMessage_Wait(9, 0, 10);
        OvlFunc_882_200a8a4();
        API_SetFlag(0x83a);
        API_CutsceneEnd();
    }
}
/* pooled literal (ldr rN, =0xe9b in the original) */
__asm__(".equ .Lconst_e9b, 0xe9b\n.equ .Lconst_ea1, 0xea1");
extern unsigned char PrologueExitFirstMessage[] __asm__(".Lconst_e9b");
extern unsigned char PrologueExitSecondMessage[] __asm__(".Lconst_ea1");

static inline void PrologueExitHalf(unsigned short *field, unsigned int value)
{
    *field = value;
}

static inline void PrologueExitAsk(int actor, int mode)
{
    extern int PrologueExitPrompt(int, int) __asm__("__ShowActorMessage_NoWait");
    PrologueExitPrompt(actor, mode);
}

void OvlFunc_882_200a8a4(void)
{
    extern unsigned char CS_882_578a[] __asm__(".Lm882_578a");
    extern unsigned char CS_882_57a0[] __asm__(".Lm882_57a0");
    extern unsigned char CS_882_57cc[] __asm__(".Lm882_57cc");
    extern unsigned char CS_882_57e2[] __asm__(".Lm882_57e2");
    extern unsigned char gScript_881__0200ca78[];
    extern unsigned char gScript_882__0200cab4[];
    extern unsigned char gScript_882__0200cb28[];
    extern unsigned char gScript_882__0200cb9c[];
    extern unsigned char gScript_882__0200cc0c[];
    extern unsigned char gScript_882__0200cc5c[];
    extern unsigned char gScript_882__0200cca8[];
    extern unsigned char gScript_882__0200cec8[];
    extern void __Func_8010560(void *, int, int);
    extern int __Func_8091c7c(int, int);
    extern int PrologueExitActor(int) __asm__("__MapActor_GetActor");
    extern void __MapActor_RunScript(int, void *);
    extern unsigned int __Random(void);
    extern int PrologueExitPrompt(int, int) __asm__("__ShowActorMessage_NoWait");
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    int message;
    unsigned int randomDraw1;
    unsigned int delay1;
    unsigned int randomDraw2;
    unsigned int delay2;
    unsigned int randomDraw3;
    unsigned int delay3;
    int firstChoice;
    int secondChoice;
    unsigned char *actor;
    unsigned char *leader;

    API_Func_8092adc(26, 0x3000, 0);
    API_Func_8092adc(24, 0xd000, 0);
    API_Func_8092adc(25, 0xb000, 0);
    API_Func_8092adc(9, 0x3000, 0);
    API_Func_8092adc(10, 0xd000, 20);
    API_MapActor_SetAnim(26, 3);
    API_MapActor_SetAnim(24, 3);
    API_MapActor_SetAnim(25, 3);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(25, 3);
    API_CutsceneWait(20);
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x860000, -1, 0x4ab0000, 1);
    API_MapActor_SetSpeed(26, 0x19999, 0xcccc);
    API_MapActor_SetSpeed(9, 0x19999, 0xcccc);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cab4);
    __MapActor_RunScript(9, gScript_881__0200ca78);
    API_PlaySound(0x9e);
    __Func_8010560(CS_882_57a0, 0x26, 0x48);
    API_CutsceneWait(10);
    API_MapActor_TravelToAnimWait(9, 0x95, 0x497);
    API_MapActor_SetPos(9, 0, 0);
    API_MapActor_TravelToAnimWait(25, 0xfa, 0x4be);
    API_MapActor_PlayPendingSound();
    API_Func_8092adc(10, 0x3000, 0);
    API_Func_8092adc(24, 0x3000, 0);
    API_Func_8092adc(25, 0x3000, 0);
    API_MapActor_SetAnim(10, 5);
    API_MapActor_SetAnim(24, 6);
    API_MapActor_SetAnim(25, 6);
    actor = (unsigned char *)PrologueExitActor(10);
    randomDraw1 = __Random();
    delay1 = _umodsi3_RAM(randomDraw1, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay1 + 0x3c));
    actor = (unsigned char *)PrologueExitActor(24);
    randomDraw2 = __Random();
    delay2 = _umodsi3_RAM(randomDraw2, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay2 + 0x3c));
    actor = (unsigned char *)PrologueExitActor(25);
    randomDraw3 = __Random();
    delay3 = _umodsi3_RAM(randomDraw3, 0x5a);
    actor += 0x64;
    PrologueExitHalf((unsigned short *)actor, (delay3 + 0x3c));
    API_MapActor_SetBehavior(10, (int)gScript_882__0200cec8);
    API_MapActor_SetBehavior(24, (int)gScript_882__0200cec8);
    API_MapActor_SetBehavior(25, (int)gScript_882__0200cec8);
    API_MapActor_WaitScript(26);
    API_CutsceneWait(10);
    API_PlaySound(0x9f);
    __Func_8010560(CS_882_57e2, 0x26, 0x48);
    API_CutsceneWait(30);
    API_MapActor_PlayPendingSound();
    API_Func_80933f8(0x700000, -1, 0x4c90000, 1);
    API_PlaySound(0x9e);
    __Func_8010560(CS_882_578a, 0x23, 0x49);
    API_CutsceneWait(20);
    API_MapActor_PlayPendingSound();
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cb28);
    API_CutsceneWait(20);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cb9c);
    API_CutsceneWait(0x28);
    API_PlaySound(0x9f);
    __Func_8010560(CS_882_57cc, 0x23, 0x49);
    API_MapActor_WaitScript(26);
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(0x28);
    message = (int)PrologueExitFirstMessage;
    API_MessageID(message);
    API_ActorMessage_Wait(9, 0, 20);
    API_MapActor_DoAnim(26, 3);
    API_ActorMessage_Wait(0x201a, 0, 0x28);
    API_MapActor_SetAnim(9, 3);
    API_MapActor_DoAnim(26, 3);
    API_CutsceneWait(30);
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cc0c);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cc5c);
    API_CutsceneWait(0x28);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0x690000, -1, 0x43e0000, 1);
    API_MapActor_WaitScript(9);
    API_Func_8092adc(9, 0, 0);
    API_MapActor_Emote(9, 0x100, 0x28);
    API_ActorMessage_Wait(9, 0, 10);
    API_Func_8092adc(0, 0x8000, 0);
    API_Func_8092adc(22, 0x8000, 10);
    API_MapActor_TravelToAnimWait(9, 0x69, 0x43e);
    API_Func_80925cc(9, 2);
    PrologueExitAsk(0x8009, 0);
    API_Func_8092adc(22, 0, 0);
    firstChoice = __Func_8091c7c(0, 0);
    if (firstChoice == 0) {
        API_MapActor_DoAnim(9, 3);
        API_MessageID((message + 4));
    } else {
        API_Func_80925cc(9, 2);
        API_MessageID((message + 5));
    }
    API_ActorMessage(0x8009, 0);
    API_Func_8092adc(22, 0x8000, 0x28);
    API_MapActor_Emote(9, 0x100, 30);
    message = (int)PrologueExitSecondMessage;
    API_MessageID(message);
    PrologueExitAsk(0x8009, 0);
    secondChoice = __Func_8091c7c(0, 0);
    if (secondChoice == 0) {
        API_MapActor_DoAnim(9, 3);
        API_MessageID((message + 1));
        API_ActorMessage_Wait(0x8009, 0, 30);
        API_Func_8092adc(22, 0x8000, 20);
        API_MapActor_SetAnim(0, 3);
        API_MapActor_SetAnim(22, 3);
        API_MapActor_DoAnim(9, 3);
        API_CutsceneWait(0x28);
    } else {
        API_MapActor_Emote(9, 0x105, 0x5a);
        API_MapActor_Emote(9, 0x103, 0x28);
        API_MapActor_SetAnim(9, 4);
        API_MessageID((message + 2));
        API_ActorMessage(0x8009, 0);
    }
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cca8);
    API_CutsceneWait(0x5a);
    API_MapActor_TurnToFaceActor(0, 22, 0);
    API_CutsceneWait(0x28);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_DoAnim(22, 3);
    API_CutsceneWait(20);
    API_MapActor_SetAnim(22, 2);
    leader = (unsigned char *)PrologueExitActor(0);
    if (leader != 0) {
        API_MapActor_TravelTo(22, *(short *)(leader + 0xa), *(short *)(leader + 0x12));
    }
    API_MapActor_WaitMovement(22);
    API_MapActor_SetPos(22, 0, 0);
}


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
void OvlFunc_882_200adec(void)
{
    extern unsigned char gScript_882__0200cd1c[];
    extern void OvlFunc_882_200b1ac(void);
    struct Actor *actor;
    struct Actor *leader;
    struct Sprite *sprite;

    if (!API_GetFlag(0x840))
        return;
    if (API_GetFlag(0x841))
        return;
    API_CutsceneStart();
    API_MapActor_SetSpeed(0, 0x10000, 0x8000);
    API_MapActor_SetSpeed(22, 0x10000, 0x8000);
    API_MapActor_SetSpeed(26, 0x10000, 0x8000);
    API_MapActor_SetSpeed(8, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0, 0xd9, 0x557);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(22, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(22, 0xeb, 0x557);
    API_Func_8092adc(22, 0xb000, 0);
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(26, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(26, 0xc7, 0x557);
    API_Func_8092adc(26, 0xd000, 0);
    API_MapActor_SetPos(25, 0xf70000, 0x4ba0000);
    API_Func_8092adc(25, 0x6000, 0);
    actor = (struct Actor *)__MapActor_GetActor(8);
    sprite = actor->sprite;
    actor->flags &= ~1;
    sprite->oam.priority = 1;
    leader = (struct Actor *)__MapActor_GetActor(0);
    sprite = leader->sprite;
    leader->flags &= ~1;
    sprite->oam.priority = 2;
    actor = (struct Actor *)__MapActor_GetActor(0);
    if (actor != NULL) {
        API_MapActor_SetPos(8, actor->pos.x, actor->pos.z);
    }
    API_MapActor_TravelToAnimWait(8, 0xdd, 0x569);
    API_Func_8092adc(8, 0xb000, 0x3c);
    API_Func_80925cc(26, 2);
    API_MessageID(0xec6);
    API_ActorMessage_Wait(26, 0, 0x28);
    API_MapActor_SetPos(9, 0x650000, 0x4ad0000);
    API_Func_8092adc(9, 0x2000, 0);
    API_ActorMessage_Wait(0x1009, 0, 10);
    API_Func_8092adc(26, 0xa000, 0);
    API_Func_80933d4(0x13333, 0x2666);
    API_Func_80933f8(0x650000, -1, 0x4ad0000, 1);
    API_MapActor_SetSpeed(9, 0x16666, 0xb333);
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cd1c);
    API_CutsceneWait(0x3c);
    API_Func_80933d4(0x9999, 0x1333);
    API_Func_80933f8(0xbb0000, -1, 0x5300000, 1);
    API_Func_8093530();
    API_CutsceneWait(0x28);
    API_Func_80925cc(26, 2);
    API_ActorMessage_Wait(26, 0, 20);
    API_Func_80925cc(9, 2);
    API_ActorMessage_Wait(0x4009, 0, 20);
    API_Func_80933d4(0x20000, 0x4000);
    API_Func_80933f8(0xdd0000, -1, 0x5690000, 1);
    API_MapActor_Face(0, 8, 0);
    API_MapActor_Face(22, 8, 0);
    API_Func_8092adc(26, 0x3000, 0x50);
    API_Func_80933f8(0xb60000, -1, 0x5500000, 1);
    API_MapActor_TravelToAnimWait(8, 0xb6, 0x568);
    API_MapActor_Face(8, 9, 0);
    API_CutsceneWait(30);
    API_MapActor_DoAnim(8, 3);
    API_CutsceneWait(10);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(22, 9, 0);
    API_MapActor_Face(26, 9, 0);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage(9, 0);
    API_Func_80925cc(26, 2);
    API_ActorMessage_Wait(26, 0, 10);
    API_Func_8092adc(9, 0xe000, 0x28);
    API_Func_8092adc(9, 0x3000, 20);
    API_MapActor_DoAnim(9, 3);
    API_ActorMessage(9, 0);
    API_MapActor_TurnToFaceActor(26, 8, 0);
    API_MapActor_TurnToFaceActor(22, 0, 0);
    API_CutsceneWait(0x28);
    API_MapActor_Face(0, 9, 0);
    API_MapActor_Face(22, 9, 0);
    API_MapActor_Face(26, 9, 0);
    API_MapActor_Face(8, 9, 0);
    API_Func_80925cc(9, 2);
    API_CutsceneWait(20);
    API_ActorMessage_Wait(9, 0, 10);
    API_MapActor_SetAnim(0, 3);
    API_MapActor_SetAnim(26, 3);
    API_MapActor_SetAnim(22, 3);
    API_MapActor_DoAnim(8, 3);
    leader->flags |= 1;
    actor = (struct Actor *)__MapActor_GetActor(8);
    actor->flags |= 1;
    OvlFunc_882_200b1ac();
    API_SetFlag(0x841);
    API_CutsceneEnd();
}

void OvlFunc_882_200b1ac(void)
{
    extern void OvlFunc_882_200bce4(void);
    extern void OvlFunc_882_200be18(void);
    extern void OvlFunc_882_200c5b8(void);
    extern unsigned char gScript_882__0200cd6c[];
    extern unsigned char gScript_882__0200ce04[];
    extern unsigned char gScript_882__0200ce30[];
    extern unsigned char gScript_882__0200ce5c[];
    extern unsigned char gScript_882__0200ce88[];
    extern unsigned char gScript_882__0200ceb4[];
    extern unsigned char gScript_882__0200cec8[];
    extern unsigned char gScript_882__0200cedc[];
    extern void __Actor_SetSpriteFlags(void *, int);
    extern void __Func_800fe9c(void);
    extern void __Func_8091890(int);
    extern void __Func_8092950(int, int);
    extern struct Actor *__Func_8093554(void);
    extern void __Func_8095214(void);
    extern void __Func_8095240(void);
    extern void __Func_8095268(void);
    extern void __MapActor_RunScript(int, void *);
    extern void OvlFunc_882_2008134(void);
    extern void OvlFunc_882_200bc48(void);
    extern void OvlFunc_882_200c0f0(void);
    extern unsigned int __Random(void);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    struct Actor *savedActor19;
    struct Actor *savedActor27;
    struct Sprite *savedSprite27;
    struct Sprite *savedSprite19;

    savedActor19 = (struct Actor *)__MapActor_GetActor(19);
    savedActor27 = (struct Actor *)__MapActor_GetActor(27);
    savedSprite19 = savedActor19->sprite;
    savedSprite27 = savedActor27->sprite;
    API_Func_80933d4(0x10000, 0x2000);
    API_Func_80933f8(0x6e0000, -1, 0x58b0000, 1);
    API_MapActor_SetSpeed(8, 0x13333, 0x9999);
    API_MapActor_SetSpeed(26, 0x13333, 0x9999);
    API_MapActor_SetSpeed(0, 0x13333, 0x9999);
    API_MapActor_SetSpeed(22, 0x13333, 0x9999);
    API_MapActor_SetBehavior(8, (int)gScript_882__0200cd6c);
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cd6c);
    __Func_8095240();
    API_CutsceneWait(10);
    API_MapActor_SetBehavior(0, (int)gScript_882__0200cd6c);
    API_CutsceneWait(10);
    __Func_8095214();
    API_MapActor_SetBehavior(22, (int)gScript_882__0200cd6c);
    API_CutsceneWait(0x80);
    OvlFunc_882_2008134();
    API_Func_80933f8(0xae0000, -1, 0x5940000, 1);
    API_CutsceneWait(0x68);
    API_Func_80933f8(0x990000, -1, 0x52d0000, 1);
    API_MapActor_TravelToAnimWait(9, 0x9e, 0x4f8);
    API_Func_8092adc(9, 0x2000, 0);
    API_MapActor_WaitScript(8);
    API_MapActor_SetBehavior(8, (int)gScript_882__0200ce04);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200ce30);
    API_MapActor_SetBehavior(0, (int)gScript_882__0200ce5c);
    __MapActor_RunScript(22, gScript_882__0200ce88);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_PlaySound(0x91);
    API_CutsceneWait(20);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    API_MapActor_Emote(0, 0x101, 0);
    API_MapActor_Emote(26, 0x101, 0);
    API_MapActor_Emote(22, 0x101, 0);
    API_MapActor_Emote(8, 0x101, 0);
    API_MapActor_Emote(9, 0x101, 0x3c);
    API_MapActor_TurnToFaceActor(26, 8, 0);
    API_MapActor_TurnToFaceActor(22, 0, 0);
    API_CutsceneWait(20);
    ((struct Actor *)__MapActor_GetActor(0))->waveCounter = _umodsi3_RAM(__Random(), 20) + 20;
    ((struct Actor *)__MapActor_GetActor(22))->waveCounter = _umodsi3_RAM(__Random(), 20) + 20;
    ((struct Actor *)__MapActor_GetActor(26))->waveCounter = _umodsi3_RAM(__Random(), 20) + 20;
    ((struct Actor *)__MapActor_GetActor(8))->waveCounter = _umodsi3_RAM(__Random(), 20) + 20;
    ((struct Actor *)__MapActor_GetActor(9))->waveCounter = _umodsi3_RAM(__Random(), 20) + 20;
    API_MapActor_SetBehavior(9, (int)gScript_882__0200ceb4);
    API_CutsceneWait(30);
    API_MapActor_SetBehavior(0, (int)gScript_882__0200ceb4);
    API_MapActor_SetBehavior(26, (int)gScript_882__0200ceb4);
    API_MapActor_SetBehavior(22, (int)gScript_882__0200ceb4);
    API_MapActor_SetBehavior(8, (int)gScript_882__0200ceb4);
    API_CutsceneWait(10);
    API_PlaySound(17);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_PlaySound(0x91);
    API_CutsceneWait(30);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x78);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_PlaySound(0x91);
    API_CutsceneWait(0x28);
    API_Func_8012330(0x20000, 0x20000, 0x10000);
    API_CutsceneWait(0x3c);
    API_Func_8012330(0x40000, 0x40000, 0x10000);
    API_PlaySound(0x91);
    API_CutsceneWait(20);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    API_Func_8012330(0x30000, 0x30000, 0x10000);
    API_PlaySound(0x91);
    API_CutsceneWait(0x28);
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(0x3c);
    __Func_8095214();
    API_Func_8012330(0x10000, 0x10000, 0x10000);
    API_CutsceneWait(1);
    API_Func_8012330(-1, -1, 0xe666);
    API_Func_80933d4(0x80000, 0x80000);
    API_Func_80933f8(0xd90000, -1, 0x43c0000, 1);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x28);
    API_WaitFrames(0x28);
    __Func_8092950(19, 0);
    __Actor_SetSpriteFlags((void *)__MapActor_GetActor(19), 0);
    __Actor_SetSpriteFlags((void *)__MapActor_GetActor(27), 0);
    savedActor27->scale.x = 0xcccc;
    savedActor27->scale.y = 0xcccc;
    savedActor27->flags &= ~1;
    savedSprite27->oam.priority = 1;
    {
        fx32 xy = 0xc80000;
        fx32 z = 0x3820000;
        savedActor19->pos.x = xy;
        savedActor19->pos.y = xy;
        savedActor19->prevPos.x = xy;
        savedActor19->prevPos.y = xy;
        savedActor19->pos.z = z;
        savedActor19->prevPos.z = z;
    }
    savedActor19->__unk55 = 0;
    savedActor19->flags &= ~1;
    savedSprite19->oam.priority = 0;
    __Func_8093554()->prevPos.x = 0x80000000;
    __Func_8093554()->prevPos.y = 0x80000000;
    __Func_8093554()->prevPos.z = 0x80000000;
    __Func_8093554()->motion.x = 0;
    __Func_8093554()->motion.y = 0;
    __Func_8093554()->motion.z = 0;
    API_WaitFrames(1);
    API_Func_80933f8(0xf70000, 0x800000, 0x3950000, 0);
    __Func_800fe9c();
    API_WaitFrames(1);
    API_Func_8091200(0x10003, 1);
    API_Func_8091200(0x10000, 2);
    API_Func_8091254(30);
    API_WaitFrames(30);
    API_StartTask(OvlFunc_882_200bce4, 0xc80);
    API_MapActor_SetBehavior(19, (int)gScript_882__0200cedc);
    API_Func_80933d4(0x20000, 0x7ae);
    API_Func_80933f8(0xaf0000, 0x600000, 0x43e0000, 1);
    do {
        API_WaitFrames(1);
    } while (savedActor19->__unk66 != 8);
    API_Func_8091200(0, 0);
    API_Func_8091254(0x3c);
    API_WaitFrames(0x3c);
    API_Func_8012350();
    __Func_8093554()->prevPos.x = 0x80000000;
    __Func_8093554()->prevPos.y = 0x80000000;
    __Func_8093554()->prevPos.z = 0x80000000;
    __Func_8093554()->motion.x = 0;
    __Func_8093554()->motion.y = 0;
    __Func_8093554()->motion.z = 0;
    API_StopTask(OvlFunc_882_200bce4);
    API_MapActor_SetIdle(19);
    API_WaitFrames(1);
    API_MapActor_SetAnim(19, 0);
    savedActor27->scale.x = 0x14000;
    savedActor27->scale.y = 0x14000;
    savedSprite27->offsetY = 2;
    savedSprite27->scale = 0x14000;
    savedActor19->scale.x = 0x20000;
    savedActor19->scale.y = 0x20000;
    savedActor19->pos.x = 0;
    savedActor19->pos.z = 0;
    savedActor19->prevPos.x = 0;
    savedActor19->prevPos.z = 0;
    API_WaitFrames(1);
    API_MapActor_SetAnim(23, 8);
    API_MapActor_SetPos(9, 0xa90000, 0x4f00000);
    API_Func_8092adc(9, 0xc000, 0);
    API_MapActor_SetAnim(9, 9);
    API_MapActor_SetPos(26, 0x970000, 0x50c0000);
    API_Func_8092adc(26, 0x8000, 0);
    API_MapActor_SetAnim(26, 5);
    API_MapActor_SetPos(8, 0xaa0000, 0x5210000);
    API_Func_8092adc(8, 0x6000, 0);
    API_MapActor_SetAnim(8, 5);
    API_MapActor_SetPos(0, 0xb90000, 0x5350000);
    API_Func_8092adc(0, 0x2000, 0);
    API_MapActor_SetAnim(0, 17);
    API_MapActor_SetPos(22, 0xa90000, 0x5680000);
    API_Func_8092adc(22, 0x4000, 0);
    API_MapActor_SetAnim(22, 0);
    API_Func_80933f8(0xa60000, 0, 0x5390000, 0);
    __Func_800fe9c();
    savedActor19->__unk55 = 0;
    savedActor19->prevPos.x = 0x80000000;
    savedActor19->prevPos.y = 0x80000000;
    savedActor19->prevPos.z = 0x80000000;
    OvlFunc_882_200bc48();
    API_MapActor_SetPos(27, 0xda0000, 0x4980000);
    API_Func_80933f8(0xd20000, 0, 0x4ac0000, 0);
    __Func_800fe9c();
    savedActor27->scale.x = 0x20000;
    savedActor27->scale.y = 0x20000;
    API_StartTask(OvlFunc_882_200be18, 0xc80);
    API_MapActor_SetIdle(10);
    API_MapActor_SetIdle(24);
    API_MapActor_SetIdle(25);
    API_WaitFrames(1);
    savedActor27 = (struct Actor *)__MapActor_GetActor(10);
    savedSprite27 = savedActor27->sprite;
    savedActor27->flags &= ~1;
    savedActor27->scale.x = 0x10000;
    savedActor27->scale.y = 0x10000;
    savedActor27->facing = 0xd000;
    savedSprite27->oam.priority = 0;
    API_MapActor_SetAnim(10, 0);
    savedActor27 = (struct Actor *)__MapActor_GetActor(24);
    savedSprite27 = savedActor27->sprite;
    savedActor27->flags &= ~1;
    savedActor27->scale.x = 0x10000;
    savedActor27->scale.y = 0x10000;
    savedActor27->facing = 0xb000;
    savedSprite27->oam.priority = 0;
    API_MapActor_SetAnim(24, 5);
    savedActor27 = (struct Actor *)__MapActor_GetActor(25);
    savedSprite27 = savedActor27->sprite;
    savedActor27->flags &= ~1;
    savedActor27->scale.x = 0x10000;
    savedActor27->scale.y = 0x10000;
    savedActor27->facing = 0xb000;
    savedSprite27->oam.priority = 0;
    API_MapActor_SetAnim(25, 5);
    savedActor27 = (struct Actor *)__MapActor_GetActor(27);
    savedSprite27 = savedActor27->sprite;
    OvlFunc_882_200bc48();
    savedActor19->pos.y = 0x300000;
    savedActor19->pos.x = 0xd60000;
    savedActor19->pos.z = 0x4c00000;
    savedActor19->prevPos.x = 0x80000000;
    savedActor19->prevPos.y = 0x80000000;
    savedActor19->prevPos.z = 0x80000000;
    savedSprite27->oam.priority = 1;
    API_MapActor_SetPos(27, 0xd60000, 0x4c00000);
    API_Func_8092adc(24, 0xc000, 0);
    API_Func_8092adc(25, 0xc000, 20);
    API_SetFlag(0x166);
    API_Func_80118c0(0);
    API_Func_80118c0(1);
    API_Func_80118c0(2);
    API_Func_80118c0(3);
    API_Func_80118c0(4);
    API_Func_80118c0(5);
    API_Func_8091200(0x10003, 1);
    API_Func_8091200(0x10000, 2);
    API_Func_8091254(0x78);
    API_WaitFrames(0xa0);
    API_Func_8091200(0x7fff, 1);
    API_Func_8091200(0x7fff, 2);
    API_Func_8091254(0x50);
    API_CutsceneWait(0x50);
    API_CutsceneWait(0x64);
    API_StopTask(OvlFunc_882_200be18);
    savedSprite27->scale = savedActor27->scale.x;
    API_ClearFlag(0x166);
    API_Func_80118a8(0);
    API_Func_80118a8(1);
    API_Func_80118a8(2);
    API_Func_80118a8(3);
    API_Func_80118a8(4);
    API_Func_80118a8(5);
    OvlFunc_882_200c0f0();
    API_MapActor_SetPos(9, 0xa50000, 0x4cd0000);
    API_MapActor_SetAnim(9, 1);
    savedActor19 = (struct Actor *)__MapActor_GetActor(9);
    savedActor19->facing = 0xe000;
    savedActor19->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
    savedActor19->__unk66 = 1;
    API_MapActor_SetBehavior(9, (int)gScript_882__0200cec8);
    API_MapActor_SetPos(26, 0xa50000, 0x4e60000);
    API_MapActor_SetAnim(26, 1);
    savedActor19 = (struct Actor *)__MapActor_GetActor(26);
    savedActor19->facing = 0xe000;
    savedActor19->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
    savedActor19->__unk66 = 2;
    API_MapActor_SetBehavior(26, (int)gScript_882__0200cec8);
    API_MapActor_SetPos(22, 0x980000, 0x5050000);
    API_MapActor_SetAnim(22, 1);
    savedActor19 = (struct Actor *)__MapActor_GetActor(22);
    savedActor19->facing = 0xe000;
    savedActor19->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
    savedActor19->__unk66 = 3;
    API_MapActor_SetBehavior(22, (int)gScript_882__0200cec8);
    API_MapActor_SetPos(8, 0xb40000, 0x51f0000);
    savedActor19 = (struct Actor *)__MapActor_GetActor(8);
    savedActor19->facing = 0xe000;
    savedActor19->waveCounter = _umodsi3_RAM(__Random(), 0x5a) + 0x3c;
    savedActor19->__unk66 = 4;
    API_MapActor_SetBehavior(8, (int)gScript_882__0200cec8);
    API_MapActor_SetAnim(8, 6);
    ((struct Actor *)__MapActor_GetActor(22))->flags &= ~1;
    ((struct Actor *)__MapActor_GetActor(8))->flags &= ~1;
    API_StartTask(OvlFunc_882_200c5b8, 0xc80);
    API_MapActor_SetPos(0, 0xb50000, 0x4f90000);
    ((struct Actor *)__MapActor_GetActor(0))->facing = 0xe000;
    API_MapActor_SetAnim(0, 1);
    API_Func_80933f8(0xb50000, 0, 0x4f90000, 0);
    __Func_800fe9c();
    API_MapActor_SetPos(10, 0, 0);
    API_MapActor_SetPos(19, 0, 0);
    API_MapActor_SetPos(24, 0, 0);
    API_MapActor_SetPos(25, 0, 0);
    API_MapActor_SetPos(23, 0, 0);
    API_MapActor_SetPos(27, 0, 0);
    API_MapActor_SetPos(17, 0x900000, 0x42e0000);
    API_MapActor_SetPos(18, 0x1140000, 0x4f60000);
    API_WaitFrames(0x3c);
    API_Func_8091200(0x10003, 1);
    API_Func_8091200(0x10000, 2);
    API_Func_8091254(0x50);
    API_CutsceneWait(0x3c);
    API_MapActor_PlayPendingSound();
    API_CutsceneWait(0x3c);
    __Func_8091890(1);
    __Func_8095268();
}

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
extern unsigned int iwram_3001e40;

void OvlFunc_882_200bce4(void)
{
    struct Actor *a19;
    struct Actor *a27;
    struct Sprite *sprite;

    a19 = (struct Actor *)__MapActor_GetActor(0x13);
    a27 = (struct Actor *)__MapActor_GetActor(0x1b);
    sprite = a27->sprite;

    if (a19->waveCounter != 0) {
        if (a19->waveCounter == 60) {
            API_Func_8012330(0xc0 << 10, 0xc0 << 10, 0x80 << 9);
        }
        if (a19->waveCounter == 40) {
            API_Func_8012330(0x80 << 11, 0x80 << 11, 0x80 << 9);
        }
        if (a19->waveCounter == 30) {
            API_Func_8012330(0x80 << 10, 0x80 << 10, 0x80 << 9);
        }
        if (a19->waveCounter == 20) {
            API_Func_8012330(-1, -1, 0xe666);
        }
        a19->waveCounter--;
    }

    {
        fx32 x = a19->pos.x;
        a27->pos.x = x;
        a27->pos.z = a19->pos.z;
        a27->prevPos.x = x;
    }
    sprite->offsetY = 10;

    if (iwram_3001e40 & 1) {
        switch (a19->__unk66) {
        case 1:
        case 5:
            a27->scale.x += 0xa3d;
            a27->scale.y += 0xa3d;
            break;
        case 4:
            a27->scale.x += 0x51e;
            a27->scale.y += 0x51e;
            break;
        case 2:
        case 3:
        case 6:
        case 7:
        case 8:
        case 9:
            a27->scale.x += -0x7ae;
            a27->scale.y += -0x7ae;
            break;
        }
        sprite->scale = a27->scale.x;
    } else {
        sprite->scale = 0;
    }
}

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


void OvlFunc_882_200be48(void) {
    extern unsigned char gScript_882__0200cec8[];
    struct Actor *a0 = (struct Actor *)__MapActor_GetActor(0);
    struct Actor *a8 = (struct Actor *)__MapActor_GetActor(8);

    API_CutsceneStart();
    if (API_GetFlag(0x305)) {
        API_MapActor_SetIdle(8);
        API_CutsceneWait(0xa);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x28);
        if ((s16)a0->facing >= 0) {
            API_MapActor_SetAnim(8, 7);
        } else {
            API_MapActor_SetAnim(8, 8);
        }
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x14);
        API_MessageID(0xed2);
        API_ActorMessage(8, 0);
        API_MapActor_SetBehavior(8, (int)gScript_882__0200cec8);
        API_MapActor_SetAnim(8, 6);
    } else {
        API_MapActor_SetIdle(8);
        a8->scale.x = 0x80 << 9;
        a8->scale.y = 0x80 << 9;
        API_Func_8092adc(8, 0x80 << 5, 0);
        if ((s16)a0->facing >= 0) {
            API_MapActor_SetAnim(8, 7);
        } else {
            API_MapActor_SetAnim(8, 8);
        }
        API_CutsceneWait(0x14);
        API_MessageID(0xed1);
        API_ActorMessage_Wait(8, 0, 0x14);
        API_MapActor_SetAnim(8, 1);
        API_MapActor_Jump(8, 4, 0);
        API_CutsceneWait(0x50);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x28);
        if ((s16)a0->facing >= 0) {
            API_MapActor_SetAnim(8, 7);
        } else {
            API_MapActor_SetAnim(8, 8);
        }
        API_CutsceneWait(2);
        API_MapActor_Jump(8, 2, 0);
        API_CutsceneWait(0x3c);
        API_Func_80925cc(8, 2);
        API_CutsceneWait(0x14);
        API_ActorMessage(8, 0);
        API_MapActor_SetBehavior(8, (int)gScript_882__0200cec8);
        API_MapActor_SetAnim(8, 6);
        API_SetFlag(0x305);
    }
    API_CutsceneEnd();
}



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

extern int __sin(int);
extern void __DeleteActor(struct Actor *);

void OvlFunc_882_200c378(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        __DeleteActor(actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z + (0x10000 - sinVal) * 5 + 0x80000;
    }
}

void OvlFunc_882_200c3c8(struct Actor *actor) {
    struct Actor *target;
    s32 sinVal;

    target = actor->linkedActor;

    if (++actor->waveCounter > 0x1f) {
        __DeleteActor(actor);
    } else {
        sinVal = __sin(actor->waveCounter << 10);
        actor->scale.x = sinVal;
        actor->scale.y = -sinVal;
        actor->pos.x = target->pos.x;
        actor->pos.y += 0x10000;
        actor->pos.z = target->pos.z - (0x10000 - sinVal) * 5 + 0x100000;
    }
}

struct SpriteOamBitView882 {
    struct Sprite *dest;
    u16 posY : 8;
    u16 affineMode : 2;
    u16 objMode : 2;
    u16 mosaic : 1;
    u16 bpp : 1;
    u16 shape : 2;
    u16 posX : 9;
    u16 affineParam : 5;
    u16 size : 2;
    union {
        struct {
            u16 tileNum : 10;
            u16 priority : 2;
            u16 palette : 4;
        };
        struct {
            u8 attr2Lo;
            u8 tileHi : 2;
            u8 prio : 2;
            u8 pal : 4;
        } __attribute__((packed));
    } __attribute__((packed));
};

struct E30SlotView882 {
    unsigned char pad[0x46];
    u16 slot;
};

void OvlFunc_882_200c41c(unsigned int arg0)
{
    extern struct E30SlotView882 *iwram_3001f30_view __asm__("iwram_3001f30");
    extern struct SpriteSlot gSpriteSlots[];
    extern void __Sprite_SetAnim(struct Sprite *, int);
    extern void __Func_8003f3c(int);

    struct E30SlotView882 *e30 = iwram_3001f30_view;
    struct Actor *parent = (struct Actor *)arg0;
    struct Actor *actors[2];
    int i;

    API_PlaySound(0x98);

    for (i = 0; i <= 1; i++) {
        struct Actor *actor = API_CreateActor(0x1a, parent->pos.x, parent->pos.y, parent->pos.z);
        actors[i] = actor;
        if (actor != NULL) {
            struct Sprite *sprite;

            actor->floorPos = parent->floorPos;
            sprite = actor->sprite;
            actor->__unk55 = 0;
            actor->waveCounter = 0;
            actor->linkedActor = parent;
            if (sprite != NULL) {
                struct SpriteOamBitView882 *oam = (struct SpriteOamBitView882 *)&sprite->oam;

                __Sprite_SetAnim(sprite, 0);
                sprite->flags = 0;
                __Func_8003f3c(sprite->slot);
                sprite->slot = e30->slot;
                sprite->flags1D.bit0 = 1;
                oam->tileNum = gSpriteSlots[sprite->slot].vramOffset >> 5;
                oam->bpp = 0;
                oam->shape = 1;
                oam->size = 2;
                sprite->layers[0]->frameID = 0;
            }
        }
    }

    actors[0]->update = OvlFunc_882_200c3c8;
    ((struct SpriteOamBitView882 *)&actors[0]->sprite->oam)->prio =
        ((struct SpriteOamBitView882 *)&parent->sprite->oam)->prio;
    ((struct SpriteOamBitView882 *)&actors[1]->sprite->oam)->prio =
        ((struct SpriteOamBitView882 *)&parent->sprite->oam)->prio;
    actors[1]->update = OvlFunc_882_200c378;
    actors[1]->flags = 2;
}

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
