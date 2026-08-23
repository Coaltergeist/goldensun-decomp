/* rom_7a7298 (overlay file 921): consolidated TU — imil map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/imil/exports.s");

extern void OvlFunc_921_20096ac();

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008030.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20080d8.s");
INCLUDE_ASM("asm/maps/imil/Imil_GetEntrances.s");

unsigned int Imil_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200a990[];

void *Imil_GetExits(void) {
    return (void *)gOvl_0200a990;
}

INCLUDE_ASM("asm/maps/imil/Imil_GetActors.s");

extern void OvlFunc_921_2009fa4(void);

void OvlFunc_921_20081e0(void) {
    OvlFunc_921_2009fa4();
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_33[];
extern unsigned char Lm921_2db8[] __asm__(".Lm921_2db8");
extern unsigned char Lm921_2c80[] __asm__(".Lm921_2c80");

int Imil_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_33) return (int)Lm921_2db8;
    return (int)Lm921_2c80;
}

extern void __CutsceneStart(void);
extern int __GetFlag(int);
extern void __MessageID(int);
extern void __ActorMessage(int, int);
extern void __CutsceneEnd(void);

void OvlFunc_921_200821c(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1570);
    } else {
        __MessageID(0x1529);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

void OvlFunc_921_2008254(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1571);
    } else {
        __MessageID(0x152f);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

void OvlFunc_921_200828c(void) {
    __CutsceneStart();
    __MapActor_Face(9, 0, 0xa);
    __MessageID(0x152a);
    __Func_8093054(9, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20082b8.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008384.s");

void OvlFunc_921_2008510(void) {
    __CutsceneStart();
    __MessageID(0x153f);
    __Func_8093054(0xc, 0);
    __CutsceneEnd();
}

void OvlFunc_921_2008530(void) {
    __CutsceneStart();
    __MessageID(0x154d);
    __Func_8093054(0x12, 0);
    __CutsceneEnd();
}

extern int __Func_8093054(int, int);
extern int __SetFlag(int);

void OvlFunc_921_2008550(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1574);
        __ActorMessage(0x14, 0);
    } else {
        __MessageID(0x1557);
        __Func_8093054(0x14, 0);
        __SetFlag(0x82a);
        __SetFlag(0x82c);
    }
    __CutsceneEnd();
}


void OvlFunc_921_20085a4(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1575);
    } else {
        __MessageID(0x155b);
    }
    __ActorMessage(0x14, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20085dc.s");


void OvlFunc_921_2008608(void) {
    __CutsceneStart();
    if (__GetFlag(0x82b)) {
        __MessageID(0x156f);
    } else if (__GetFlag(0x82c)) {
        __MessageID(0x153b);
    } else {
        __MessageID(0x1533);
    }
    __ActorMessage(8, 0);
    __CutsceneEnd();
}

extern void OvlFunc_921_2008384(void);

void OvlFunc_921_200865c(void) {
    OvlFunc_921_2008384();
}

void OvlFunc_921_2008668(void)
{
  int new_var;
  __CutsceneStart();
  __MessageID(0x156e);
 do { __ActorMessage(new_var = 10, 0); } while (0);
  __CutsceneEnd();
}


void OvlFunc_921_2008688(void) {
    __CutsceneStart();
    if (__GetFlag(3)) {
        __MessageID(0x1573);
    } else {
        __MessageID(0x155a);
    }
    __ActorMessage(0x13, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20086c0.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20087a4.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_200888c.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008974.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008a3c.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008abc.s");
INCLUDE_ASM("asm/maps/imil/Imil_MapInit.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2008f90.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_200954c.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20095b4.s");

extern void __MapActor_SetBehavior(int, void *);
extern unsigned char gScript_921__0200a5ec[];

void OvlFunc_921_20096ac(void) {
    __MapActor_SetBehavior(9, gScript_921__0200a5ec);
    __ActorMessage(9, 0);
}

extern unsigned char iwram_3001f30[];

void OvlFunc_921_20096c8(void)
{
  unsigned int *p;
  unsigned long new_var2;
  unsigned long long new_var;
  new_var = 0x5d;
 do { new_var = (unsigned long) new_var; } while (0);
  new_var2 = new_var;
  __Func_8096fb0(new_var2, 1);
  p = *((unsigned int **) iwram_3001f30);
  __Func_80970f8(3, 9);
  *((void (**)(void)) (((char *) p) + 0x24)) = OvlFunc_921_20096ac;
  __Func_809728c();
  __FieldMove(1);
  __Func_8097174();
  __Func_8097194();
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2009704.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_200974c.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2009794.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20098c4.s");

extern void __Func_8092b08(int a, int b);
extern void __Func_8010704(int a, int b, int c, int d, int e, int f);

void OvlFunc_921_2009960(void)
{
  int new_var;
  int new_var2;
  __SetFlag(0x203);
  __Func_8092b08(11, 3);
  new_var2 = 15;
  new_var = 7;
  __Func_8010704(new_var2, 6, 1, 1, new_var2, new_var);
}

void OvlFunc_921_2009990(void) {
    unsigned int r0;
    unsigned int v;

    __CutsceneStart();
    r0 = __MapActor_GetActor(0);
    v = 0xc0 << 8;
    *(unsigned short *)((char *)r0 + 6) = v;
    __PlaySound(0x7b);
    __MapTransitionOut();
    __WaitMapTransition();
    __Func_8091e9c(8);
}

INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20099bc.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20099e8.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2009f24.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_2009fa4.s");

INCLUDE_ASM("asm/maps/imil/imports.s");
