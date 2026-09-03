/* rom_7e0928 (overlay file 956): consolidated TU — colosseum_final_3 map overlay. */

#include "nonmatching.h"

extern int OvlFunc_956_20086a4();
extern void OvlFunc_956_200857c();

extern unsigned char gOvl_0200d000[];

unsigned int ColosseumFinal3_GetEntrances(void) {
    return (unsigned int)gOvl_0200d000;
}

unsigned int ColosseumFinal3_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200d090[];

unsigned int ColosseumFinal3_GetExits(void) {
    return (unsigned int)gOvl_0200d090;
}
extern unsigned char gScript_881__0200d0a8[];

unsigned int ColosseumFinal3_GetActors(void) {
    return (unsigned int)gScript_881__0200d0a8;
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200804c.s");

extern unsigned char L5484[] __asm__(".Lm956_5484");
extern unsigned char L5480[] __asm__(".Lm956_5480");
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_2008188(void)
{
    void (*r5)(void);

    *(int *)L5484 = 0;
    r5 = OvlFunc_956_200804c;
    *(int *)L5480 = 0;
    __StopTask(r5);
    r5();
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20081b4.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20081c8.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008204.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200824c.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008274.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20082f8.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008404.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20084a4.s");

extern void OvlFunc_common1_2060(void);
extern void OvlFunc_956_20084a4(void);

void OvlFunc_956_200857c(void)
{
	OvlFunc_common1_2060();
	OvlFunc_956_20084a4();
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200858c.s");

void OvlFunc_956_20085d0(void) {}


void OvlFunc_956_20085d4(void) {
    OvlFunc_common1_2060();
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20085e0.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008658.s");

#include "actor.h"

int OvlFunc_956_20086a4(int arg0, int arg1)
{
    struct Actor *actor;
    int x0, z0;

    if (__Func_8012038(0, arg0, arg1) == 0xff)
        return -2;
    x0 = arg0 >> 20;
    z0 = arg1 >> 20;
    if ((actor = (struct Actor *)__MapActor_GetActor(0xf),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x10),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x11),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0))
        return -1;
    return 0;
}


int OvlFunc_956_2008714(int arg0, int arg1)
{
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x180000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 - 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x80000) != 0)
        return -1;
    if (OvlFunc_956_20086a4(arg0, arg1 + 0x180000) != 0)
        return -1;
    return 0;
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200876c.s");

extern void __Func_80118c0(unsigned int);
extern void __Func_80118a8(unsigned int);
extern void __PlaySound(unsigned int);

unsigned int OvlFunc_956_2008a20(void) {
    __Func_80118c0(1);
    __Func_80118a8(2);
    __PlaySound(0x90 << 1);
    __PlaySound(0xd9);
    return 0;
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008a44.s");


void OvlFunc_956_2008a84(void) {
  int v;

  __Func_809ad90(0x1c);
  __SetFlag(0x361);
  __WaitFrames(10);
  v = *(int *)L5480;
  while (v != 1 && v != 3) {
    __WaitFrames(1);
    v = *(int *)L5480;
  }
  __WaitFrames(1);
  __StopTask(OvlFunc_956_200804c);
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008ad4.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

void OvlFunc_956_2008b30(void)
{
    unsigned char *base;
    unsigned char *actor;
    unsigned int z;

    base = (unsigned char *)&gState;
    actor = (unsigned char *)__MapActor_GetActor(*(unsigned int *)(base + (0xfa * 2)));
    if (*(int *)(actor + 8) > 0x2980000) {
        *(int *)(actor + 8) = 0x2980000;
    }
    *(int *)(actor + 0x34) = 0x10000;
    *(int *)(actor + 0x30) = 0x20000;
    __Actor_SetAnim((int)actor, 5);
    z = *(unsigned int *)(actor + 0x10) & 0xfff00000;
    __Actor_TravelTo((int)actor,
                    *(int *)(actor + 8),
                    *(int *)(actor + 0xc),
                    z + 0xc0000);
    __Actor_WaitMovement((int)actor);
    __MapActor_Surprise(*(unsigned int *)(base + (0xfa * 2)), 0x102);
    __Func_8092708(*(unsigned int *)(base + (0xfa * 2)), 6, 0);
}

void OvlFunc_956_2008ba0(void) {}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008ba4.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2008c5c.s");

extern unsigned int OvlFunc_common1_21c8(void);

void OvlFunc_956_2008d70(void)
{
    if (OvlFunc_common1_21c8())
        return;
    __Func_8093c00();
}


void OvlFunc_956_2008d84(void)
{
	if (OvlFunc_common1_21c8() == 0)
		__Func_8093c00();
	else
		OvlFunc_956_200857c();
}

extern unsigned char gScript_968__0200d488[];

void *ColosseumFinal3_GetEvents(void) {
    return (void *)gScript_968__0200d488;
}

INCLUDE_ASM("asm/maps/colosseum_final_3/ColosseumFinal3_MapInit.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200937c.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_20093c0.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009474.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009a0c.s");
extern void __Actor_TravelTo(int a, int b, int c, int d);
extern void __Actor_WaitMovement(unsigned int arg0);
#include "actor.h"

void OvlFunc_common1_2c4(void);
int OvlFunc_common1_4cc(void *, int);
void OvlFunc_common1_1490(int, int, int);
void OvlFunc_common1_14f4(int, int, int);
void OvlFunc_common1_1550(void);
void OvlFunc_common1_588(void *, int);

void __CutsceneStart(void);
void __CutsceneEnd(void);
void __MessageID(int);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Func_8093530(void);
void __CutsceneWait(int);
void __ActorMessage(void *, int);
void __WaitFrames(int);
struct Actor *__MapActor_GetActor(int);
void __SetCameraTarget(int, int);

void OvlFunc_956_2009c20(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;
    int y1 = 0x80 << 11;
    int y2 = 0x80 << 14;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    do { } while (y1 == 0);

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 1);
    if (r6 == 0) {
        __MessageID(0x20b2);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0x98 << 16, -1, 0xc8 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x68, 0x44, 0);
        __CutsceneWait(0x3c);
        OvlFunc_common1_14f4(0xa8, 0x60, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);

        {
            struct Actor *a = __MapActor_GetActor(0xa);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            __Actor_TravelTo(a, a->pos.x, y1, a->pos.z);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xb);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            __Actor_TravelTo(a, a->pos.x, y2, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0x2d);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xa);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            __Actor_TravelTo(a, a->pos.x, y2, a->pos.z);
        }

        {
            struct Actor *a = __MapActor_GetActor(0xb);
            a->__unk55 = r6;
            a->accel = 0x6666;
            a->speed = 0xcccc;
            __Actor_TravelTo(a, a->pos.x, y1, a->pos.z);
            __Actor_WaitMovement(a);
            __CutsceneWait(0xf);
        }

        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0x68, 0x44, 0);
        __CutsceneWait(0x1e);
        OvlFunc_common1_14f4(0xa8, 0x60, 0xa);
        __CutsceneWait(0x28);
        OvlFunc_common1_14f4(0x68, 0x44, 0xa);
        __CutsceneWait(0x46);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __WaitFrames(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 1);
    } else if (r6 == 1) {
        __MessageID(0x20b1);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 1);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009df8.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009f90.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200a0f0.s");

