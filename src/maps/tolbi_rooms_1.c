/* rom_7d5838 (overlay file 950): consolidated TU — tolbi_rooms_1 map overlay. */

#include "nonmatching.h"
#include "api.h"

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

extern unsigned char iwram_3001ebc[];
extern void __Func_8091e9c(int);

void OvlFunc_950_200809c(int arg0)
{
    unsigned char *base;

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x201;
    *(int *)(base + 0x1c8) = 0x18;
    __Func_8091e9c(arg0);
}

struct TableEntry {
    void *unk0;
    unsigned short unk4;
    unsigned short unk6;
};

extern struct TableEntry Lm950_1dcc[] __asm__(".Lm950_1dcc");
extern void __MapActor_SetSpeed(int, int, int);

void OvlFunc_950_20080c0(void)
{
    unsigned char *map;
    unsigned char *actor;
    unsigned int i;
    int index;
    int arg1, arg2;

    map = *(unsigned char **)iwram_3001ebc;

    for (i = 8; i <= 0x41; i++) {
        actor = (unsigned char *)__MapActor_GetActor(i);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    map += 0x16c;
    index = *(short *)map - 0xe;
    __PlaySound(0x9e);
    arg1 = Lm950_1dcc[index].unk4;
    arg2 = Lm950_1dcc[index].unk6;
    __Func_8010560(Lm950_1dcc[index].unk0, arg1, arg2);

    __MapActor_SetSpeed(0, 0x8000, 0x4000);
    ((unsigned char *)__MapActor_GetActor(0))[0x55] = 0;
    __MapActor_SetAnim(0, 2);
    __Func_8091e9c(*(short *)map);
}

extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetSpriteFlags(void *, int);
extern void __Actor_SetAnim(void *, int);
extern void __DeleteActor(void *);
extern void __MapActor_TravelToAnimWait(int, int, int);
extern void __Func_8092adc(int, int, int);
extern void __Func_8092304(int, int, int);

extern void __CutsceneStart(void);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);
extern void __CutsceneWait(int);
extern void __MapActor_Jump(int, int, int);
extern void __MapActor_Emote(int, int, int);
extern void __MapActor_DoAnim(int, int);
extern void __Func_80925cc(int, int);
extern void __MapActor_SetPos(int, int, int);

