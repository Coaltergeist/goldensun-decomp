// fakematch
/* rom_77a7c8 (overlay file 881): consolidated TU — world_map map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/world_map/exports.s");

INCLUDE_ASM("asm/maps/world_map/ovl_30_a_a_a.s");


unsigned int OvlFunc_881_2008250(unsigned int arg0) {
    extern int __GetFlag(int kind);
    extern void OvlFunc_881_20081c4(void);
    unsigned char *base;

    base = (unsigned char *)arg0;
    if (__GetFlag(0x30) != 0)
        return 0;
    if (__GetFlag(0xb7 << 1) != 0)
        return 0;

    *(unsigned int *)(base + 0x6c) = (unsigned int)OvlFunc_881_20081c4;
    *(unsigned char *)(base + 0x55) = 0;
    *(unsigned short *)(base + 0x64) = 0;
    *(unsigned short *)(base + 0x66) = 0;
    *(unsigned int *)(base + 0x18) = 0x80 << 8;
    *(unsigned int *)(base + 0x1c) = 0x80 << 8;
    return 0;
}


unsigned int WorldMap_GetEntrances(void) {
    extern unsigned char gOvl_0200d27c[];
    return (unsigned int)gOvl_0200d27c;
}

int WorldMap_GetSpecialExits(void) {
    return 0;
}


unsigned int WorldMap_GetExits(void) {
    extern unsigned char gOvl_0200da2c[];
    return (unsigned int)gOvl_0200da2c;
}


unsigned int OvlFunc_881_20082a4(unsigned int arg0)
{
    extern void OvlFunc_881_20082cc(void);
    unsigned int r5;

    r5 = arg0;
    OvlFunc_881_20082cc();
    if (__GetFlag(0x847)) {
        __Actor_SetAnim(r5, 2);
    }
    return 1;
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_a_a_c.s");


unsigned int OvlFunc_881_2008350(unsigned char *actor)
{
    extern unsigned int iwram_3001e40;
    unsigned char *p = actor + 0x54;
    if ((1 & *p) != 0 && (iwram_3001e40 & 1) != 0) {
        *p = 1 ^ *p;
    }
    return 1;
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_a_c_a.s");


void OvlFunc_881_2008540(void) {
    extern void OvlFunc_881_20084a0(int a, int b, int c);
    OvlFunc_881_20084a0(0x82, 6, 0x2f);
}


void OvlFunc_881_2008550(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x96, 0x2e, 0xb);
}


void OvlFunc_881_2008560(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x74, 0x38, 0x15);
}


void OvlFunc_881_2008570(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x97, 0x19, 0x36);
}


void OvlFunc_881_2008580(void) {
    extern void OvlFunc_881_20084f0(int a, int b, int c);
    OvlFunc_881_20084f0(0x7d, 0x3b, 0x1e);
}


unsigned int WorldMap_GetEvents(void) {
    extern unsigned char gOvl_0200e3f4[];
    return (unsigned int)gOvl_0200e3f4;
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_c_a_a_a.s");

void OvlFunc_881_20086b4(void) {
    if (__GetFlag(0x85a) == 0) {
        __Func_8091e9c(0x65);
    } else {
        __PlaySound(0x7b);
        __Func_8091e9c(3);
    }
}


void OvlFunc_881_20086dc(void)
{
    extern void __CutsceneStart(void);
    extern void __Func_8091e9c(int);
	__CutsceneStart();
	__Func_8091e9c(0x4a);
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_c_a_c_a_a_a.s");

void OvlFunc_881_20097a4(void)
{
    unsigned char *actor;
    unsigned char *other;
    int flag;

    actor = (unsigned char *) __MapActor_GetActor(0xf);
    other = (unsigned char *) __MapActor_GetActor(0xe);
    *(unsigned int *)(actor + 8) = *(unsigned int *)(other + 8);
    *(unsigned int *)(actor + 0x10) = *(unsigned int *)(other + 0x10);
    if (*(int *)(actor + 0xc) < 0xa0000) {
        register int p0 __asm__("r0");
        p0 = 0x80;
        *(unsigned int *)(actor + 0xc) = 0xa0000;
        __asm__ volatile ("" : "+r" (p0));
        p0 <<= 2;
        flag = __GetFlag(p0);
        if (flag == 0) {
            unsigned short *p;
            unsigned short v;
            __PlaySound(0x91);
            {
                register unsigned char *pp0 __asm__("r0") = actor;
                __asm__ volatile ("" : : "r" (pp0));
                __Actor_SetAnim(pp0, 3);
            }
            __SetFlag(0x80 << 2);
            p = (unsigned short *)(actor + 0x64);
            v = 1;
            *p = v;
        }
    }
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_c_a_c_a_a_c.s");


void OvlFunc_881_200a858(void)
{
    extern unsigned char L679c[] __asm__(".Lm881_679c");
    unsigned long msgactor;
    unsigned int speedx;
    unsigned int speedy;

    __CutsceneStart();
    __Func_808c44c();
    __MessageID(0x2643);
    msgactor = *(unsigned long *)L679c;
    __ActorMessage(msgactor, 0);
    __Func_808c4c0();
    speedx = 0x80;
    speedy = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        speedx <<= 9;
        __asm__ volatile ("" : "+r" (speedx));
        speedy <<= 8;
        __MapActor_SetSpeed(rq, speedx, speedy);
    }
    {
        register unsigned int rq2 __asm__("r0") = 0;
        register unsigned long r1val __asm__("r1") = 0x1778;
        __asm__ volatile ("" : : "r" (rq2), "r" (r1val));
        __MapActor_TravelToAnimWait(rq2, r1val, 0xd48);
    }
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_c_a_c_a_c.s");


unsigned int OvlFunc_881_200b41c(void)
{
    extern unsigned int OvlFunc_881_200b448(unsigned int);
    unsigned int r5;
    unsigned int r6;

    r6 = OvlFunc_881_200b448(0);
    r6 += OvlFunc_881_200b448(2);
    r5 = OvlFunc_881_200b448(1);
    r5 += OvlFunc_881_200b448(3);
    r6 -= r5;
    return r6;
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_a_c_c_a_c_c.s");


void OvlFunc_881_200b7bc(void) {
    extern void OvlFunc_881_200b6dc(int);
    OvlFunc_881_200b6dc(0x36);
}


void OvlFunc_881_200b7c8(void) {
    extern unsigned int iwram_3001f30;
    unsigned int ptr = iwram_3001f30;
    *((unsigned char *)(ptr + 0x34)) = 1;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */

