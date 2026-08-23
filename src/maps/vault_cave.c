/* rom_7bf5a8 (overlay file 935): consolidated TU — vault_cave map overlay. */

#include "nonmatching.h"

extern void OvlFunc_935_2008734();

INCLUDE_ASM("asm/maps/vault_cave/VaultCave_GetEntrances.s");

extern unsigned char gOvl_02009c5c[];

void *VaultCave_GetSpecialExits(void) {
    return (void *)gOvl_02009c5c;
}

INCLUDE_ASM("asm/maps/vault_cave/VaultCave_GetExits.s");
INCLUDE_ASM("asm/maps/vault_cave/VaultCave_GetActors.s");

extern unsigned int iwram_3001ebc;

unsigned int OvlFunc_935_2008134(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned int *r2;
    unsigned int i;

    i = 8;
    base = (unsigned int *)iwram_3001ebc;
    r2 = (unsigned int *)((char *)base + 0x34);
    do {
        unsigned char *r0;
        r0 = (unsigned char *)*r2;
        r2++;
        if ((int)arg0 == ((int)*(unsigned int *)(r0 + 8) >> 20) &&
            (int)arg1 == ((int)*(unsigned int *)(r0 + 0x10) >> 20) &&
            *(unsigned char *)(r0 + 0x59) != 0)
            return (unsigned int)r0;
        i++;
    } while (i <= 0x41);
    return 0;
}

INCLUDE_ASM("asm/maps/vault_cave/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008170.s");

extern void __SetFlag(int);

void OvlFunc_935_20082bc(void) {
    __SetFlag(0xc0 << 2);
}

extern void __Func_801776c(int a, int b);

void OvlFunc_935_20082cc(void) {
    __Func_801776c(0x953, 1);
}

INCLUDE_ASM("asm/maps/vault_cave/ovl_170_c_c.s");

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_60[], _EVENT_61[], _EVENT_62[];
extern unsigned char Lm935_1f98[] __asm__(".Lm935_1f98");
extern unsigned char Lm935_2064[] __asm__(".Lm935_2064");
extern unsigned char Lm935_2190[] __asm__(".Lm935_2190");
extern unsigned char Lm935_1f8c[] __asm__(".Lm935_1f8c");

int VaultCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_60) return (int)Lm935_1f98;
    if (ev == (int)_EVENT_61) return (int)Lm935_2064;
    if (ev == (int)_EVENT_62) return (int)Lm935_2190;
    return (int)Lm935_1f8c;
}

extern unsigned char *__MapActor_GetActor(int);

unsigned int OvlFunc_935_2008334(void)
{
    unsigned char *p;
    int a, b;
    p = __MapActor_GetActor(9);
    a = *(int *)(p + 0x10) / 0x100000;
    b = *(int *)(p + 8) / 0x100000;
    if (b == 0xf && a == 0x36)
        return 1;
    return 0;
}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008368.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008398.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_20083e0.s");

void OvlFunc_935_200840c(void) {}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008410.s");


unsigned int OvlFunc_935_2008458(void)
{
    unsigned char *p;
    int a, b;

    p = __MapActor_GetActor(0xa);
    a = *(int *)(p + 0x10) / 0x100000;
    b = *(int *)(p + 8) / 0x100000;
    if (b == 16 && a == 12)
        return 1;
    return 0;
}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_200848c.s");

void OvlFunc_935_20084cc(void) {}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_20084d0.s");

struct Actor935
{
unsigned char pad1[0x23];
unsigned char f23;
unsigned char pad2[0x55 - 0x23 - 1];
unsigned char f55;
};

void OvlFunc_935_200850c(void)
{
  struct Actor935 *actor1;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor1 = (struct Actor935 *) __MapActor_GetActor(0x10);
  s1 = 0x17;
  s2 = 0x20;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor1 != 0)
  {
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x10);
    actor2->f55 = 0;
    actor1->f23 = 1;
  }
  __SetFlag(0x200);
}


void OvlFunc_935_2008554(void)
{
  struct Actor935 *actor;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x11);
  s1 = 0x17;
  s2 = 0x22;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x11);
    actor2->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x201);
}


void OvlFunc_935_20085a0(void)
{
  struct Actor935 *actor;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x12);
  s1 = 0x18;
  s2 = 0x22;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x12);
    actor2->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x202);
}

extern void __Actor_SetSpriteFlags(struct Actor935 *actor, int flags);

