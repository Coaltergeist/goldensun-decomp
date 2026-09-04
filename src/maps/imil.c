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

void __MapActor_Surprise(int, int);
void __CutsceneWait(int);
void __MapActor_SetAnim(int, int);
void __MapActor_Face(int, int, int);
void __Func_8092adc(int, int, int);
void OvlFunc_921_20082b8(void) {
    int a = 0x3000;
    do { } while (a == 0);

    __CutsceneStart();
    if (__GetFlag(0x881)) {
        __MessageID(0x163c);
        __ActorMessage(10, 0);
        __MapActor_Surprise(10, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(10, 1);
        __CutsceneWait(0x14);
        __MapActor_Face(10, 0, 0x14);
        __Func_8093054(10, 0);
        __Func_8092adc(10, a, 10);
        __MapActor_SetAnim(10, 9);
    } else {
        __MessageID(0x152d);
        __ActorMessage(10, 0);
        __MapActor_Surprise(10, 0x102);
        __CutsceneWait(0x28);
        __MapActor_SetAnim(10, 1);
        __CutsceneWait(0x14);
        __MapActor_Face(10, 0, 0x14);
        __ActorMessage(10, 0);
        __Func_8092adc(10, a, 10);
        __MapActor_SetAnim(10, 9);
    }
    __CutsceneEnd();
}
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

extern unsigned char iwram_3001ebc[];
extern short Lm921_31a8[] __asm__(".Lm921_31a8");
extern void *Lm921_3190[] __asm__(".Lm921_3190");

void OvlFunc_921_20086c0(void)
{
    /* Block-scoped decls: __MapActor_GetActor is declared file-scope below as
       void* (:207); the unsigned char* view here (needed for the direct index)
       stays local and out of the sibling C fns. */
    extern void __CutsceneStart(void);
    extern unsigned char *__MapActor_GetActor(int);
    extern void __PlaySound(int);
    extern void __Func_8010560(void *, int, int);
    extern void __MapActor_SetSpeed(int, int, int);
    extern void __MapActor_SetAnim(int, int);
    extern void __Func_8092b08(int, int);
    extern void __MapActor_TravelBy(int, int, int);
    extern void __Func_8092208(int, int, int);
    extern void __CutsceneWait(int);
    extern void __Func_8091e9c(int);
    extern void __CutsceneEnd(void);

    unsigned char *map;
    int iVar5;
    unsigned int uVar4;
    unsigned char *actor;
    int spd1 = 0x8000;
    int spd2 = 0x4000;
    int spd3 = 0x3333;
    int spd4 = 0x1999;
    int neg8 = -8;
    int neg16 = -0x10;
    int val;
    int arg1, arg2;

    do { } while (spd1 == 0);

    map = *(unsigned char **)iwram_3001ebc;
    __CutsceneStart();

    for (uVar4 = 8; uVar4 <= 0x41; uVar4++) {
        actor = __MapActor_GetActor(uVar4);
        if (actor != 0) {
            actor[0x55] = 0;
        }
    }

    val = *(unsigned short *)(map + 0x16c);
    iVar5 = (short)(val - 0x32);

    if (iVar5 == 6) {
        __PlaySound(0xbc);
    } else {
        __PlaySound(0x9e);
    }

    arg1 = Lm921_31a8[(iVar5 - 1) * 2];
    arg2 = Lm921_31a8[(iVar5 - 1) * 2 + 1];
    __Func_8010560(Lm921_3190[iVar5 - 1], arg1, arg2);
    __MapActor_SetSpeed(0, spd1, spd2);

    *(int *)(*(unsigned char **)iwram_3001ebc + 0x1c0) = 0x100;

    if (iVar5 == 6) {
        __MapActor_SetSpeed(0, spd3, spd4);
        __MapActor_SetAnim(0, 2);
        __Func_8092b08(0, 3);
        __MapActor_TravelBy(0, 0, neg8);
    } else {
        (__MapActor_GetActor(0))[0x55] = 0;
        __Func_8092208(0, 3, neg16);
    }

    __CutsceneWait(0x10);
    __Func_8091e9c(iVar5);
    __CutsceneEnd();
}
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_20087a4.s");
INCLUDE_ASM("asm/maps/imil/OvlFunc_921_200888c.s");
extern void *__MapActor_GetActor(int);
void OvlFunc_921_2008974(void)
{
    int w1 = 0x80 << 7;
    int w2 = 0xa0 << 7;
    int id1 = 0xf;
    int id2 = 0xe;
    short facing;

    do { } while (w1 == 0);

    facing = *(short *)((char *)__MapActor_GetActor(0) + 6);
    if (__GetFlag(0x881) != 0) {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __Func_80b0278(0xc, 0xf);
        } else {
            __CutsceneStart();
            __MapActor_Face(id1, 0, 0);
            __MessageID(0x164f);
            __ActorMessage(id1, 0);
            __Func_8092adc(id1, w1, 0);
            __CutsceneEnd();
        }
    } else {
        if ((unsigned int)((facing << 16) + 0x5fff0000) <= 0x3ffe0000) {
            __CutsceneStart();
            __MessageID(0x1546);
            __ActorMessage(id2, 0);
            __Func_80b0278(0xc, 0xe);
            __CutsceneEnd();
        } else {
            __MapActor_Face(id2, 0, 0xa);
            __MessageID(0x1547);
            __ActorMessage(id2, 0);
            __Func_8092adc(id2, w2, 0xa);
        }
    }
}
extern void __Func_80b3284(int, int);
void OvlFunc_921_2008a3c(void)
{
    int w = 0xc0 << 6;
    unsigned short v;

    do { } while (w == 0);

    v = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6) + 0x5fff;
    if (v <= 0x3ffe) {
        __Func_80b3284(4, 0x10);
    } else {
        __CutsceneStart();
        __MapActor_Face(0x10, 0, 10);
        if (__GetFlag(0x881) != 0) {
            __MessageID(0x1653);
            __Func_8093054(0x10, 0);
        } else {
            __MessageID(0x154b);
            __ActorMessage(0x10, 0);
        }
        __Func_8092adc(0x10, w, 10);
        __CutsceneEnd();
    }
}
void OvlFunc_921_2008abc(void)
{
    int a = 0x3000;
    int flag = 0x82d;
    unsigned char *actor;

    do { } while (a == 0);

    actor = (unsigned char *)__MapActor_GetActor(0);
    if ((unsigned short)(*(unsigned short *)(actor + 6) + 0x5fff) <= 0x3ffe) {
        __CutsceneStart();
        if (!__GetFlag(flag)) {
            __MessageID(0x1553);
            __ActorMessage(0x13, 0);
            __SetFlag(flag);
        }
        __CutsceneEnd();
        __UI_Sanctum(0x13);
    } else {
        __CutsceneStart();
        if (__GetFlag(0x881)) {
            __MessageID(0x1671);
            __ActorMessage(0x13, 0);
        } else if (__GetFlag(3)) {
            __MessageID(0x1572);
            __ActorMessage(0x13, 0);
        } else {
            __MessageID(0x1554);
            __Func_8093054(0x13, 0);
            __Func_8092adc(0x13, a, 10);
        }
        __CutsceneEnd();
    }
}
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
extern unsigned char iwram_3001e70[];

