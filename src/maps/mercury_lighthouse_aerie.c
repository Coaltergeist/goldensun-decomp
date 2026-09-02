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
extern unsigned char iwram_3001e70[];

void __CutsceneStart(void);
void __Func_800fe9c(void);
void __WaitFrames(int);
void *__MapActor_GetActor(int);
void __MapActor_SetPos(int, int, int);
void *__Func_8093554(void);
void __Func_80933d4(int, int);
void __Func_80933f8(int, int, int, int);
void __Func_8093530(void);
void __CutsceneWait(int);
void __CopyMapTiles(int, int, int, int, int, int);
void __Func_8092b08(int, int);
void OvlFunc_925_200b324(void);
void __SetFlag(int);
void __CutsceneEnd(void);

void OvlFunc_925_200addc(void)
{
    unsigned char *ptr;
    unsigned char *actor;
    int zero;
    int neg_y;
    int four;

    ptr = *(unsigned char **)iwram_3001e70 + (0xb2 << 1);
    __CutsceneStart();
    *(int *)(ptr + 0xc) = 0xe0 << 18;
    __Func_800fe9c();
    __WaitFrames(1);
    zero = 0;
    ((unsigned char *)__MapActor_GetActor(9))[0x55] = zero;
    __MapActor_SetPos(9, 0xd0 << 15, 0x84 << 17);
    neg_y = -0x200000;
    actor = (unsigned char *)__MapActor_GetActor(9);
    *(int *)(actor + 0xc) = neg_y;
    actor = (unsigned char *)__MapActor_GetActor(9);
    *(int *)(actor + 0x3c) = neg_y;
    ((unsigned char *)__Func_8093554())[0x55] = zero;
    __Func_80933d4(0xcccc, 0x1999);
    __Func_80933f8(0x80 << 16, -1, 0xb8 << 16, 1);
    __Func_8093530();
    __CutsceneWait(0x1e);
    four = 4;
    __CopyMapTiles(0x1d, 0x4a, four, 0x4a, 5, four);
    __Func_8092b08(0x11, 0);
    __Func_8092b08(0x12, 0);
    OvlFunc_925_200b324();
    __Func_8092b08(0x11, 1);
    __Func_8092b08(0x12, 1);
    __CutsceneWait(0x14);
    __SetFlag(0x251);
    __CutsceneEnd();
}

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

#include "actor.h"

extern void __PlaySound(int);
extern void __Func_8092950(int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern unsigned int __Random(void);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);
static inline void call_8092950(int actor, int flag) {
    __Func_8092950(actor, flag << 1);
}

struct EffectData {
    int unk0;
    int unk4;
    int unk8;
    int unkc;
    int unk10;
    int unk14;
    short unk18;
    short unk1a;
    int unk1c;
    int unk20;
    int unk24;
};

void OvlFunc_925_200af18(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned int i;
    struct EffectData data;

    actor1 = __MapActor_GetActor(0x16);
    actor2 = __MapActor_GetActor(0x18);
    __PlaySound(0xbe);
    call_8092950(0x16, 0x80);
    call_8092950(0x18, 0x80);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x8e << 1;
    data.unk8 = 0x6666;
    data.unkc = 0xc0 << 10;

    i = 0;
    do {
        __CutsceneWait(1);
        if (i & 1) {
            int x = actor1->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor1->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + 0xfff00000;
            OvlFunc_common0_10c(x, y, actor1->pos.z, 0, 0x80 << 11, 0, 0xd8 << 13, &data);
        } else {
            int x = actor2->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor2->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + 0xfff00000;
            OvlFunc_common0_10c(x, y, actor2->pos.z, 0, 0x80 << 11, 0, 0xd8 << 13, &data);
        }
        i++;
    } while (i <= 0x1f);

    __MapActor_SetPos(0x16, 0, 0);
    __MapActor_SetPos(0x18, 0, 0);
}
#include "actor.h"

void OvlFunc_925_200b060(void)
{
    struct Actor *actor1;
    struct Actor *actor2;
    unsigned int i;
    struct EffectData data;

    actor1 = __MapActor_GetActor(0x16);
    actor2 = __MapActor_GetActor(0x18);
    __PlaySound(0xbe);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);

    data.unk0 = 1;
    data.unk4 = 5;
    data.unk18 = 0x8e << 1;
    data.unk8 = 0x6666;
    data.unkc = 0xc0 << 10;

    i = 0;
    do {
        __CutsceneWait(1);
        if (i & 1) {
            int x = actor1->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor1->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + (0x80 << 14);
            OvlFunc_common0_10c(x, y, actor1->pos.z, 0, 0xfffc0000, 0, 0xd8 << 13, &data);
        } else {
            int x = actor2->pos.x + (((unsigned int)(__Random() * 24) >> 16) << 16) + 0xfff40000;
            int y = actor2->pos.y + (((unsigned int)(__Random() << 5) >> 16) << 16) + (0x80 << 14);
            OvlFunc_common0_10c(x, y, actor2->pos.z, 0, 0xfffc0000, 0, 0xd8 << 13, &data);
        }
        if (i == 0x14) {
            call_8092950(0x16, 0x80);
            call_8092950(0x18, 0x80);
        }
        i++;
    } while (i <= 0x1f);

    __Func_8092950(0x16, 0);
    __Func_8092950(0x18, 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 1);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 1);
}
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