void OvlFunc_881_200b7d8(void)
{
    extern unsigned char iwram_3001ebc[];   /* @ 0x03001EBC */
    extern GlobalState gState;   /* GlobalState @ 0x02000240 */
    void *base;
    short *p;
    unsigned char *gs;
    int arg0;
    unsigned char *actor;
    unsigned short zero;
    unsigned short a0_flagbyte;
    unsigned long long t1;
    unsigned short a0_b;

    base = *(void **)iwram_3001ebc;
    p = (short *)((char *)base + (0xc1 << 1));
    if (*p == 0x63) {
        zero = 0;
        *p = zero;
    }
    __ClearFlag(0xbc << 2);
    __SetFlag(0x2f1);

    a0_flagbyte = 0xbe << 2;
    do { a0_flagbyte = (unsigned short) a0_flagbyte; } while (0);
    __SetFlagByte(a0_flagbyte, 0);

    t1 = 0x62;
    do { t1 = (unsigned long) t1; } while (0);
    __StartMapBattle((unsigned long) t1, 5);

    gs = (unsigned char *)&gState;
    gs[0x22b] = 3;

    a0_b = 0x62;
    do { a0_b = (unsigned short) a0_b; } while (0);
    __StartMapBattle(a0_b, 7);

    gs += (0xfa << 1);
    arg0 = *(unsigned int *)gs;
    actor = (unsigned char *)__MapActor_GetActor(arg0);
    actor[0x55] = 2;
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_c_a_c.s");


void OvlFunc_881_200bf10(unsigned int arg0)
{
    extern unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, unsigned int b);
    extern void OvlFunc_881_200c058(unsigned int a);
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}


void OvlFunc_881_200bf4c(unsigned int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern void __Actor_SetColorswap(unsigned int a, int b);
    extern unsigned int _umodsi3_RAM(unsigned int, unsigned int);
    extern void OvlFunc_881_200c058(unsigned int a);
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_881_200c058(arg0);
    }
}

void OvlFunc_881_200bf88(int arg0)
{
    extern volatile unsigned int iwram_3001e40;
    extern int _umodsi3_RAM(unsigned int a, int b);
    extern void __Actor_SetColorswap(int a, int b);
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _umodsi3_RAM(iwram_3001e40 >> 1, 6));
    }
}

INCLUDE_ASM("asm/maps/world_map/ovl_30_c_c_c_c.s");

INCLUDE_ASM("asm/maps/world_map/imports.s");
