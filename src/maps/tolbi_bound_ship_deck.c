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
#include "nonmatching.h"

typedef struct { unsigned char _bytes[4]; } ActorCmd;
extern ActorCmd gScript_943__0200c980[5];
extern ActorCmd gScript_943__0200c628[79];
extern unsigned char Lm943_5160[] __asm__(".Lm943_5160");
extern void OvlFunc_943_200c218(void);

extern void __CutsceneStart(void);
extern void __LoadFieldActors(void *);
extern void __WaitFrames(int);
extern void __MapActor_SetPos(int, int, int);
extern void *__MapActor_GetActor(int);
extern void __MapActor_SetBehavior(int, void *);
extern void __MapActor_SetSpeed(int, int, int);
extern int __GetFlag(int);
extern void __CutsceneEnd(void);

struct Actor {
    char _pad[6];
    unsigned short facing;
    char _pad2[0x59 - 8];
    unsigned char unk59;
};

void OvlFunc_943_2009920(void)
{
    int pos_x = 0xee << 16;
    int pos_y = 0x2720000;
    int speed_x = 0xcccc;
    int speed_y = 0x6666;
    struct Actor *actor;

    do {} while (pos_x == 0);

    __CutsceneStart();
    __LoadFieldActors(Lm943_5160);
    __WaitFrames(1);
    __MapActor_SetPos(0x14, 0, 0);
    __MapActor_SetPos(0x17, pos_x, pos_y);
    __MapActor_SetPos(0x16, 0x86 << 17, 0x2a60000);
    actor = (struct Actor *)__MapActor_GetActor(0x16);
    actor->facing = 0;
    __MapActor_SetBehavior(0x16, gScript_943__0200c980);
    ((struct Actor *)__MapActor_GetActor(0x15))->unk59 |= 0x80;
    __MapActor_SetSpeed(0x15, speed_x, speed_y);
    __MapActor_SetBehavior(0x15, gScript_943__0200c628);
    if (__GetFlag(0x109) != 0) {
        OvlFunc_943_200c218();
    }
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_20099c0.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009a98.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_2009b58.s");
extern void __CutsceneWait(int a);
extern void __Func_8092adc();
extern void OvlFunc_943_200ba00(int a, int b);
extern unsigned char iwram_3001ebc[];

void __MapTransitionIn(void);
void __WaitMapTransition(void);
void OvlFunc_943_2008bb8(void);
void __MapActor_TravelToAnimWait(int, int, int);
void __MapActor_DoAnim(int, int);
void __MapActor_Jump(int, int, int);
void __Func_809259c(int, int);
void __MessageID(int);
void __ActorMessage_Wait(int, int, int);
void __MapTransitionOut(void);
void __Func_8091e9c(int);

void OvlFunc_943_2009c14(int a, int b)
{
    int pos_x;
    int pos_y;
    int anim1;
    int anim2;
    int anim3;
    int speed;

    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x100;
    __MapTransitionIn();

    pos_x = 0xd8 << 16;
    pos_y = 0x93 << 18;
    anim1 = 0x96 << 2;
    anim2 = 0x97 << 2;
    anim3 = 0x26a;
    speed = 0xa0 << 7;
    do {} while (pos_x == 0);

    __WaitMapTransition();
    __CutsceneWait(0x14);
    OvlFunc_943_2008bb8();
    __MapActor_SetPos(a, pos_x, pos_y);
    __MapActor_SetSpeed(a, 0xcccc, 0x6666);
    __MapActor_TravelToAnimWait(a, 0xd8, anim1);
    __MapActor_TravelToAnimWait(a, 0xda, anim2);
    __MapActor_TravelToAnimWait(a, 0xea, anim2);
    __MapActor_TravelToAnimWait(a, 0xec, anim3);
    __Func_8092adc(a, speed, 0x14);
    __MapActor_DoAnim(a, 3);
    __CutsceneWait(0x14);
    OvlFunc_943_200ba00(b, speed);
    __MapActor_Jump(b, 4, 0x28);
    __Func_809259c(b, 2);
    __MessageID(0x1e39);
    __ActorMessage_Wait(b, 0, 0x14);
    *(unsigned int *)(*(char **)iwram_3001ebc + 0x1c0) = 0x202;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(0xa);
}
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
extern unsigned char Lm943_5b40[] __asm__(".Lm943_5b40");
extern unsigned char Lm943_5b70[] __asm__(".Lm943_5b70");
extern unsigned char Lm943_5b90[] __asm__(".Lm943_5b90");

extern void OvlFunc_943_200b380(int);
extern void __Func_8092b54(int, int);

void OvlFunc_943_200b710(void)
{
    unsigned int i;
    unsigned char *actor;
    int *p70;
    int *p90;

    for (i = 0; i <= 7; i++) {
        ((unsigned short *)Lm943_5b40)[i] = 0xc000;
    }

    OvlFunc_943_200b380(8);
    __MapActor_SetPos(9, 0, 0);
    __MapActor_SetPos(10, 0, 0);
    __MapActor_SetPos(11, 0, 0);
    __MapActor_SetPos(12, 0, 0);
    OvlFunc_943_200b380(13);
    OvlFunc_943_200b380(14);
    OvlFunc_943_200b380(15);

    p70 = (int *)Lm943_5b70;
    p70[0] = 0;
    p70[1] = 0;
    p70[2] = 0;
    p70[3] = 0;

    actor = (unsigned char *)__MapActor_GetActor(8);
    p90 = (int *)Lm943_5b90;
    p90[0] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(13);
    p90[1] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(14);
    p90[2] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(15);
    p90[3] = *(int *)(actor + 0x10);

    OvlFunc_943_200b380(16);
    OvlFunc_943_200b380(17);
    OvlFunc_943_200b380(18);
    OvlFunc_943_200b380(19);

    actor = (unsigned char *)__MapActor_GetActor(16);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(17);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(18);
    *(int *)(actor + 0x18) = 0xffff0000;

    actor = (unsigned char *)__MapActor_GetActor(19);
    *(int *)(actor + 0x18) = 0xffff0000;

    p70[4] = 0;
    p70[5] = 0;
    p70[6] = 0;
    p70[7] = 0;

    actor = (unsigned char *)__MapActor_GetActor(16);
    p90[4] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(17);
    p90[5] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(18);
    p90[6] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(19);
    p90[7] = *(int *)(actor + 0x10);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if (actor != 0) {
        __MapActor_SetPos(8, *(int *)(actor + 8), *(int *)(actor + 0x10));
    }

    __WaitFrames(1);
    __Func_8092b54(13, 8);
    __Func_8092b54(14, 8);
    __Func_8092b54(15, 8);
    __Func_8092b54(16, 8);
    __Func_8092b54(17, 8);
    __Func_8092b54(18, 8);
    __Func_8092b54(19, 8);

    ((unsigned char *)__MapActor_GetActor(8))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(13))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(14))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(15))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(16))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(17))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(18))[0x5c] = 1;
    ((unsigned char *)__MapActor_GetActor(19))[0x5c] = 1;

    __WaitFrames(1);
    __MapActor_SetPos(8, 0x84 << 16, 0x9e << 18);
    __WaitFrames(1);

    OvlFunc_943_200b5ec(8, 0, 2);
    OvlFunc_943_200b5ec(13, 1, 2);
    OvlFunc_943_200b5ec(14, 2, 2);
    OvlFunc_943_200b5ec(15, 3, 2);
    OvlFunc_943_200b5ec(16, 4, 3);
    OvlFunc_943_200b5ec(17, 5, 3);
    OvlFunc_943_200b5ec(18, 6, 3);
    OvlFunc_943_200b5ec(19, 7, 3);
}
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b950.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200b9b8.s");

extern void __ActorMessage();

void OvlFunc_943_200b9ec(void) {
    int x;
    __ActorMessage(x, 0);
    __CutsceneWait(0xa);
}


void OvlFunc_943_200ba00(int a, int b) {
    __Func_8092adc(a, b, 10);
}

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200ba0c.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200bc88.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200bf30.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/OvlFunc_943_200c218.s");
INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/tolbi_bound_ship_deck_data.s");

INCLUDE_ASM("asm/maps/tolbi_bound_ship_deck/imports.s");
