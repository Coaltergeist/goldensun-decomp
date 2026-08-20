// fakematch
/* rom_7b0400 (overlay file 925): consolidated TU — mercury_lighthouse_aerie map overlay. */

#include "nonmatching.h"

extern unsigned char gOvl_0200b938[];

unsigned int MercuryLighthouseAerie_GetEntrances(void) {
    return (unsigned int)gOvl_0200b938;
}

int MercuryLighthouseAerie_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_0200b9c8[];

void *MercuryLighthouseAerie_GetExits(void) {
    return (void *)gOvl_0200b9c8;
}

extern unsigned char gState[];
extern unsigned char L39d4[] __asm__(".Lm925_39d4");

unsigned int MercuryLighthouseAerie_GetActors(void) {
    unsigned int r3;
    unsigned int r2;
    short val;

    r3 = (unsigned int)&gState;
    r2 = 0xe1;
    r2 <<= 1;
    r3 += r2;
    r2 = 0;
    val = *(short *)((char *)r3 + r2);
    if (val != 1) {
        __SetFlag(0x253);
    }
    return (unsigned int)L39d4;
}

extern unsigned char gOvl_0200bbe4[];

void *MercuryLighthouseAerie_GetEvents(void) {
    return (void *)gOvl_0200bbe4;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/MercuryLighthouseAerie_MapInit.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200856c.s");

extern int Func_8000948(int);

int OvlFunc_925_2008890(int *a, int *b)
{
  int dx;
  int dy;
  int dz;
  int mag;
  int new_var;
  int (*fp)(int);
  dx = ((*(a++)) - (*(b++))) >> 16;
  if (1)
  {
    dy = ((*(a++)) - (*(b++))) >> 16;
    dz = ((*a) - (*b)) >> 16;
    mag = ((dx * dx) + ((float) (dy * dy))) + (dz * dz);
  }
  new_var = ((dx * dx) + (dy * dy)) + (dz * dz);
  fp = Func_8000948;
  return fp(new_var);
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_20088cc.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_2008928.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_20089fc.s");

void OvlFunc_925_2008ad0(void) {
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 3;
    *(unsigned char *)(__MapActor_GetActor(0xe) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0xf) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x10) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x11) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x12) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x13) + 0x55) = 4;
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_2008b24.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_2009af0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200addc.s");

void OvlFunc_925_200aeb8(void)
{
  unsigned int a;
  unsigned int b;
  unsigned int h0;
  unsigned int z;
  unsigned int c;
  unsigned int r2val;
  unsigned int r0val;
  unsigned int h1;
  unsigned int h2;
  int d;
  int e;
  int f;
  unsigned int g;

  __CutsceneStart();

  a = 0x80;
  __asm__ volatile ("" : "+r" (a));
  b = 0x80;
  __asm__ volatile ("" : "+r" (b));
  h0 = 0;
  __asm__ volatile ("" : "+r" (h0));
  a <<= 8;
  b <<= 7;
  __MapActor_SetSpeed(h0, a, b);

  z = 0;
  __asm__ volatile ("" : "+r" (z));
  __MapActor_TravelToAnimWait(z, 0x68, 0x98);

  c = 0x80;
  __asm__ volatile ("" : "+r" (c));
  r2val = 0x3c;
  __asm__ volatile ("" : "+r" (r2val));
  r0val = 0;
  __asm__ volatile ("" : "+r" (r0val));
  c <<= 7;
  __Func_8092adc(r0val, c, r2val);

  h1 = 0x11;
  __asm__ volatile ("" : "+r" (h1));
  __Func_8092b08(h1, 0);

  h2 = 0x12;
  __asm__ volatile ("" : "+r" (h2));
  __Func_8092b08(h2, 0);

  OvlFunc_925_200b208();

  d = 1;
  __asm__ volatile ("" : "+r" (d));
  e = 1;
  __asm__ volatile ("" : "+r" (e));
  f = 1;
  __asm__ volatile ("" : "+r" (f));
  e = -e;
  f = -f;
  g = 0;
  d = -d;
  __Func_80933f8(d, e, f, g);

  __Func_8091e9c(1);

  __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200af18.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b060.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b1c0.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b208.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b324.s");

void OvlFunc_925_200b438(void)
{
  int new_var3;
  int new_var2;
  int new_var6;
  int new_var5;
  int new_var7;
  short new_var4;
  unsigned long long new_var8;
  int new_var;
  new_var4 = (new_var7 = 0x5d);
  new_var3 = new_var4;
  new_var8 = new_var3;
  new_var = new_var8;
  new_var2 = 9;
 do { __Func_8096fb0(new_var, 1); new_var6 = 0x18; new_var5 = new_var6; __Func_80970f8(new_var5, new_var2); __Func_809728c(); } while (0);
  __FieldMove(1);
  __Func_8097174();
  __Func_8097194();
}

INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b460.s");
INCLUDE_ASM("asm/maps/mercury_lighthouse_aerie/OvlFunc_925_200b4bc.s");
