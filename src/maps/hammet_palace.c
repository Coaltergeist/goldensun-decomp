/* rom_7c37ac (overlay file 938): consolidated TU — hammet_palace map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/hammet_palace/exports.s");

INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_GetEntrances.s");

unsigned int HammetPalace_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gScript_917__02009d9c[];

void *HammetPalace_GetExits(void) {
    return (void *)gScript_917__02009d9c;
}

INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_67[];
extern unsigned char Lm938_1f38[] __asm__(".Lm938_1f38");
extern unsigned char Lm938_1f2c[] __asm__(".Lm938_1f2c");

int HammetPalace_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_67) return (int)Lm938_1f38;
    return (int)Lm938_1f2c;
}

void OvlFunc_938_20080d4(void) {
    __CutsceneStart();
    __MessageID(0x1b83);
    __Func_8093054(0xd, 0);
    __CutsceneEnd();
}

void OvlFunc_938_20080f4(void) {
    __CutsceneStart();
    __MessageID(0x1b88);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_938_2008114(void)
{
  unsigned long long t1;
  unsigned long v1;
  unsigned short t2;

  __CutsceneStart();
  __MapActor_Emote(8, 0x100, 0x3c);
  __MessageID(0x1b91);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __Func_80925cc(t2, 2);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 4);

  t1 = 10;
  do { t1 = (unsigned long) t1; } while (0);
  v1 = t1;
  __ActorMessage_Wait(8, 0, v1);

  t2 = 8;
  do { t2 = (unsigned short) t2; } while (0);
  __MapActor_DoAnim(t2, 3);

  __ActorMessage_Wait(8, 0, 10);
  __SetFlag(0x913);
  __CutsceneEnd();
}

extern unsigned char iwram_3001ebc[];

extern void __PlaySound(int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetAnim(int, int);
extern void __Func_80118a8(int);
extern void __MapActor_TravelBy(int, int, int);
extern void __Func_8092208(int, int, int);
extern void __Func_8091e9c(int);
extern void __Func_80118c0(int);

void OvlFunc_938_2008184(void)
{
    unsigned char *map = *(unsigned char **)iwram_3001ebc;
    int sp1 = 0x8000;
    int sp2 = 0x4000;
    int step = -16;

    do { } while (sp1 == 0);

    __CutsceneStart();
    __CutsceneWait(10);
    if (*(short *)(map + 0x16c) == 4) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }
    __Func_80118a8(1);
    __Func_80118a8(2);
    __CutsceneWait(10);
    __MapActor_SetSpeed(0, sp1, sp2);
    __MapActor_SetAnim(0, 2);
    if (*(short *)(map + 0x16c) == 4) {
        __MapActor_TravelBy(0, 0, step);
    } else {
        __Func_8092208(0, 3, step);
    }
    __CutsceneWait(16);
    __Func_8091e9c(*(short *)(map + 0x16c));
    __Func_80118c0(1);
    __Func_80118c0(2);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/hammet_palace/HammetPalace_MapInit.s");
extern int __GetFlag(int);
extern void *__MapActor_GetActor(int);
extern void __MapActor_SetPos(int, int, int);
extern void __CopyMapTiles(int, int, int, int, int, int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Func_800fe9c(void);
extern void __WaitFrames(int);
extern void OvlFunc_938_2009494(void);
extern void OvlFunc_938_2008360(void);

void OvlFunc_938_2008264(void)
{
    unsigned char *actor;
    unsigned char *gs;
    int f1 = 0x1000;
    int f2 = 0xd000;
    int x = 0x38a0000;
    int z = 0x1a60000;
    int t1;
    int t2;

    do { } while (z == 0);

    __Func_80118c0(1);
    __Func_80118c0(2);

    gs = (unsigned char *)&gState;
    gs += (0xe1 << 1);
    switch (*(short *)gs) {
    case 9:
        if (__GetFlag(0x941) != 0) {
            actor = (unsigned char *)__MapActor_GetActor(8);
            *(unsigned short *)(actor + 6) = f1;
            if (__GetFlag(0x914) == 0) {
                OvlFunc_938_2009494();
            }
        } else {
            __MapActor_SetPos(9, 0, 0);
            if (__GetFlag(0x321) != 0) {
                __MapActor_SetPos(8, x, z);
                actor = (unsigned char *)__MapActor_GetActor(8);
                *(unsigned short *)(actor + 6) = f2;
            }
        }
        break;
    case 10:
    case 11:
        if (__GetFlag(0x915) != 0) {
            t1 = 4;
            t2 = 3;
            __CopyMapTiles(0x3a, 0x46, 0x36, 0x46, t1, t2);
            t1 = 0x37;
            t2 = 8;
            __Func_8010704(0x37, 9, 2, 1, t1, t2);
            __Func_800fe9c();
            __WaitFrames(1);
        }
        break;
    case 20:
        __MapActor_SetPos(9, 0, 0);
        if (__GetFlag(0x109) == 0) {
            OvlFunc_938_2008360();
        }
        break;
    }
}
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2008360.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_200940c.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2009450.s");
INCLUDE_ASM("asm/maps/hammet_palace/OvlFunc_938_2009494.s");
INCLUDE_ASM("asm/maps/hammet_palace/hammet_palace_data.s");

INCLUDE_ASM("asm/maps/hammet_palace/imports.s");
