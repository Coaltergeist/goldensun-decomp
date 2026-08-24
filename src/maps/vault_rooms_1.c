// fakematch
/* rom_794ac0 (overlay file 899): consolidated TU — vault_rooms_1 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vault_rooms_1/exports.s");

extern void OvlFunc_899_200c624();
extern void OvlFunc_899_20083bc();
extern void OvlFunc_899_2008354();
extern void OvlFunc_899_200c5f4();
extern void OvlFunc_899_200c63c();

extern unsigned char gOvl_0200d8f8[];

unsigned int VaultRooms1_GetEntrances(void) {
    return (unsigned int)gOvl_0200d8f8;
}
extern unsigned char gOvl_0200da60[];

unsigned int VaultRooms1_GetSpecialExits(void) {
    return (unsigned int)gOvl_0200da60;
}
extern unsigned char gOvl_0200da80[];

unsigned int VaultRooms1_GetExits(void) {
    return (unsigned int)gOvl_0200da80;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char Lm899_5cc8[] __asm__(".Lm899_5cc8");
extern unsigned char Lm899_5ab8[] __asm__(".Lm899_5ab8");

unsigned char *VaultRooms1_GetActors(void)
{
    unsigned char *r5;
    GlobalState *p;
    int f1;

    p = &gState;
    f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 15:
    case 16:
    case 17:
        r5 = Lm899_5cc8;
        break;
    default:
        r5 = Lm899_5ab8;
        break;
    }
    __Func_808b868(r5);
    return r5;
}
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008080.s");

void OvlFunc_899_20080fc(void)
{
  int *p;
  int new_var;
  int new_var2;
  __CutsceneStart();
  p = (int *) __MapActor_GetActor(0x1a);
  if ((((*((int *) (((char *) p) + 8))) >> 1) >> 19) == 0x2a)
  {
    new_var2 = 0x29;
    new_var = 0x18;
    __Func_8010704(0x65, new_var, 3, 4, new_var2, new_var);
    __SetFlag(0x859);
  }
  __CutsceneEnd();
}

void OvlFunc_899_200813c(void)
{
    unsigned char *p;
    int v5;
    extern int _MSG_1280;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID((int)&_MSG_1280);
        } else {
            __MessageID(0x1370);
        }
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_200819c(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(5, 0x14);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1282);
        } else {
            __MessageID(0x1372);
        }
        __ActorMessage(0x14, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_20081fc(void)
{
    unsigned char *p;
    int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b3284(1, 0x17);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x128d);
        } else {
            __MessageID(0x137b);
        }
        __ActorMessage(0x17, 0);
    }
    __CutsceneEnd();
}

extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __MapActor_DoAnim(int a, int b);
extern void __CutsceneWait(int a);
extern void __MessageID(int a);
extern void __ActorMessage(int a, int b);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __CutsceneEnd(void);

void OvlFunc_899_200825c(void) {
    __CutsceneStart();
    if (__Func_8078500() == 0) {
        __MapActor_DoAnim(0x12, 4);
        __CutsceneWait(0x14);
        __MessageID(0x1384);
        __ActorMessage(0x12, 0);
    } else {
        __Func_808f1c0(0xe7, 3);
        __Func_8091a58(0xe7, 0);
    }
    __CutsceneEnd();
}

void OvlFunc_899_20082a4(void)
{
  int a;
  __ResetPlayerSpeed();
  __MessageID(0x12bb);
 do { a = 0; } while (0);
  __ActorMessage(1, a);
}

extern void __Func_801776c();

void OvlFunc_899_20082c0(void) {
    __CutsceneStart();
    __Func_801776c(0x92b, 1);
    __Func_801776c(0x94b, 1);
    __CutsceneEnd();
}


void OvlFunc_899_20082e8(void) {
    __CutsceneStart();
    __Func_801776c(0x929, 1);
    __Func_801776c(0x949, 1);
    __CutsceneEnd();
}

extern unsigned char Lm899_61fc[] __asm__(".Lm899_61fc");
extern unsigned char Lm899_6250[] __asm__(".Lm899_6250");
extern unsigned char Lm899_5e30[] __asm__(".Lm899_5e30");

int VaultRooms1_GetEvents(void)
{
    GlobalState *p = &gState;
    int f1 = *(short *)((char *)p + 0x1c2);
    switch (f1) {
    case 0xf: case 0x10: case 0x11:
        return (int)Lm899_61fc;
    default:
        if (__GetFlag(0x855)) return (int)Lm899_6250;
        return (int)Lm899_5e30;
    }
}


void OvlFunc_899_2008354(unsigned int arg0)
{
	unsigned int r5;

	r5 = arg0;
	__MapActor_SetAnim(r5, 1);
	OvlFunc_899_200c624(r5, 0, 2);
	__ActorMessage(r5, 0);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008378.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_899_20083bc(unsigned int arg0) {
    unsigned char *r5 = (unsigned char *)arg0;

    OvlFunc_899_200c624((unsigned int)r5, 0, 2);
    __ShowActorMessage_NoWait(r5, 0);
    if (__Func_8091c7c(0, 0)) {
        unsigned short *p;
        p = (unsigned short *)(*(unsigned char **)iwram_3001ebc + (0xec << 1));
        *p = *p + 1;
    }
    __ActorMessage(r5, 0);
}


void OvlFunc_899_2008400(void) {
    __CutsceneStart();
    __MessageID(0x1247);
    __MapActor_SetAnim(0xb, 1);
    OvlFunc_899_20083bc(0xb);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008428.s");

extern int *__MapActor_GetActor(int a);
extern void __Func_80b0278(int a, int b);
extern int __GetFlag(int flag);

void OvlFunc_899_2008454(void) {
    unsigned char *p;
    unsigned int v5;

    p = __MapActor_GetActor(0);
    v5 = *(unsigned short *)(p + 6);
    __CutsceneStart();
    if ((v5 + 0xffff5fff) <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        if (!__GetFlag(0x855)) {
            __MessageID(0x1284);
            OvlFunc_899_20083bc(0x15);
        } else {
            __MessageID(0x1374);
            __ActorMessage(0x15, 0);
        }
    }
    __CutsceneEnd();
}


void OvlFunc_899_20084bc(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1243);
    } else {
        __MessageID(0x1353);
    }
    OvlFunc_899_2008354(9);
    __CutsceneEnd();
}


void OvlFunc_899_20084f4(void) {
    __CutsceneStart();
    if (__GetFlag(0x855)) {
        __MessageID(0x135c);
    } else {
        __MessageID(0x124c);
    }
    OvlFunc_899_2008354(0xc);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200852c.s");


void OvlFunc_899_200859c(void) {
    __CutsceneStart();
    __MessageID(0x128e);
    OvlFunc_899_2008354(0x12);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_20085bc.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008690.s");


void OvlFunc_899_20087cc(void) {
    __CutsceneStart();
    __MessageID(0x1356);
    OvlFunc_899_20083bc(0xa);
    __CutsceneEnd();
}


void OvlFunc_899_20087ec(void) {
    __CutsceneStart();
    __MessageID(0x1359);
    OvlFunc_899_2008354(0xb);
    __CutsceneEnd();
}


void OvlFunc_899_200880c(void) {
    __CutsceneStart();
    __MessageID(0x1368);
    OvlFunc_899_20083bc(0xe);
    __CutsceneEnd();
}

extern int bytes(int);

extern void __SetFlag(int);
extern void __Func_8092adc(int, int, int);
extern void __Func_80925cc(int, int);
extern void __ShowActorMessage_NoWait(int, int);
extern int __Func_8091c7c(int, int);
extern unsigned char *iwram_3001ebc__a1 __asm__("iwram_3001ebc");
extern int _MSG_1360;

void OvlFunc_899_200882c(void) {
    unsigned char *m;
    unsigned char *b;
    int x;

    __CutsceneStart();
    if (!({ x = 0x857; __asm__("" : "+r"(x)); __GetFlag(x); })) {
        m = (unsigned char *)&_MSG_1360;
        __MessageID((int)m);
        OvlFunc_899_200c5f4(0x10, 0x14);
        OvlFunc_899_200c63c(0x10, 3, 0x14);
        OvlFunc_899_200c5f4(0x10, 0x1e);
        __Func_8092adc(0x10, 0, 0);
        __CutsceneWait(0x1e);
        __Func_80925cc(0x10, 2);
        __CutsceneWait(0x1e);
        OvlFunc_899_200c624(0, 0x10, 0x14);
        {
            unsigned int p2 = 0x14;
            OvlFunc_899_200c63c(0x10, 3, p2);
        }
        b = iwram_3001ebc__a1;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
        if (__Func_8078500() == 0) {
            __MessageID((int)(m + 3));
            OvlFunc_899_200c5f4(0x10, 0x14);
            __CutsceneEnd();
            return;
        }
        __SetFlag(0x857);
        __Func_8091a58(0xbd, 0);
    }
    __MessageID(0x1364);
    __ShowActorMessage_NoWait(0x10, 0);
    __CutsceneWait(0x14);
    if (__Func_8091c7c(0, 0) != 0) {
        b = iwram_3001ebc__a1;
        b += 0xec << 1;
        *(unsigned short *)b = *(unsigned short *)b + 1;
    }
    __ActorMessage(0x10, 0);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200891c.s");

extern void OvlFunc_899_2008378(int n);

void OvlFunc_899_2008a14(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1245);
    } else {
        __MessageID(0x1355);
    }
    OvlFunc_899_2008378(9);
    __CutsceneEnd();
}

void OvlFunc_899_2008a4c(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124b);
    } else {
        __MessageID(0x135b);
    }
    OvlFunc_899_2008378(0xb);
    __CutsceneEnd();
}

void OvlFunc_899_2008a84(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x124e);
    } else {
        __MessageID(0x135e);
    }
    OvlFunc_899_2008378(0xc);
    __CutsceneEnd();
}

void OvlFunc_899_2008abc(void) {
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x127c);
    } else {
        __MessageID(0x136c);
    }
    OvlFunc_899_2008378(0x10);
    __CutsceneEnd();
}


void OvlFunc_899_2008af4(void)
{
    __CutsceneStart();
    if (__GetFlag(0x855) == 0) {
        __MessageID(0x1294);
    } else if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    OvlFunc_899_2008378(0x12);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008b48.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2008de4.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009348.s");

extern void __PlaySound(int);
extern void __Func_8091e9c(int);

void OvlFunc_899_2009990(void) {
    __PlaySound(0x7b);
    __Func_8091e9c(0xb);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_20099a4.s");

// fakematch

void OvlFunc_899_20099e4(void)
{
    unsigned int r3;
    unsigned int w1, z1;
    unsigned int w2, z2;
    unsigned short t3;

    w1 = 0x80;
    z1 = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w1 <<= 8;
        __asm__ volatile ("" : "+r" (w1));
        z1 <<= 7;
        __MapActor_SetSpeed(rq, w1, z1);
    }

    w2 = 0xba;
    z2 = 0xcc;
    {
        register unsigned int rq __asm__("r0") = 0;
        __asm__ volatile ("" : : "r" (rq));
        w2 <<= 2;
        __asm__ volatile ("" : "+r" (w2));
        z2 <<= 1;
        __MapActor_TravelToAnimWait(rq, w2, z2);
    }

    if (__GetFlag(0x854) == 0) {
        __CutsceneStart();
        __MessageID(0x12c3);
        t3 = 8;
        do { t3 = (unsigned short) t3; } while (0);
        __ActorMessage(t3, 0);
        __CutsceneEnd();
    }
    r3 = *(unsigned int *)iwram_3001ebc;
    *(unsigned int *)(r3 + (0xe4 << 1)) = 0x10;
    __PlaySound(0x7b);
    __Func_8091e9c(0xe);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009a4c.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009ba0.s");

extern void OvlFunc_899_200cb2c(void);

void OvlFunc_899_2009e64(void) {
    __SetFlag(0x107);
    __SetFlag(0x94 << 2);
    OvlFunc_899_200cb2c();
}

extern void __MapActor_Surprise(int, int);
extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_SetBehavior(int, int);
extern void __MapActor_WaitScript(int);
extern void __Func_8010704(int, int, int, int, int, int);
extern unsigned char gScript_899__0200d830[];
extern unsigned char gScript_899__0200d560[];
extern int _MSG_12a0;

void OvlFunc_899_2009e80(void) {
    int a;
    unsigned int w;
    unsigned int z;
    unsigned short v;
    int n6;
    __CutsceneWait(0x1e);
    __Func_80925cc(0x18, 1);
    __CutsceneWait(0x14);
    __MessageID((int) (&_MSG_12a0));
    OvlFunc_899_200c5f4(0x18, 0x14);
    z = 0x14;
    __asm__ volatile ("" : : "r" (z));
    __Func_8092adc(0x19, 0, z);
    w = 0x81;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 1;
        __MapActor_Surprise(rq, w);
    }
    __Func_80925cc(0x19, 2);
    OvlFunc_899_200c5f4(0x19, 0x14);
    __MapActor_DoAnim(0x18, 4);
    __CutsceneWait(0x14);
    OvlFunc_899_200c5f4(0x18, 0x14);
    w = 0x80;
    z = 0x80;
    {
        register unsigned int rq __asm__("r0") = 0x18;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 11;
        __asm__ volatile ("" : "+r"(w));
        z <<= 10;
        __MapActor_SetSpeed(rq, w, z);
    }
    w = 0xe0;
    __asm__ volatile ("" : "+r"(w));
    z = 0xe0;
    z <<= 9;
    {
        register unsigned int rq __asm__("r0") = 0x19;
        __asm__ volatile ("" : : "r" (rq));
        w <<= 10;
        __MapActor_SetSpeed(rq, w, z);
    }
    __MapActor_SetBehavior(0x19, (int) gScript_899__0200d830);
    __MapActor_SetBehavior(0x18, (int) gScript_899__0200d560);
    __MapActor_WaitScript(0x18);
    a = __MapActor_GetActor(0x18);
    v = 1;
    a += 0x64;
    *(unsigned short *)a = v;
    a = __MapActor_GetActor(0x19);
    v = 3;
    a += 0x64;
    *(unsigned short *)a = v;
    n6 = 0x2c;
    __Func_8010704(0xe, 0x30, 4, 1, 0xe, n6);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_2009f50.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200a1c8.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200a564.s");


void OvlFunc_899_200a6e4(unsigned int arg0, int arg1, unsigned int arg2, unsigned int arg3) {
    short *p;

    p = (short *)((char *)__MapActor_GetActor(arg0) + 0x64);
    if (*p == arg1) {
        __MapActor_SetBehavior(arg0, arg3);
        *p = arg2;
    }
}

extern void __ClearFlag(int);

void OvlFunc_899_200a71c(void)
{
    int r5;
    int r3;

    r5 = __MapActor_GetActor(0)[2];
    r3 = __MapActor_GetActor(0)[4];
    r5 >>= 20;
    r3 >>= 20;
    r5 -= 0x22;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __SetFlag(0x94 << 2);
    else
        __ClearFlag(0x94 << 2);
}

INCLUDE_ASM("asm/maps/vault_rooms_1/VaultRooms1_MapInit.s");

void OvlFunc_899_200aba0(void)
{
    int r6, r5, r8;
    int r3;
    r6 = __MapActor_GetActor(0);
    r5 = __MapActor_GetActor(0x18);
    r8 = __MapActor_GetActor(0x19);
    r3 = *(int *)((char *)r5 + 0x10);
    *(short *)((char *)r5 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r5 + 8));
    __asm__ volatile ("" ::: "memory");
    r3 = *(int *)((char *)r8 + 0x10);
    *(short *)((char *)r8 + 6) = __atan2(*(int *)((char *)r6 + 0x10) - r3, *(int *)((char *)r6 + 8) - *(int *)((char *)r8 + 8));
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200abf0.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200adb4.s");

extern unsigned int __GetUnit(unsigned int);

unsigned int OvlFunc_899_200af84(void) {
    unsigned int result;
    result = __GetUnit(2);
    result += 0x8c * 2;
    result = *(unsigned char *)result;
    return result;
}

unsigned int OvlFunc_899_200af98(void) {
    unsigned char *p;
    __Func_80bf65c();
    p = __GetUnit(2);
    if (*(unsigned int *)(p + 0xf8) & 1) {
        __Func_807a498(2, 0, 0, 0);
        __PlaySound(0x7e);
        __CalcStats(0);
        __CalcStats(2);
    }
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200afd4.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200b6f8.s");


void OvlFunc_899_200c5cc(void)
{
  unsigned long long new_var;
  unsigned int val = 0xe0;
  unsigned int addr = *((unsigned int *) iwram_3001ebc);
  val <<= 1;
  addr += val;
  new_var = addr;
  val += 0x49;
  *((unsigned int *) new_var) = val;
  __MapTransitionIn();
  __WaitMapTransition();
  __CutsceneWait(1);
}


void OvlFunc_899_200c5f4(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern void __MapActor_Face(unsigned int a, unsigned int b, unsigned int c);

void OvlFunc_899_200c60c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__MapActor_Face(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

extern void __MapActor_TurnToFaceActor(unsigned int a, unsigned int b, unsigned int c);

void OvlFunc_899_200c624(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__MapActor_TurnToFaceActor(arg0, arg1, 0);
	__CutsceneWait(arg2);
}

void OvlFunc_899_200c63c(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	unsigned int r5;
	unsigned int r6;

	r5 = arg0;
	r6 = arg2;
	__MapActor_SetAnim(arg0, arg1, arg2);
	__Func_8092504(r5);
	__CutsceneWait(r6);
}

void OvlFunc_899_200c658(unsigned int arg0, unsigned int arg1)
{
  int new_var;
  __Func_8096fb0(0x8d, 1);
  __Func_80970f8(arg0, arg1);
 do { __Func_809728c(); __FieldMove(1); __WaitFrames(new_var = 1); } while (0);
}

void OvlFunc_899_200c684(void)
{
	__FieldMove(2);
	__Func_8097174();
	__Func_8097194();
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c698.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c704.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c754.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c7bc.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c7fc.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c840.s");

void OvlFunc_899_200c8a4(int arg0, unsigned char *p) {
    __Actor_TravelTo(arg0, ((int)p[0] << 19) + (0x90 << 15), 0, ((int)p[1] << 19) + (0x9e << 18));
}

INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200c8c8.s");
INCLUDE_ASM("asm/maps/vault_rooms_1/OvlFunc_899_200cb2c.s");

INCLUDE_ASM("asm/maps/vault_rooms_1/imports.s");