void OvlFunc_950_200813c(void)
{
    void *actor;

    __CutsceneStart();
    __MessageID(0x2394);
    __CutsceneWait(0x28);
    actor = API_CreateActor(0x11c, 0x2580000, 0, 0x3380000);
    __Actor_SetSpriteFlags(actor, 0);
    __Actor_SetAnim(actor, 6);
    __CutsceneWait(10);
    __Actor_SetAnim(actor, 1);
    __CutsceneWait(0x28);
    __DeleteActor(actor);
    __CutsceneWait(2);
    API_MapActor_Emote(0x19, 0x100, 0x32);
    API_MapActor_SetSpeed(0x19, 0x10000, 0x8000);
    API_MapActor_TravelToAnimWait(0x19, 0x258, 0x350);
    API_Func_8092adc(0x19, 0xc000, 0);
    __CutsceneWait(0x28);
    __ActorMessage(0x19, 0);
    __Func_80925cc(0x19, 2);
    __CutsceneWait(0x1e);
    API_MapActor_TravelToAnimWait(0x19, 0x238, 0x350);
    API_Func_8092adc(0x19, 0xc000, 0);
    __CutsceneWait(0x1e);
    API_MapActor_Emote(0x19, 0x108, 0x32);
    __CutsceneWait(0x14);
    API_Func_8092304(0, 0, -16);
    __CutsceneWait(0x14);
    API_Func_8092adc(0x19, 0x3000, 0);
    __CutsceneWait(0x1e);
    __Func_80925cc(0x19, 2);
    __CutsceneWait(0x14);
    __ActorMessage(0x19, 0);
    __CutsceneWait(0x14);
    API_MapActor_Emote(0, 0x101, 0x32);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x19, 4);
    __CutsceneWait(0x14);
    __ActorMessage(0x19, 0);
    __CutsceneWait(0x1e);
    API_MapActor_Emote(0x19, 0x102, 0x32);
    __ActorMessage(0x19, 0);
    API_MapActor_SetSpeed(0x19, 0x16666, 0xb333);
    API_Func_8092304(0x19, 16, 0);
    API_Func_8092304(0x19, 0, 32);
    __CutsceneWait(0x14);
    __MapActor_DoAnim(0x19, 3);
    __CutsceneWait(0x14);
    __ActorMessage(0x19, 0);
    API_Func_8092304(0, 16, 0);
    API_Func_8092adc(0, 0x8000, 0);
    __CutsceneWait(0x14);
    API_MapActor_SetSpeed(0x19, 0x1cccc, 0xe666);
    API_Func_8092304(0x19, 0, 48);
    __MapActor_SetPos(0x19, 0, 0);
    __CutsceneEnd();
}

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
    unsigned char *base;
    struct Actor *actor;
    GlobalState *state;
    short *p;
    int s1;
    int s2;
    int r2;
    int mask;
    int set;

    base = *(unsigned char **)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x209;

    if (API_GetFlag(0x95 << 4)) {
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

        if (API_GetFlag(0x8bc)) {
            API_MapActor_SetPos(0x19, 0x2300000, 0x2a80000);
            API_Func_8092adc(0x19, 0x8000, 0);
        }

        state = &gState;
        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)state + r2);
        if (*p == 0x13 && !API_GetFlag(0x8bc)) {
            API_SetFlag(0x8bc);
            __MapTransitionIn();
            OvlFunc_950_200813c();
        }

        r2 = 0xe1;
        r2 <<= 1;
        p = (short *)((char *)state + r2);
        if (*p == 0x10 && !API_GetFlag(0x300)) {
            API_SetFlag(0x300);
            __MapTransitionIn();
            OvlFunc_950_2008328();
        }

        if (API_GetFlag(0x8ab)) {
            API_MapActor_SetPos(0x23, 0, 0);
            API_MapActor_SetPos(0x24, 0, 0);
        }
    }

    return 0;
}
extern unsigned char Lconst_1fd5[] __asm__(".Lconst_1fd5");
__asm__(".equ .Lconst_1fd5, 0x1fd5");

void OvlFunc_950_2008500(int arg0)
{
    void *actor;
    short dir;
    int msg;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0x8000) {
        __Func_80b0278(0x1c, arg0);
    } else if (__GetFlag(0x95 << 4)) {
        __MessageID(0x238d);
        __ActorMessage(arg0, 0);
    } else if (__GetFlag(0x962)) {
        __MessageID(0x221b);
        __ActorMessage(arg0, 0);
    } else {
        msg = (int)Lconst_1fd5;
        __MessageID(msg);
        __ShowActorMessage_NoWait(arg0, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        __ActorMessage(arg0, 0);
    }
}
extern unsigned char Lconst_2389[] __asm__(".Lconst_2389");
__asm__(".equ .Lconst_2389, 0x2389");

void OvlFunc_950_20085a8(int arg0)
{
    void *actor;
    short dir;
    int msg;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __Func_80b0278(0x1a, arg0);
    } else if (__GetFlag(0x95 << 4)) {
        msg = (int)Lconst_2389;
        __MessageID(msg);
        __ShowActorMessage_NoWait(arg0, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        __ActorMessage(arg0, 0);
    } else if (__GetFlag(0x962)) {
        __MessageID(0x2219);
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x1fd2);
        __ActorMessage(arg0, 0);
        __MapActor_Emote(arg0, 0x106, 0);
        __CutsceneWait(40);
        __ActorMessage(arg0, 0);
    }
}
extern void __Func_80b0278(int, int);

