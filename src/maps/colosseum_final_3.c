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
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009c20.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009df8.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_2009f90.s");
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200a0f0.s");

extern int __GetFieldActor(void);
extern void __Actor_Stop(void);
extern void __Actor_SetAnim(int a, int b);
extern void __Actor_TravelTo(int a, int b, int c, int d);
extern void __Actor_WaitMovement(unsigned int arg0);

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
INCLUDE_ASM("asm/maps/colosseum_final_3/OvlFunc_956_200a4d0.s");
