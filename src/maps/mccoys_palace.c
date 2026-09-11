// fakematch
/* rom_79c738 (overlay file 909): consolidated TU — mccoys_palace map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/mccoys_palace/exports.s");

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2008030.s");

extern unsigned char gOvl_0200a638[];

unsigned int MccoysPalace_GetEntrances(void) {
    return (unsigned int)gOvl_0200a638;
}

int MccoysPalace_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a920[];

void *MccoysPalace_GetExits(void) {
    return (void *)gOvl_0200a920;
}

INCLUDE_ASM("asm/maps/mccoys_palace/MccoysPalace_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_21[];
extern unsigned char Lm909_2ca8[] __asm__(".Lm909_2ca8");
extern unsigned char Lm909_2c9c[] __asm__(".Lm909_2c9c");

int MccoysPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_21) return (int)Lm909_2ca8;
    return (int)Lm909_2c9c;
}

#include "message.h"

extern void OvlFunc_909_20083ec();
extern void OvlFunc_909_2008408();
extern void OvlFunc_909_2008424();

void OvlFunc_909_2008130(void)
{
    __CutsceneStart();
    __MessageID(MSG_1420);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern void __MapActor_Emote(int, int, int);
extern void __Func_80925cc(int, int);
extern void __CutsceneWait(int);
extern void __MessageID(int);
extern void __ActorMessage_Wait(int, int, int);
extern void __MapActor_Face(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __CutsceneEnd(void);

void OvlFunc_909_2008150(void)
{
    __CutsceneStart();
    API_MapActor_Emote(0xe, 0x102, 0);
    __Func_80925cc(0xe, 2);
    __CutsceneWait(0x28);
    __MessageID(0x1764);
    __ActorMessage_Wait(0xe, 0, 0x14);
    __MapActor_Face(0xe, 0, 0);
    __CutsceneWait(0x14);
    __ActorMessage_Wait(0xe, 0, 0xa);
    API_Func_8092adc(0xe, 0xb000, 0xa);
    __CutsceneEnd();
}
void OvlFunc_909_20081b4(void)
{
    extern int __GetFlag(int);
    extern void __SetFlag(int);
    int i;
    for (i = 0; i < 1; i++) {
        __CutsceneStart();
        __MessageID(0x1750);
        if (__GetFlag(0x302)) {
            __MessageID(0x1768);
        }
        __ActorMessage(0xf, 0);
        __SetFlag(0x302);
        __CutsceneEnd();
    }
}

void OvlFunc_909_20081f4(void) {
    __CutsceneStart();
    __MessageID(0x1769);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

extern unsigned char *iwram_3001ebc;

void OvlFunc_909_2008214(void)
{
    unsigned short *p;
    unsigned long long t2;
    unsigned long v2;

    __CutsceneStart();
    if (__GetFlag(0x202)) {
        __MessageID(0x174b);
    } else if (__GetFlag(0x84e)) {
        __MessageID(0x176e);
    } else {
        __MessageID(0x1432);
        if (__GetFlag(0x84d)) {
            p = (unsigned short *)(iwram_3001ebc + (0xec << 1));
            *p = *p + 1;
        }
    }
    t2 = 0x11;
    do { t2 = (unsigned long) t2; } while (0);
    v2 = t2;
    __ActorMessage(v2, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200828c.s");

void OvlFunc_909_20082cc(void) {
    extern void __ActorMessage(unsigned int, int);
    __CutsceneStart();
    if (__GetFlag(0x202) != 0) {
        __MessageID(0x174c);
    } else if (__GetFlag(0x845) == 0) {
        __MessageID(0x1436);
    } else {
        __MessageID(0x1434);
        if (__GetFlag(0x84e) != 0) {
            __MessageID(0x176f);
        }
    }
    __ActorMessage(0x11, 0);
    __CutsceneEnd();
}

void OvlFunc_909_2008338(void)
{
    /* iwram_3001ebc is declared file-scope above as unsigned char* (:93). */
    extern int __GetFlag(int);
    extern void __PlaySound(int);
    extern void __Func_80118a8(int);
    extern void __CutsceneStart(void);
    extern void __CutsceneWait(int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __MapActor_TravelBy(int, int, int);
    extern void __Func_8092208(int, int, int);
    extern void __Func_8091e9c(int);
    extern void __CutsceneEnd(void);
    extern void __Func_80118c0(int);

    int flag;
    unsigned char *map;

    map = iwram_3001ebc;
    flag = 0;
    if (*(short *)(map + (0xb6 << 1)) == 9) {
        if (!__GetFlag(0x200)) {
            __PlaySound(0xbc);
            flag = 1;
        }
    } else {
        __PlaySound(0x9e);
        flag = 1;
    }

    if (flag) {
        __Func_80118a8(1);
        __Func_80118a8(2);
    }

    __CutsceneStart();
    __CutsceneWait(10);
    API_MapActor_SetSpeed(0, 0x8000, 0x4000);
    __MapActor_SetAnim(0, 2);

    if (*(short *)(map + (0xb6 << 1)) == 9) {
        API_MapActor_TravelBy(0, 0, -16);
    } else {
        API_Func_8092208(0, 3, -16);
    }

    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + (0xb6 << 1)));
    __CutsceneEnd();
    __Func_80118c0(1);
    __Func_80118c0(2);
}

