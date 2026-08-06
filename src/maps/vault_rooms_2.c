// fakematch
/* rom_7987ac (overlay file 902): consolidated TU — vault_rooms_2 map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/vault_rooms_2/exports.s");

extern void OvlFunc_902_2008098();

extern int *__MapActor_GetActor(int idx);
extern void __SetFlag(int id);
extern void __ClearFlag(int id);
extern void __ActorMessage(int a, int b);

void OvlFunc_902_2008030(void)
{
    int r5;
    int r3;

    r5 = __MapActor_GetActor(0)[2];
    r3 = __MapActor_GetActor(0)[4];
    r5 >>= 20;
    r5 -= 0x22;
    r3 >>= 20;
    if ((unsigned int)r5 <= 1 && r3 > 0x28 && r3 <= 0x2a)
        __SetFlag(0x94 << 2);
    else
        __ClearFlag(0x94 << 2);
}

extern unsigned char gOvl_020086dc[];

unsigned int VaultRooms2_GetEntrances(void) {
    return (unsigned int)gOvl_020086dc;
}

unsigned int VaultRooms2_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_020087cc[];

void *VaultRooms2_GetExits(void) {
    return (void *)gOvl_020087cc;
}

extern void __Func_808b868(unsigned char *p);
extern unsigned char L7f4[] __asm__(".Lm902_7f4");

unsigned char *VaultRooms2_GetActors(void) {
    __Func_808b868(L7f4);
    return L7f4;
}

void OvlFunc_902_2008098(unsigned int arg0)
{
  __CutsceneStart();
  __MapActor_SetAnim(arg0, 1);
  {
      unsigned int rq = arg0;
      __ActorMessage(rq, 0);
  }
  __CutsceneEnd();
}


void OvlFunc_902_20080bc(void)
{
  int new_var;
  int x;
 do { __MessageID(0x1cc9); x = 9; new_var = 2; } while (0);
  __MapActor_TurnToFaceActor(x, 0, new_var);
  OvlFunc_902_2008098(x);
}


void OvlFunc_902_20080dc(void)
{
  __MessageID(0x1ccd);
 do { __MapActor_TurnToFaceActor(0xb, 0, 2); OvlFunc_902_2008098(0xb); } while (0);
}


void OvlFunc_902_20080fc(void)
{
  int r1;
  int r2;
 do { __MessageID(0x1cd0); r1 = 0; r2 = 2; } while (0);
  __MapActor_TurnToFaceActor(0xc, r1, r2);
  OvlFunc_902_2008098(0xc);
}

INCLUDE_ASM("asm/maps/vault_rooms_2/ovl_30_c_c_a_a_c_c_c_a_a.s");


void OvlFunc_902_20081c4(void)
{
  unsigned short new_var;
 do { __MessageID(0x1cda); } while (0);
  new_var = 0;
  __MapActor_TurnToFaceActor(0x10, new_var, 2);
  OvlFunc_902_2008098(0x10);
}


void OvlFunc_902_20081e4(void)
{
  int r4 = 0x17;
  __MessageID(0x1cee);
 do { } while (0);
  __MapActor_TurnToFaceActor(r4, 0, 2);
  OvlFunc_902_2008098(r4);
}

INCLUDE_ASM("asm/maps/vault_rooms_2/ovl_30_c_c_a_a_c_c_c_c_a.s");

extern void OvlFunc_902_200811c(void);

void OvlFunc_902_20082fc(void)
{
  __CutsceneStart();
  __Func_80925cc(0x10, 1);
  __CutsceneEnd();
  *((unsigned char *)__MapActor_GetActor(0x10) + 0x5b) = 1;
  OvlFunc_902_200811c();
  {
    register unsigned char *p __asm__("r0");
    register unsigned char z __asm__("r5");
    p = (unsigned char *)__MapActor_GetActor(0x10);
    __asm__ volatile ("" : : "r" (p));
    z = 0;
    __asm__ volatile ("" : : "r" (z));
    p[0x5b] = z;
  }
  __MapActor_SetBehavior(0x10, 2);
}

extern void __CutsceneStart(void);
extern int __Func_8078500(void);
extern void __MapActor_DoAnim(int a, int b);
extern void __CutsceneWait(int a);
extern void __MessageID(int a);
extern void __Func_808f1c0(int a, int b);
extern void __Func_8091a58(int a, int b);
extern void __CutsceneEnd(void);
extern void __Func_80b0278(int, int);

void OvlFunc_902_2008338(void) {
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
void OvlFunc_902_2008380(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(4, 0x13);
    } else {
        __MessageID(0x1ce2);
        __ActorMessage(0x13, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_902_20083c8(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(5, 0x14);
    } else {
        __MessageID(0x1ce4);
        __ActorMessage(0x14, 0);
    }
    __CutsceneEnd();
}


void OvlFunc_902_2008410(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b0278(6, 0x15);
    } else {
        __MessageID(0x1ce6);
        __ActorMessage(0x15, 0);
    }
    __CutsceneEnd();
}

extern void __Func_80b3284(int, int);

void OvlFunc_902_2008458(void) {
    unsigned int r5;

    r5 = *(unsigned short *)((char *)__MapActor_GetActor(0) + 6);
    __CutsceneStart();
    r5 += 0xffff5fff;
    if (r5 <= 0x3ffe) {
        __Func_80b3284(1, 0x16);
    } else {
        __MessageID(0x1cec);
        __ActorMessage(0x16, 0);
    }
    __CutsceneEnd();
}

extern int __GetFlag(int);

void OvlFunc_902_20084a0(void) {
    __CutsceneStart();
    if (__GetFlag(0x85b) == 0) {
        __MessageID(0x1382);
    } else {
        __MessageID(0x1cf4);
    }
    __ActorMessage(0x12, 0);
    __CutsceneEnd();
}

extern unsigned char gOvl_0200898c[];

void *VaultRooms2_GetEvents(void) {
    return (void *)gOvl_0200898c;
}

INCLUDE_ASM("asm/maps/vault_rooms_2/ovl_30_c_c_c.s");

INCLUDE_ASM("asm/maps/vault_rooms_2/imports.s");
