/* rom_7c7b9c (overlay file 943): consolidated TU — tolbi_bound_ship_deck map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/exports.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008030.s");

extern int bytes(int);

extern int __Actor_SetSpriteFlags();

unsigned int OvlFunc_943_20080b4(void) {
    int a;
    __Actor_SetSpriteFlags(a, 1);
    return 0;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20080c4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20082ec.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008514.s");

extern unsigned int __Random(unsigned int);

unsigned int OvlFunc_943_2008570(unsigned char *arg0) {
    unsigned int v;
    unsigned int t;
    v = (__Random((unsigned int)arg0) << 5) >> 16;
    if (v == 6) {
        t = 0xd0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    } else if (v == 9) {
        t = 0xb0;
        *(unsigned short *)(arg0 + 6) = t << 8;
    }
    return 1;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008598.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008724.s");


unsigned int OvlFunc_943_200889c(unsigned int arg0) {
    unsigned int v0;
    unsigned int v3;

    v0 = __Random(arg0);
    v3 = ((v0 * 5) << 3) >> 16;
    if (v3 == 0) {
        unsigned int v2;
        v2 = 0x80;
        v2 <<= 11;
        *(unsigned int *)((char *)arg0 + 0x28) = v2;
    }
    return 1;
}

void OvlFunc_943_20088c0(int *p)
{
    int v;

    v = p[6];
    if (v > 0x10000) {
        v -= 0x800;
        p[6] = v;
        p[7] = p[7] - 0x800;
    }
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20088e0.s");

extern unsigned char gOvl_0200c994[];

void *TolbiBoundShipDeck_GetEntrances(void) {
    return (void *)gOvl_0200c994;
}
extern unsigned char gOvl_0200cb44[];

void *TolbiBoundShipDeck_GetSpecialExits(void) {
    return (void *)gOvl_0200cb44;
}
extern unsigned char gOvl_0200cb64[];

void *TolbiBoundShipDeck_GetExits(void) {
    return (void *)gOvl_0200cb64;
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/TolbiBoundShipDeck_GetActors.s");

extern unsigned char L59d0[] __asm__(".Lm943_59d0");
extern unsigned char L5a54[] __asm__(".Lm943_5a54");
extern unsigned char L5958[] __asm__(".Lm943_5958");
extern unsigned char L5778[] __asm__(".Lm943_5778");

unsigned int * TolbiBoundShipDeck_GetEvents(void) {
    if (__GetFlag(0x93e)) {
        return (unsigned int *)L59d0;
    } else {
        if (__GetFlag(0x8a << 4)) {
            return (unsigned int *)L5a54;
        } else {
            if (__GetFlag(0x928)) {
                return (unsigned int *)L5958;
            } else {
                return (unsigned int *)L5778;
            }
        }
    }
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008a48.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008af0.s");

#include "message.h"

void OvlFunc_943_2008b98(void)
{
    __CutsceneStart();
    __MessageID(MSG_1f00);
    __Func_8093054(0x15, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008bb8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008bf0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008c28.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2008ca0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20090a0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20091c8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20092f0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/TolbiBoundShipDeck_MapInit.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009444.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009684.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20097a0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200985c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009920.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20099c0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009a98.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009b58.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009c14.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009d0c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009db0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009f90.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a2c0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a618.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200a9d4.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200ab7c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200ac84.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b150.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b1a8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b284.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b380.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b3b8.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b464.s");

extern void OvlFunc_943_200b558(int, int);
extern void OvlFunc_943_200b5ec(int, int, int);
extern unsigned char L5b30[] __asm__(".Lm943_5b30");

void OvlFunc_943_200b4bc(void)
{
    unsigned short *r5;
    unsigned short r3;
    unsigned short r2;

    OvlFunc_943_200b558(8, 0);
    r5 = (unsigned short *)L5b30;
    r3 = 0;
    *r5 = r3;
    OvlFunc_943_200b558(9, 1);
    r3 = r5[1];
    r3 += 0x80;
    r5[1] = r3;
    OvlFunc_943_200b558(0xa, 2);
    r3 = r5[2];
    r2 = 0x80;
    r2 <<= 1;
    r3 += r2;
    r5[2] = r3;
    OvlFunc_943_200b558(0xb, 3);
    r3 = r5[3];
    r2 = 0x80;
    r2 <<= 2;
    r3 += r2;
    r5[3] = r3;
    OvlFunc_943_200b5ec(0xc, 0, 0);
    OvlFunc_943_200b5ec(0xd, 1, 0);
    OvlFunc_943_200b5ec(0xe, 2, 0);
    OvlFunc_943_200b5ec(0xf, 3, 0);
    OvlFunc_943_200b5ec(0x10, 4, 1);
    OvlFunc_943_200b5ec(0x11, 5, 1);
    OvlFunc_943_200b5ec(0x12, 6, 1);
    OvlFunc_943_200b5ec(0x13, 7, 1);
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b558.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b5ec.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b710.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b950.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b9b8.s");

extern void __ActorMessage();
extern void __CutsceneWait(int a);

void OvlFunc_943_200b9ec(void) {
    int x;
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}

extern void __Func_8092adc();

void OvlFunc_943_200ba00(int a, int b) {
    __Func_8092adc(a, b, 10);
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200ba0c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200bc88.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200bf30.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200c218.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/tolbi_bound_ship_deck_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/imports.s");
