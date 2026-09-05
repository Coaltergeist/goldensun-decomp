/* rom_797740 (overlay file 900): consolidated TU — jail map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/jail/exports.s");

extern unsigned char gOvl_020082d0[];

unsigned int Jail_GetEntrances(void) {
    return (unsigned int)gOvl_020082d0;
}

unsigned int Jail_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008348[];

void *Jail_GetExits(void) {
    return (void *)gOvl_02008348;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char L3bc[] __asm__(".Lm900_3bc");
extern unsigned char gOvl_0200835c[];

unsigned int Jail_GetActors(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 10) {
        return (unsigned int)L3bc;
    }
    return (unsigned int)gOvl_0200835c;
}

typedef struct { unsigned char _bytes[24]; } MapEntrance;
extern MapEntrance MapEntrance_ARRAY_937__020084a0[2];
extern unsigned char L3ec[] __asm__(".Lm900_3ec");

unsigned int Jail_GetEvents(void) {
    unsigned int r3;
    unsigned int r2;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    if (*(short *)((char *)r3 + r2) == 10) {
        return (unsigned int)MapEntrance_ARRAY_937__020084a0;
    }
    return (unsigned int)L3ec;
}

INCLUDE_ASM("asm/maps/jail/OvlFunc_900_2008094.s");

void OvlFunc_900_2008110(void)
{
  int new_var;
  new_var = 9;
  __CutsceneStart();
  __Func_80925cc(new_var, 2);
  __CutsceneWait(0x14);
  __MessageID(0x1388);
 do { __ActorMessage(9, 0); __CutsceneEnd(); } while (0);
}

void OvlFunc_900_2008140(void)
{
  int new_var;
 do { __CutsceneStart(); __MapActor_DoAnim(0xa, 4); __CutsceneWait(0x14); __MessageID(0x1389); } while (0);
  __ActorMessage(new_var = 0xa, 0);
  __CutsceneEnd();
}

void OvlFunc_900_2008170(void)
{
  int r1;
 do { __CutsceneStart(); __MessageID(0x138e); r1 = 0; } while (0);
  __ActorMessage(8, r1);
  __CutsceneEnd();
}

void OvlFunc_900_2008190(void)
{
  int a;
 do { __CutsceneStart(); __MessageID(0x138c); } while (0);
  a = 9;
  __ActorMessage(a, 0);
  __CutsceneEnd();
}

void OvlFunc_900_20081b0(void)
{
  int a;
  __CutsceneStart();
 do { __MessageID(0x138d); a = 0xa; } while (0);
  __ActorMessage(a, 0);
  __CutsceneEnd();
}

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_900_20081d0(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(1);
}

INCLUDE_ASM("asm/maps/jail/Jail_MapInit.s");
INCLUDE_ASM("asm/maps/jail/jail_data.s");

INCLUDE_ASM("asm/maps/jail/imports.s");