void OvlFunc_909_20083ec(void)
{
  int v;
 do { __CutsceneStart(); } while (0);
  v = 0x174d;
  __Func_801776c(v, 1);
  __CutsceneEnd();
}

void OvlFunc_909_2008408(void)
{
  int v;
  __CutsceneStart();
  v = 0x174e;
 do { __Func_801776c(v, 1); __CutsceneEnd(); } while (0);
}


void OvlFunc_909_2008424()
{
    if (__GetFlag())
        OvlFunc_909_20083ec();
    else
        OvlFunc_909_2008408();
}

extern int __GetFlag(int);
extern void OvlFunc_909_20084ec(int, int, int);

void OvlFunc_909_200843c(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x84 << 2);
    } else {
        OvlFunc_909_20084ec(0x15, 0xb6, 0x84 << 2);
    }
}


void OvlFunc_909_2008468(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x211);
    } else {
        OvlFunc_909_20084ec(0x16, 0xb7, 0x211);
    }
}


void OvlFunc_909_2008494(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x212);
    } else {
        OvlFunc_909_20084ec(0x17, 0xba, 0x212);
    }
}


void OvlFunc_909_20084c0(void) {
    if (__GetFlag(0x84e)) {
        OvlFunc_909_2008424(0x213);
    } else {
        OvlFunc_909_20084ec(0x18, 0xbd, 0x213);
    }
}

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20084ec.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2008568.s");
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __MapActor_SetPos(int, int, int);
extern void __SetFlag(int);
void OvlFunc_909_20085f4(void)
{
    extern int __GetFlag(int);
    extern void __CutsceneStart(void);
    extern void __MapActor_Face(int, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_TravelToAnimWait(int, int, int);
    extern void __Func_8092adc(int, int, int);
    extern void __MapActor_DoAnim(int, int);
    extern void __CutsceneWait(int);
    extern void __MessageID(int);
    extern void __ActorMessage_Wait(int, int, int);
    extern void __MapActor_SetPos(int, int, int);
    extern void __SetFlag(int);
    extern void __CutsceneEnd(void);

    unsigned char *base;

    if (__GetFlag(0x84e) != 0) {
        __CutsceneStart();
        API_MapActor_Face(0, 0x13, 0);
        API_MapActor_SetSpeed(0x13, 0x9999, 0x4ccc);
        API_MapActor_TravelToAnimWait(0x13, 0x26e, 0x2fc);
        API_Func_8092adc(0x13, 0xf000, 0x14);
        API_MapActor_DoAnim(0x13, 3);
        API_MapActor_DoAnim(0x11, 3);
        __CutsceneWait(0x14);
        API_MapActor_Face(0x13, 0, 0);
        __CutsceneWait(0x14);
        API_MapActor_DoAnim(0x13, 3);
        __MessageID(0x1749);
        API_ActorMessage_Wait(0x13, 0, 0xa);
        API_MapActor_SetSpeed(0x13, 0xcccc, 0x6666);
        API_MapActor_TravelToAnimWait(0x13, 0x23a, 0x2f6);
        API_MapActor_SetPos(0x13, 0, 0);
        base = iwram_3001ebc;
        *(unsigned int *)(base + (0xe0 << 1)) = (0xe0 << 1) + 0x49;
        __SetFlag(0x85e);
        __SetFlag(0x333);
        __CutsceneEnd();
    }
}
INCLUDE_ASM("asm/maps/mccoys_palace/MccoysPalace_MapInit.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20088c0.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200979c.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2009958.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2009984.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20099b0.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200a1bc.s");
INCLUDE_ASM("asm/maps/mccoys_palace/mccoys_palace_data.s");

INCLUDE_ASM("asm/maps/mccoys_palace/imports.s");
