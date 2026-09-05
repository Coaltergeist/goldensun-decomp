/* rom_7d5838 (overlay file 950): consolidated TU — tolbi_rooms_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/tolbi_rooms_1/exports.s");

extern unsigned char gOvl_02008bb4[];

unsigned int TolbiRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_02008bb4;
}

unsigned int TolbiRooms1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008dac[];

void *TolbiRooms1_GetExits(void) {
    return (void *)gOvl_02008dac;
}

extern unsigned char L1040[] __asm__(".Lm950_1040");
extern unsigned char Le00[] __asm__(".Lm950_e00");

unsigned char * TolbiRooms1_GetActors(void) {
    if (__GetFlag(0x95 << 4)) {
        return L1040;
    } else {
        return Le00;
    }
}

extern int __GetFlag(int);
extern unsigned char L19d0[] __asm__(".Lm950_19d0");
extern unsigned char L1670[] __asm__(".Lm950_1670");
extern unsigned char gScript_886__02009310[];

unsigned char *TolbiRooms1_GetEvents(void)
{
	if (__GetFlag(0x95 << 4))
		return L19d0;
	if (__GetFlag(0x962))
		return L1670;
	return gScript_886__02009310;
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_200809c.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_20080c0.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_200813c.s");
extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MapActor_Jump(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __Func_80925cc(int, int);
void OvlFunc_950_2008328(void)
{
    __CutsceneStart();
    __MessageID(0x23a4);
    __CutsceneWait(0x1e);
    __MapActor_Jump(0x1f, 4, 0xd);
    __MapActor_Jump(0x1f, 4, 0x1e);
    __ActorMessage(0x1f, 0);
    __CutsceneWait(10);
    __MapActor_Emote(0x20, 0x102, 0x32);
    __CutsceneWait(10);
    __MapActor_DoAnim(0x20, 3);
    __CutsceneWait(0x1e);
    __ActorMessage(0x20, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0x21, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x21, 0);
    __CutsceneWait(10);
    __Func_80925cc(0x1f, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0x1f, 0);
    __CutsceneWait(10);
    __MapActor_DoAnim(0x20, 3);
    __CutsceneWait(0x1e);
    __CutsceneEnd();
}
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;

void __MapActor_SetPos(int, int, int);
extern void OvlFunc_950_200813c(void);
struct Actor {
    unsigned char pad1[0x23];
    unsigned char f23;
    unsigned char pad2[0x50 - 0x24];
    unsigned char *sprite;
};

int TolbiRooms1_MapInit(void)
{
    int pos_x = 0x8c << 18;
    int pos_y = 0xaa << 18;
    int speed = 0x80 << 8;
    int flag_8bc = 0x8bc;
    int flag_300 = 0x300;
    unsigned char *base;
    struct Actor *actor;
    GlobalState *state;
    short *p;
    int s1;
    int s2;
    int r2;
    int mask;
    int set;

    do {} while (pos_x == 0);

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x209;

    if (__GetFlag(0x95 << 4)) {
        s1 = 0x33;
        s2 = 0x2d;
        __Func_8010704(0x33, 0x2f, 3, 1, s1, s2);

        mask = -13;
        set = 8;

        actor = (struct Actor *)__MapActor_GetActor(0x1f);
        actor->f23 = 0;
        actor->sprite[9] = (actor->sprite[9] & mask) | set;

        actor = (struct Actor *)__MapActor_GetActor(0x20);
        actor->f23 = 0;
        actor->sprite[9] = (actor->sprite[9] & mask) | set;

        if (__GetFlag(flag_8bc)) {
            __MapActor_SetPos(0x19, pos_x, pos_y);
            __Func_8092adc(0x19, speed, 0);
        }

        state = &gState;
        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)state + r2);
        if (*p == 0x13 && !__GetFlag(flag_8bc)) {
            __SetFlag(flag_8bc);
            __MapTransitionIn();
            OvlFunc_950_200813c();
        }

        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)state + r2);
        if (*p == 0x10 && !__GetFlag(flag_300)) {
            __SetFlag(flag_300);
            __MapTransitionIn();
            OvlFunc_950_2008328();
        }

        if (__GetFlag(0x8ab)) {
            __MapActor_SetPos(0x23, 0, 0);
            __MapActor_SetPos(0x24, 0, 0);
        }
    }

    return 0;
}
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_2008500.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_20085a8.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_200866c.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_20086ec.s");

void OvlFunc_950_200873c(unsigned int arg0)
{
  __CutsceneStart();
  __MessageID(0x23a1);
  __ActorMessage(arg0, 0);
 do { __CutsceneEnd(); } while (0);
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_2008760.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_20087b0.s");


void OvlFunc_950_200885c(void) {
    __CutsceneStart();
    if (__GetFlag(0x8be) == 0) {
        __MessageID(0x23b3);
    } else {
        __MessageID(0x23b4);
    }
    __ActorMessage(0x19, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_2008898.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_20088cc.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/OvlFunc_950_200891c.s");
INCLUDE_ASM("asm/maps/tolbi_rooms_1/tolbi_rooms_1_data.s");

INCLUDE_ASM("asm/maps/tolbi_rooms_1/imports.s");