void OvlFunc_921_20098c4(void)
{
    int flag1 = 0x80 << 2;
    int flag2 = 0x201;
    int *actor;
    int r4;
    int r2;
    int r1;
    int f;

    do { } while (flag1 == 0);

    actor = (int *)__MapActor_GetActor(0);
    r4 = actor[2];
    r2 = r4 >> 19;
    if ((unsigned int)(r2 - 0x18) <= 7 ||
        ((r1 = actor[4]), (unsigned int)((r1 >> 19) - 0x24) <= 9 && (unsigned int)(r2 - 0x16) <= 9)) {
        if (__GetFlag(flag1) != 0)
            return;
        (*(unsigned char **)iwram_3001e70)[0x17] = 0;
        __SetFlag(flag1);
        __ClearFlag(flag2);
    } else if (r4 > (0xe8 << 16) && actor[3] > (0xf0 << 13) && r1 > (0xd4 << 16)) {
        f = flag1;
        (*(unsigned char **)iwram_3001e70)[0x17] = 0;
        __SetFlag(f);
        __ClearFlag(flag2);
    } else {
        if (__GetFlag(flag2) != 0)
            return;
        f = flag2;
        (*(unsigned char **)iwram_3001e70)[0x17] = 1;
        __SetFlag(f);
        __ClearFlag(flag1);
    }
}

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