extern int __GetFieldActor(void);
extern void __Actor_Stop(void);
extern void __Actor_SetAnim(int a, int b);

void OvlFunc_956_200a2c4(int arg0, int arg1, int arg2) {
    int r5;
    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(int *)((char *)r5 + 0xc), arg2 << 16);
    }
}
void OvlFunc_956_200a2f4(unsigned int arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int r5;

    r5 = __GetFieldActor();
    if (r5 != 0) {
        __Actor_Stop();
        __Actor_SetAnim(r5, 5);
        __Actor_TravelTo(r5, arg1 << 16, *(unsigned int *)((char *)r5 + 0xc), arg2 << 16);
        __Actor_WaitMovement(r5);
        __Actor_SetAnim(r5, 1);
    }
}

INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200a330.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/colosseum_final_3_data.s");
void OvlFunc_956_200a4d0(void *arg0)
{
    unsigned int r3;
    unsigned int r2;
    int r6;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    if (*(short *)r3 == 2) {
        OvlFunc_common1_2c4();
        return;
    }

    __CutsceneStart();
    r6 = OvlFunc_common1_4cc(arg0, 6);
    if (r6 == 0) {
        __MessageID(0x20c7);
        __Func_80933d4(0xc0 << 10, 0xc0 << 7);
        __Func_80933f8(0xa1 << 19, -1, 0x98 << 16, 1);
        __Func_8093530();
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1490(0xb4, 0x58, 0);
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_14f4(0x20, 0x54, 10);
        __CutsceneWait(0x1e);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_14f4(0x60, 0x54, 0x1e);
        __CutsceneWait(0x3c);
        __ActorMessage(arg0, 0);
        OvlFunc_common1_1550();
        __CutsceneWait(2);
        __SetCameraTarget(0, 0);
        OvlFunc_common1_588(arg0, 6);
    } else if (r6 == 1) {
        __MessageID(0x20c6);
        __ActorMessage(arg0, 0);
    }

    OvlFunc_common1_5e4(r6, arg0, 6);
    __CutsceneEnd();
}