void OvlFunc_935_20085ec(void)
{
  struct Actor935 *actor;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x13);
  s1 = 0x1a;
  s2 = 0x20;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    ((struct Actor935 *) __MapActor_GetActor(0x13))->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x203);
}

extern void __Func_8010704(int a0, int a1, int a2, int a3, int a4, int a5);

void OvlFunc_935_2008640(void)
{
  struct Actor935 *actor;
  struct Actor935 *actor2;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x14);
  s1 = 0x1a;
  s2 = 0x22;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor2 = (struct Actor935 *) __MapActor_GetActor(0x14);
    actor2->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x204);
}

void OvlFunc_935_2008690(void)
{
  struct Actor935 *actor;
  int s1;
  int s2;

  actor = (struct Actor935 *) __MapActor_GetActor(0x15);
  s1 = 0x1c;
  s2 = 0x21;
  __Func_8010704(0x1a, 0x1e, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    ((struct Actor935 *) __MapActor_GetActor(0x15))->f55 = 0;
    actor->f23 = 1;
  }
  __SetFlag(0x205);
}

extern void OvlFunc_935_2008704(void);

void OvlFunc_935_20086e4(void) {
    unsigned char *actor;
    int r2;
    int r3;

    actor = (unsigned char *)__MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(int *)(actor + 0xc);
    r2 <<= 13;
    if (r3 >= r2) {
        OvlFunc_935_2008704();
    } else {
        OvlFunc_935_2008734();
    }
}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008704.s");

void OvlFunc_935_2008734(void)
{
  unsigned char *p;
  int new_var;
  int id;
  int i;
  id = 0x10;
  new_var = 1;
  i = 5;
  do
  {
    p = __MapActor_GetActor(id);
    i--;
    p += 0x23;
    *p = new_var;
    id++;
  }
  while (i >= 0);
}

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008754.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_20088a8.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008944.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_20089c0.s");
INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008aa0.s");

extern void __vec3_translate(unsigned int arg0, unsigned int arg1, unsigned int *arg2);
extern void __Actor_TravelTo(unsigned char *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3);

void OvlFunc_935_2008b54(unsigned char *arg0, unsigned int arg1, unsigned int arg2) {
    unsigned int tmp[3];

    if (arg0 != (unsigned char *)0) {
        tmp[0] = *(unsigned int *)(arg0 + 8);
        tmp[1] = *(unsigned int *)(arg0 + 0xc);
        tmp[2] = *(unsigned int *)(arg0 + 0x10);
        __vec3_translate(arg1, arg2, tmp);
        __Actor_TravelTo(arg0, tmp[0], tmp[1], tmp[2]);
    }
}

INCLUDE_ASM("asm/maps/vault_cave/ovl_2e0_c_c_c.s");

INCLUDE_ASM("asm/maps/vault_cave/OvlFunc_935_2008b8c.s");

extern void OvlFunc_935_2008aa0(void);

void OvlFunc_935_2008c08(void)
{
    void *a;
    int r5;
    int r6;

    r5 = 10;
    r6 = 5;
    do {
        a = __MapActor_GetActor(r5);
        __Actor_SetSpriteFlags(a, 0);
        a = __MapActor_GetActor(r5);
        *(unsigned int *)((char *)a + 0x44) = 0x1999;
        *(unsigned int *)((char *)a + 0x48) = 0;
        *(unsigned int *)((char *)a + 0xc) = 0xff0000;
        r6 -= 1;
        r5 += 1;
    } while (r6 >= 0);
    __StartTask(OvlFunc_935_2008aa0, 0xc80);
}

extern void OvlFunc_935_20089c0(void);

void OvlFunc_935_2008c50(void)
{
    void *a;
    int r5;
    int r6;

    r6 = 0xb;
    r5 = 0;
    do {
        a = __MapActor_GetActor(r6);
        __Actor_SetSpriteFlags(a, 0);
        a = __MapActor_GetActor(r6);
        *(unsigned int *)((char *)a + 0x44) = 0x1999;
        *(unsigned int *)((char *)a + 0x48) = 0;
        *(unsigned int *)((char *)a + 0xc) = 0xff0000;
        __Func_8092b08(r5 + 0xb, 1);
        r5 += 1;
        r6 += 1;
    } while (r5 <= 3);
    __StartTask(OvlFunc_935_20089c0, 0xc80);
}

INCLUDE_ASM("asm/maps/vault_cave/VaultCave_MapInit.s");
