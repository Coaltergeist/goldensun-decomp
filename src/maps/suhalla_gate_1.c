/* rom_7ec968 (overlay file 963): consolidated TU — suhalla_gate_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/suhalla_gate_1/exports.s");

extern void __Func_8091f14(int a, int b);

void OvlFunc_963_2008030(void) {
    __Func_8091f14(0xd, 0x1a);
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lconst_aa[] __asm__(".Lconst_aa");
extern unsigned char Lconst_ab[] __asm__(".Lconst_ab");
extern unsigned char Lconst_69[] __asm__(".Lconst_69");
__asm__(".equ .Lconst_aa, 0xaa");
__asm__(".equ .Lconst_ab, 0xab");
__asm__(".equ .Lconst_69, 0x69");
extern unsigned char Lm963_a40[] __asm__(".Lm963_a40");
extern unsigned char Lm963_ad0[] __asm__(".Lm963_ad0");
extern unsigned char gOvl_02008998[];

void *SuhallaGate1_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_aa) {
        return Lm963_a40;
    }
    if (a == (int)Lconst_ab) {
        return Lm963_ad0;
    }
    return gOvl_02008998;
}

unsigned int SuhallaGate1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008b48[];

void *SuhallaGate1_GetExits(void) {
    return (void *)gOvl_02008b48;
}

extern unsigned char Lconst_a9[] __asm__(".Lconst_a9");
__asm__(".equ .Lconst_a9, 0xa9");
extern unsigned char Lm963_ba8[] __asm__(".Lm963_ba8");
extern unsigned char Lm963_c98[] __asm__(".Lm963_c98");
extern unsigned char gOvl_02008c50[];
extern unsigned char Lm963_b90[] __asm__(".Lm963_b90");

void *SuhallaGate1_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_aa) {
        return Lm963_ba8;
    }
    if (a == (int)Lconst_a9) {
        if (__GetFlag(0x96f)) {
            return Lm963_c98;
        }
        return gOvl_02008c50;
    }
    return Lm963_b90;
}
extern unsigned char _EVENT_aa[], _EVENT_ab[];
extern unsigned char Lm963_ddc[] __asm__(".Lm963_ddc");
extern unsigned char Lm963_e54[] __asm__(".Lm963_e54");
extern unsigned char Lm963_d10[] __asm__(".Lm963_d10");

int SuhallaGate1_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_aa) return (int)Lm963_ddc;
    if (ev == (int)_EVENT_ab) return (int)Lm963_e54;
    return (int)Lm963_d10;
}
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern void __MapActor_SetAnim(int, int);
extern short gState_s[] __asm__("gState");

int SuhallaGate1_MapInit(void)
{
    short r6;

    if (__GetFlag(0x89f)) {
        gState_s[0xe2] = (int)Lconst_69;
        gState_s[0xe3] = 10;
    }
    r6 = gState_s[0xe0];
    if (r6 == (int)Lconst_a9) {
        if (__GetFlag(0x897)) {
            __MapActor_SetPos(0xa, 0, 0);
        }
        if (gState_s[0xe1] == 3) {
            if (__GetFlag(0x8fb)) {
                gState_s[0x90 << 1] = r6;
                gState_s[0x121] = 1;
            }
            if (__GetFlag(0x8fc)) {
                gState_s[0x90 << 1] = r6;
                gState_s[0x121] = 5;
            }
            __ClearFlag(0x12f);
        }
        if (gState_s[0xe1] == 1) {
            __SetFlag(0x8fb);
            if (!__GetFlag(0x96f)) {
                int a = 8;
                int b = 0x1b;
                __Func_8010704(6, 0, 2, 1, a, b);
            }
        }
        if (gState_s[0xe1] == 5) {
            __SetFlag(0x8fc);
        }
    } else if (r6 == (int)Lconst_aa) {
        int *act;
        int b;
        int a;
        __MapActor_SetAnim(8, 4);
        __MapActor_SetAnim(9, 4);
        __MapActor_SetAnim(10, 3);
        __MapActor_SetAnim(11, 4);
        __MapActor_SetAnim(12, 3);
        act = (int *)__MapActor_GetActor(0xf);
        b = 0x38;
        act[7] = 0x19999;
        a = 0x66;
        __Func_8010704(0x6c, 0x26, 1, 1, a, b);
    }
    return 0;
}
extern unsigned char iwram_3001ebc[];
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);

void OvlFunc_963_2008288(void)
{
    int r5;
    short r6;
    int step = -0x10;
    unsigned char *base;

    do { } while (step == 0);

    base = *(unsigned char **)iwram_3001ebc;
    base += 0xb6 << 1;
    r6 = *(short *)base;
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;
    __PlaySound(0x9e);
    r5 = 2;
    __CopyMapTiles(0x42, 0x24, 0x47, 8, r5, r5);
    __WaitFrames(4);
    __CopyMapTiles(0x44, 0x24, 0x47, 8, r5, r5);
    __WaitFrames(4);
    __Func_8092208(0, 3, step);
    __Func_8091e9c(r6);
}

void OvlFunc_963_20082f8(void)
{
    short r5;
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    base += 0xb6 << 1;
    r5 = *(short *)base;
    __PlaySound(0x7b);
    __ClearFlag(0x8fb);
    __ClearFlag(0x8fc);
    __Func_8091e9c(r5);
}

extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnim(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_963_2008334(void)
{
    int speed1 = 0x80 << 9;
    int speed2 = 0x80 << 8;
    int y = 0xc0 << 1;
    int step = 0x80 << 7;
    int r5;

    do { } while (speed1 == 0);

    __CutsceneStart();
    __MapActor_SetSpeed(8, speed1, speed2);
    __MapActor_SetSpeed(9, speed1, speed2);
    __MapActor_TravelToAnim(8, 0x88, y);
    __MapActor_TravelToAnimWait(9, 0x98, y);
    __Func_8092adc(8, step, 0);
    __Func_8092adc(9, step, 0);
    __MapActor_SetAnim(8, 1);
    r5 = 7;
    __Func_8010704(6, 0x1b, 1, 1, r5, 0x1b);
    __Func_8010704(9, 0x1a, 2, 1, r5, 0x1a);
    __CutsceneEnd();
}
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_Surprise(int, int);
extern void __Func_809259c(int, int);
extern void __Func_80925cc(int, int);
extern void __Func_8093054(int, int);
extern void __ActorMessage_Wait(int, int, int);
extern void __CutsceneWait(int);
extern void __MapActor_SetPos(int, int, int);

void OvlFunc_963_20083c4(void)
{
    int speed1 = 0x19999;
    int speed2 = 0xcccc;
    int y1 = 0xdb << 1;
    int step_c0 = 0xc0 << 8;
    int step_d0 = 0xd0 << 8;
    int step_e0 = 0xe0 << 8;
    int step_b0 = 0xb0 << 8;
    int step_a0 = 0xa0 << 7;
    int emote = 0x80 << 1;
    int surprise = 0x81 << 1;
    int y2 = 0xd2 << 1;
    int y3 = 0xd0 << 1;
    int y_1af = 0x1af;
    int r5;
    void *act;
    unsigned char *base;

    do { } while (speed1 == 0);

    __CutsceneStart();
    __MapActor_SetSpeed(0, speed1, speed2);
    __MapActor_TravelToAnimWait(0, 0x78, y1);
    __Func_8092adc(0, step_c0, 0);
    act = __MapActor_GetActor(0);
    if (act != 0) {
        __MapActor_SetPos(0xb, *(int *)((char *)act + 8), *(int *)((char *)act + 0x10));
    }
    __WaitFrames(1);
    __MapActor_SetSpeed(0xb, speed1, speed2);
    __MapActor_TravelToAnimWait(0xb, 0x6c, y_1af);
    __Func_8092adc(0xb, step_d0, 0xa);
    __MapActor_Emote(0xb, emote, 0x14);
    __Func_8092adc(0xb, step_d0, 0x14);
    __Func_8092adc(0xb, 0, 0x28);
    __Func_8092adc(0xb, step_d0, 0x28);
    __Func_8092adc(0xb, 0, 0x14);
    __Func_809259c(0xb, 2);
    __MessageID(0x2654);
    __ActorMessage_Wait(0xb, 0, 0x28);
    __MapActor_Emote(8, emote, 0);
    __Func_80925cc(8, 2);
    __ActorMessage_Wait(8, 0, 0xa);
    __MapActor_TravelToAnimWait(0xb, 0x84, y2);
    __Func_8092adc(0xb, step_d0, 0);
    __Func_8092adc(0, step_e0, 0);
    __MapActor_TravelToAnimWait(0xb, 0x8a, y3);
    __Func_8092adc(0xb, step_b0, 0xa);
    __Func_809259c(0xb, 2);
    __ActorMessage_Wait(0xb, 0, 0x28);
    __Func_80925cc(8, 2);
    __ActorMessage_Wait(8, 0, 0x28);
    __MapActor_Emote(9, emote, 0x14);
    __Func_80925cc(9, 2);
    __ActorMessage_Wait(9, 0, 0x14);
    __Func_8092adc(0, step_c0, 0);
    __MapActor_TravelToAnimWait(0xb, 0x90, y2);
    __CutsceneWait(0x14);
    __Func_80925cc(9, 2);
    __ActorMessage_Wait(9, 0, 0x14);
    __MapActor_Surprise(9, surprise);
    __Func_809259c(9, 3);
    __ActorMessage_Wait(9, 0, 0x14);
    __Func_8092adc(0xb, step_a0, 0x14);
    __Func_8093054(0xb, 0);
    if (__GetFlag(0x9b << 4)) {
        __Func_8092adc(0xb, step_d0, 0x28);
        __MapActor_Surprise(0xb, surprise);
        __CutsceneWait(0x28);
        __ActorMessage_Wait(0xb, 0, 0xa);
    } else {
        base = *(unsigned char **)iwram_3001ebc;
        base += 0xec << 1;
        *(short *)base += 1;
    }
    __Func_8092adc(0xb, step_a0, 0xa);
    __ActorMessage_Wait(0xb, 0, 0x28);
    __MapActor_Emote(0xb, emote, 0x28);
    __Func_8092adc(0xb, step_b0, 0xa);
    __ActorMessage_Wait(0xb, 0, 0xa);
    __MapActor_TravelToAnimWait(0xb, 0x8a, y3);
    __Func_8092adc(0xb, step_b0, 0x14);
    __Func_809259c(8, 2);
    __ActorMessage_Wait(8, 0, 0xa);
    __MapActor_Surprise(0xb, surprise);
    __Func_80925cc(0xb, 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0xb, 0, 0x14);
    __Func_80925cc(9, 2);
    __CutsceneWait(0x14);
    __Func_8092adc(0, step_e0, 0xa);
    __Func_80925cc(9, 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(9, 0, 0xa);
    __Func_80925cc(8, 2);
    __ActorMessage_Wait(8, 0, 0x14);
    __Func_80925cc(0xb, 1);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0xb, 0, 0x14);
    __Func_8092adc(0xb, step_a0, 0xa);
    __ActorMessage_Wait(0xb, 0, 0xa);
    __MapActor_SetAnim(0xb, 2);
    act = __MapActor_GetActor(0);
    if (act != 0) {
        __MapActor_TravelTo(0xb, *(short *)((char *)act + 10), *(short *)((char *)act + 18));
    }
    __MapActor_WaitMovement(0xb);
    __MapActor_SetPos(0xb, 0, 0);
    r5 = 7;
    __Func_8010704(6, 0x1b, 1, 1, r5, 0x1b);
    __Func_8010704(9, 0x1a, 2, 1, r5, 0x1a);
    __SetFlag(0x89f);
    __CutsceneEnd();
}
extern void __ActorMessage(int, int);
extern void __MapActor_DoAnim(int, int);

void OvlFunc_963_2008730(void)
{
    unsigned char *base;

    __CutsceneStart();
    if (__GetFlag(0x89f)) {
        __MessageID(0x2668);
        __ActorMessage(9, 0);
    } else {
        __MessageID(0x264e);
        __ShowActorMessage_NoWait(9, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __ActorMessage(9, 0);
            __MapActor_DoAnim(9, 4);
            __ActorMessage(9, 0);
        } else {
            base = *(unsigned char **)iwram_3001ebc;
            base += 0xec << 1;
            *(unsigned short *)base += 2;
            __ActorMessage(9, 0);
        }
    }
    __CutsceneEnd();
}

void OvlFunc_963_20087ac(void) {
    unsigned int r5;

    __CutsceneStart();
    __MessageID(0x266d);
    __ActorMessage_Wait(0xa, 0, 0xa);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(4);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(4);
    } while (r5 <= 5);
    r5 = 0;
    do {
        __Func_8092950(0xa, 0);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 1);
        __WaitFrames(2);
        __Func_8092950(0xa, 0xf);
        __Actor_SetSpriteFlags(__MapActor_GetActor(0xa), 0);
        r5++;
        __WaitFrames(2);
    } while (r5 <= 0xb);
    __MapActor_SetPos(0xa, 0, 0);
    __SetFlag(0x897);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/suhalla_gate_1/suhalla_gate_1_data.s");

INCLUDE_ASM("asm/maps/suhalla_gate_1/imports.s");
