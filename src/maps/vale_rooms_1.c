/* rom_786f0c (overlay file 886): consolidated TU — vale_rooms_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vale_rooms_1/exports.s");

INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_2008030.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_2008088.s");

extern unsigned char gOvl_02009478[];

unsigned int ValeRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_02009478;
}

unsigned int ValeRooms1_GetSpecialExits(void) {
    return 0;
}

extern unsigned char L1590[] __asm__(".Lm886_1590");
extern unsigned char L1568[] __asm__(".Lm886_1568");

unsigned int *ValeRooms1_GetExits(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)L1590;
    return (unsigned int *)L1568;
}

extern unsigned char L18b8[] __asm__(".Lm886_18b8");
extern unsigned char L1738[] __asm__(".Lm886_1738");
extern unsigned char L15b8[] __asm__(".Lm886_15b8");

unsigned int ValeRooms1_GetActors(void) {
    unsigned int r5;
    if (__GetFlag(0x87a)) {
        r5 = (unsigned int)L18b8;
    } else if (__GetFlag(0x815)) {
        r5 = (unsigned int)L1738;
    } else {
        r5 = (unsigned int)L15b8;
    }
    __Func_808b868(r5);
    return r5;
}

extern unsigned char L1ffc[] __asm__(".Lm886_1ffc");
extern unsigned char L1da4[] __asm__(".Lm886_1da4");
extern unsigned int gOvl_02009ac8;
extern unsigned int ActorCmd_ARRAY_918__02009c00;

unsigned int *ValeRooms1_GetEvents(void)
{
    if (__GetFlag(0x834))
        return (unsigned int *)&gOvl_02009ac8;
    if (__GetFlag(0x87a))
        return (unsigned int *)L1ffc;
    if (__GetFlag(0x815))
        return (unsigned int *)L1da4;
    return (unsigned int *)&ActorCmd_ARRAY_918__02009c00;
}

void OvlFunc_886_2008190(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 6;
  __MessageID(0xf6d);
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0, 0xf, new_var2);
  __Func_8093054(0xf, 0);
  __CutsceneEnd();
}

void OvlFunc_886_20081bc(void)
{
  unsigned long new_var2;
  unsigned long long new_var;
  __CutsceneStart();
  new_var = 6;
  __MessageID(0xf73);
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __MapActor_TurnToFaceActor(0, 0x13, new_var2);
  __Func_8093054(0x13, 0);
  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_20081e8.s");

void OvlFunc_886_2008258(void) {
    __CutsceneStart();
    __MessageID(0x11be);
    __Func_8093054(0x10, 0);
    __CutsceneEnd();
}

void OvlFunc_886_2008278(void) {
    __CutsceneStart();
    __MessageID(0x1c3d);
    __Func_8093054(0xa, 0);
    __CutsceneEnd();
}

extern int _MSG_1c40;

void OvlFunc_886_2008298(void)
{
  int new_var;
 do { __CutsceneStart(); new_var = (int) (&_MSG_1c40); __MessageID(new_var); } while (0);
  __ActorMessage(0x800b, 0);
  __CutsceneEnd();
}

extern int __GetFlag(int);
extern void __Func_8095214(void);
extern void __PlaySound(int);
extern void __MapTransitionOut(void);
extern void __WaitMapTransition(void);
extern void __Func_8091e9c(int);
extern unsigned int iwram_3001ebc;

void OvlFunc_886_20082bc(int arg0)
{
    unsigned char *base;

    if (__GetFlag(0x834))
        __Func_8095214();
    __PlaySound(0x7b);
    base = (unsigned char *)iwram_3001ebc;
    *(int *)(base + 0x1c0) = 0x209;
    *(int *)(base + 0x1c8) = 0x10;
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(arg0);
}


void OvlFunc_886_2008308(void) {
    OvlFunc_886_20082bc(1);
}


void OvlFunc_886_2008314(void) {
    OvlFunc_886_20082bc(2);
}


void OvlFunc_886_2008320(void) {
    OvlFunc_886_20082bc(3);
}


void OvlFunc_886_200832c(void) {
    OvlFunc_886_20082bc(4);
}


void OvlFunc_886_2008338(void) {
    OvlFunc_886_20082bc(5);
}


void OvlFunc_886_2008344(void) {
    OvlFunc_886_20082bc(6);
}


void OvlFunc_886_2008350(void) {
    OvlFunc_886_20082bc(7);
}


void OvlFunc_886_200835c(void) {
    OvlFunc_886_20082bc(8);
}

INCLUDE_ASM("asm/maps/vale_rooms_1/ValeRooms1_MapInit.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_20084dc.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_200855c.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_20085d4.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_2008658.s");
INCLUDE_ASM("asm/maps/vale_rooms_1/OvlFunc_886_20090c0.s");

INCLUDE_ASM("asm/maps/vale_rooms_1/imports.s");