void OvlFunc_950_200866c(int arg0)
{
    void *actor;
    short dir;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __Func_80b0278(0x1b, arg0);
    } else if (__GetFlag(0x95 << 4)) {
        __MessageID(0x238f);
        __ActorMessage(arg0, 0);
    } else if (__GetFlag(0x962)) {
        __MessageID(0x221d);
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x1fd9);
        __ActorMessage(arg0, 0);
    }
}
extern unsigned char Lconst_239e[] __asm__(".Lconst_239e");
__asm__(".equ .Lconst_239e, 0x239e");

void OvlFunc_950_20086ec(int a)
{
    int msg;

    __CutsceneStart();
    msg = (int)Lconst_239e;
    __MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
    __CutsceneEnd();
}

void OvlFunc_950_200873c(unsigned int arg0)
{
  __CutsceneStart();
  __MessageID(0x23a1);
  __ActorMessage(arg0, 0);
 do { __CutsceneEnd(); } while (0);
}

extern unsigned char Lconst_1fbb[] __asm__(".Lconst_1fbb");
__asm__(".equ .Lconst_1fbb, 0x1fbb");

void OvlFunc_950_2008760(int a)
{
    int msg;

    __CutsceneStart();
    msg = (int)Lconst_1fbb;
    __MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
    __CutsceneEnd();
}
extern unsigned char Lconst_2399[] __asm__(".Lconst_2399");
__asm__(".equ .Lconst_2399, 0x2399");

void OvlFunc_950_20087b0(int a)
{
    int msg;
    int flag = 0x8be;

    __CutsceneStart();
    if (__GetFlag(0x8bd) == 0) {
        msg = (int)Lconst_2399;
        __MessageID(msg);
        __ShowActorMessage_NoWait(a, 0);
        if (__Func_8091c7c(0, 0) == 0) {
            __CutsceneWait(10);
            __MessageID(msg + 1);
        } else {
            __MessageID(msg + 2);
        }
        __ActorMessage(a, 0);
    } else {
        if (__GetFlag(flag) == 0) {
            __SetFlag(flag);
            __MessageID(0x239c);
            __ActorMessage(a, 0);
            __CutsceneWait(10);
            __Func_80925cc(a, 2);
            __CutsceneWait(20);
        }
        __MessageID(0x239d);
        __ActorMessage(a, 0);
    }
    __CutsceneEnd();
}


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

static inline void MapActor_Emote(int actor, int emote, int c) {
    __MapActor_Emote(actor, emote, c);
}

void OvlFunc_950_2008898(int arg0)
{
    __CutsceneStart();
    __MessageID(0x23a8);
    MapActor_Emote(0x1f, 0x103, 0x28);
    __ActorMessage(arg0, 0);
    __CutsceneEnd();
}
extern unsigned char Lconst_23ac[] __asm__(".Lconst_23ac");
__asm__(".equ .Lconst_23ac, 0x23ac");

void OvlFunc_950_20088cc(int a)
{
    int msg;

    __CutsceneStart();
    msg = (int)Lconst_23ac;
    __MessageID(msg);
    __ShowActorMessage_NoWait(a, 0);
    if (__Func_8091c7c(0, 0) == 0) {
        __CutsceneWait(10);
        __MessageID(msg + 1);
    } else {
        __MessageID(msg + 2);
    }
    __ActorMessage(a, 0);
    __CutsceneEnd();
}
void OvlFunc_950_200891c(int arg0)
{
    void *actor;
    short dir;

    actor = __MapActor_GetActor(0);
    dir = (*(unsigned short *)((char *)actor + 6) + 0x2000) & (int)0xffffc000;
    if ((unsigned short)dir == 0xc000) {
        __UI_Sanctum(arg0);
    } else if (__GetFlag(0x95 << 4)) {
        __MessageID(0x23bf);
        __ActorMessage(arg0, 0);
    } else if (__GetFlag(0x962)) {
        __MessageID(0x2231);
        __ActorMessage(arg0, 0);
    } else {
        __MessageID(0x1feb);
        __ActorMessage(arg0, 0);
    }
}
INCLUDE_ASM("asm/maps/tolbi_rooms_1/tolbi_rooms_1_data.s");

INCLUDE_ASM("asm/maps/tolbi_rooms_1/imports.s");
