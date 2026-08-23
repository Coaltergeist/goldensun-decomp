// fakematch
/* rom_79c738 (overlay file 909): consolidated TU — mccoys_palace map overlay. */

#include "nonmatching.h"

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

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2008150.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20081b4.s");

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
    unsigned long long t;
    unsigned long v;
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
    t = 0x11;
    do { t = (unsigned long) t; } while (0);
    v = t;
    __ActorMessage(v, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2008338.s");

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
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20085f4.s");
INCLUDE_ASM("asm/maps/mccoys_palace/MccoysPalace_MapInit.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20088c0.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200979c.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2009958.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_2009984.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_20099b0.s");
INCLUDE_ASM("asm/maps/mccoys_palace/OvlFunc_909_200a1bc.s");

INCLUDE_ASM("asm/maps/mccoys_palace/imports.s");
