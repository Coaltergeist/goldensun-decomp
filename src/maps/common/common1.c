// fakematch
/* common1: consolidated shared-overlay TU (linked by the 3 overlays that reference it). */

#include "nonmatching.h"


void OvlFunc_common1_0(void)
{
    extern void __MapActor_SetPos(int pos, int x, int y);
  int c;
  int x1, y1;
  int x2, y2;
  int x3, y3;

  c = 0x80 << 12;

  x1 = __GetFlagByte(0xe0 << 2);
  y1 = __GetFlagByte(0xe2 << 2);
  x1 <<= 20;
  x1 += c;
  y1 <<= 20;
  y1 += c;
  __MapActor_SetPos(1, x1, y1);

  x2 = __GetFlagByte(0xe4 << 2);
  y2 = __GetFlagByte(0xe6 << 2);
  x2 <<= 20;
  x2 += c;
  y2 <<= 20;
  y2 += c;
  __MapActor_SetPos(2, x2, y2);

  x3 = __GetFlagByte(0xe8 << 2);
  y3 = __GetFlagByte(0xea << 2);
  x3 <<= 20;
  x3 += c;
  y3 <<= 20;
  y3 += c;
  __MapActor_SetPos(3, x3, y3);
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_78.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_148.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_190.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_2c4.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_3e4.s");

void OvlFunc_common1_488(void)
{
    unsigned short t;
    unsigned short v;

    t = 0xe0 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe2 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe4 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe6 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xe8 << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);

    t = 0xea << 2;
    do { t = (unsigned short) t; } while (0);
    v = t;
    __SetFlagByte(v, 0);
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_4cc.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_588.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_5e4.s");

void OvlFunc_common1_850(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;

    unit = (unsigned short *)__GetUnit(arg0, arg1);
    __GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            __EquipItem(arg0, i);
        }
        i++;
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_88c.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_920.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_e10.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_ea0.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_fac.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1078.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1254.s");

void OvlFunc_common1_1314(unsigned int arg0) {
    unsigned int r5;
    unsigned int r3;

    r5 = __MapActor_GetActor(arg0);
    __Actor_Stop(r5);
    r3 = 0;
    *(unsigned int *)(r5 + 0x24) = r3;
    *(unsigned int *)(r5 + 0x2c) = r3;
    r3 = 0x80;
    r3 <<= 24;
    *(unsigned int *)(r5 + 0x38) = r3;
    *(unsigned int *)(r5 + 0x40) = r3;
}


void OvlFunc_common1_1334(void)
{
    extern unsigned char L14[] __asm__(".Lc1_14");
    unsigned char *r5;
    int r3;
    int r2;

    r5 = L14;
    r2 = 0;
    r3 = *(short *)(r5 + r2);
    r2 = 1;
    r2 = -r2;
    if (r3 != r2)
        return;
    *(short *)r5 = __Func_80209b0();
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1354.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1490.s");


void OvlFunc_common1_14f4(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    extern unsigned char L21[] __asm__(".Lc1_21");
    extern unsigned char L48[] __asm__(".Lc1_48");
    extern unsigned char L45[] __asm__(".Lc1_45");
    extern unsigned char L38[] __asm__(".Lc1_38");
    extern unsigned char L29[] __asm__(".Lc1_29");
    extern unsigned char L42[] __asm__(".Lc1_42");
    extern unsigned char L32[] __asm__(".Lc1_32");
    extern unsigned char L17[] __asm__(".Lc1_17");
    extern int OvlFunc_common1_1354;
    *(unsigned short *)L21 = (unsigned short)arg0;
    *(unsigned short *)L48 = (unsigned short)arg1;
    *(unsigned short *)L38 = *(unsigned short *)L45;
    *(unsigned short *)L42 = *(unsigned short *)L29;
    *(unsigned short *)L32 = (unsigned short)arg2;
    *(unsigned short *)L17 = 0;
    __StartTask(&OvlFunc_common1_1354, 0xc8 << 4);
}


void OvlFunc_common1_1550(void) {
    extern unsigned char L14[] __asm__(".Lc1_14");
    extern void OvlFunc_common1_1354(void);
    short *r5;
    __StopTask(OvlFunc_common1_1354);
    r5 = (short *)L14;
    __Func_8003f3c(*(short *)r5);
    *(short *)r5 = -1;
}

void OvlFunc_common1_1578(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned char *actor;
    int v;
    unsigned short five;

    actor = (unsigned char *)__GetFieldActor(arg0);
    if (actor != (unsigned char *)0) {
        v = 0x80 << 10;
        *(int *)(actor + 0x30) = v;
        v >>= 1;
        *(int *)(actor + 0x34) = v;
        __asm__ volatile ("" ::: "memory");
        {
            register unsigned char *rp __asm__("r3") = actor;
            register unsigned int rz __asm__("r2") = 0;
            __asm__ volatile ("" : : "r" (rp), "r" (rz));
            rp += 0x5b;
            *rp = rz;
        }
        __Actor_Stop();
        five = 5;
        do { five = (unsigned short) five; } while (0);
        __Actor_SetAnim((int)actor, five);
        __Actor_TravelTo((int)actor, arg1 << 16, *(int *)(actor + 0xc), arg2 << 16);
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_15b8.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1608.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_16cc.s");

void OvlFunc_common1_16f8(void) {
}


void OvlFunc_common1_16fc(void) {
    extern unsigned short ewram_2001000;
    unsigned short *dst = &ewram_2001000;
    unsigned short value = 9;
    *dst = value;
}


void OvlFunc_common1_1708(void) {
    extern unsigned char ewram_2001000[];
    unsigned char *r5;
    r5 = ewram_2001000;
    while (*(short *)r5 != 9) {
        __WaitFrames(1);
    }
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_172c.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_17c0.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1814.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1928.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1b08.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1ecc.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_1fb4.s");


void OvlFunc_common1_2008(unsigned short arg0) {
    extern unsigned int iwram_3001f3c;
    unsigned int ptr = iwram_3001f3c;
    *((unsigned short *)(ptr + 0xdc)) = arg0;
}

INCLUDE_ASM("asm/maps/common/OvlFunc_common1_2018.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_2060.s");
INCLUDE_ASM("asm/maps/common/OvlFunc_common1_21c8.s");
