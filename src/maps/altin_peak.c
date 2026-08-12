/* rom_7b9cb4 (overlay file 932): consolidated TU — altin_peak map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/altin_peak/exports.s");

extern void __Func_8091f14(int, int);

void OvlFunc_932_2008030(void) {
    __Func_8091f14(0xe, 0x17);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_a_c.s");

extern unsigned int __MapActor_GetActor(unsigned int arg0);

unsigned int OvlFunc_932_2008098(unsigned int arg0) {
    unsigned int r0;
    unsigned int r3;

    r0 = __MapActor_GetActor(8);
    r3 = *(unsigned int *)(r0 + 8);
    *(unsigned int *)(arg0 + 8) = r3;
    *(unsigned int *)(arg0 + 0xc) = 0xfff40000;
    r3 = *(unsigned int *)(r0 + 0x10);
    *(unsigned int *)(arg0 + 0x10) = r3;
    return 0;
}
unsigned int OvlFunc_932_20080bc(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)arg0;
    ptr[2] += ptr[9];
    ptr[3] += ptr[10];
    ptr[6] += ptr[11];
    ptr[7] += ptr[11];
    ptr[10] -= ptr[18];
    return 0;
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_a.s");

extern unsigned char gOvl_0200c85c[];

unsigned int AltinPeak_GetExits(void) {
    return (unsigned int)gOvl_0200c85c;
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_a_a_a.s");

void OvlFunc_932_200847c(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long f0c;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(8);
  s1 = 9;
  s2 = 0xd;
  __Func_8010704(7, 0xd, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_a_a_c_a.s");

void OvlFunc_932_200850c(void)
{
struct Actor932
{
unsigned char pad1[0xc];
int fc;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  __Func_8010704(0, 0, 1, 1, 0x1a, 0x1a);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->fc += -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_200855c(void)
{
struct Actor932
{
unsigned char pad[0xc];
unsigned int f0xc;
unsigned char pad2[0x23 - 0x10];
unsigned char f0x23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  s1 = 0x19;
  s2 = 0xd;
  __Func_8010704(0x17, 0xd, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0xc += 0xffe00000;
    actor->f0x23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_20085ac(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long posY;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(9);
  s1 = 0x2b;
  s2 = 0x29;
  __Func_8010704(0x2d, 0x29, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->posY += 0xffe00000;
    actor->f23 = 2;
  }
  __SetFlag(0x200);
}

void OvlFunc_932_20085fc(void)
{
struct Actor932
{
char pad0[0xc];
long f0c;
char pad1[0x23 - 0x10];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(0xb);
  s1 = 0x11;
  s2 = 0xa;
  __Func_8010704(1, 0, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + 0xffe00000;
    actor->f23 = 2;
  }
  __SetFlag(0x201);
}

void OvlFunc_932_2008650(void)
{
struct Actor932
{
unsigned char pad1[0xc];
long f0c;
unsigned char pad2[0x23 - 0xc - 4];
unsigned char f23;
};
  struct Actor932 *actor;
  int s1;
  int s2;

  actor = (struct Actor932 *) __MapActor_GetActor(12);
  s1 = 26;
  s2 = 15;
  __Func_8010704(1, 0, 1, 1, s1, s2);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->f0c = actor->f0c + -0x200000;
    actor->f23 = 2;
  }
  __SetFlag(0x204);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_a_a_c_c_c_c_c_c.s");

extern void OvlFunc_932_20089ec(void);

void OvlFunc_932_2008a64(void) {
    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    OvlFunc_932_20089ec();
    __WaitFrames(0x14);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_a_c_a.s");

extern void OvlFunc_932_2008a94(void);

void OvlFunc_932_2008b0c(void) {
    __CutsceneStart();
    __Func_801776c(0x1528, 1);
    __PlaySound(0x7d);
    OvlFunc_932_2008a94();
    __WaitFrames(0x14);
    __MapActor_PlayPendingSound();
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_a_c_c.s");


void OvlFunc_932_2008c74(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0xa);
    p[0x23] = 3;
}


void OvlFunc_932_2008c88(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0xa);
    p[0x23] = 1;
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_c_c_a_a.s");

extern unsigned char L5240[] __asm__(".Lm932_5240");
extern unsigned char L523c[] __asm__(".Lm932_523c");
extern void OvlFunc_932_200ab58(void);

void OvlFunc_932_200abb0(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int *r4 = (unsigned int *)L5240;
    unsigned int *r2;
    r4[2] = arg2;
    r2 = (unsigned int *)L523c;
    r4[0] = arg0;
    r4[1] = arg1;
    r2[0] = arg3;
    __Func_8091ff0(0xaa);
    __StartTask(OvlFunc_932_200ab58, 0xc8 << 4);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_c_c_a_c_a.s");

extern unsigned char iwram_3001e40[];   /* @ 0x03001E40 */

void OvlFunc_932_200ace0(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        __Func_80929d8(arg0, 2);
    } else if (v == 2) {
        __Func_80929d8(arg0, 0);
    }
}

void OvlFunc_932_200ad08(void)
{
    unsigned long long u;
    unsigned long v;
    unsigned short t;

    u = 0x18;
    do { u = (unsigned long) u; } while (0);
    v = u;
    __Func_8096fb0(v, 1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_80970f8(t, 9);

    __Func_809728c();

    __Func_8092950(10, 2);

    __FieldMove(1);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);

    __Func_8097174();

    __Func_8092950(10, 2);

    __Func_8097194();

    __PlaySound(0x120);

    t = 10;
    do { t = (unsigned short) t; } while (0);
    __Func_8092950(t, 2);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_c_c_a_c_c_c_a.s");

extern unsigned char *iwram_3001ebc;

void OvlFunc_932_200ae1c(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 9;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1480000, 0x1a80000);
  __SetFlag(0x323);
  OvlFunc_932_20089ec();
  __Func_800fe9c();
  __WaitFrames(1);
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20087e8();
  *(unsigned int *)(iwram_3001ebc + (0xe0 << 1)) = 0x81 << 2;
  __CutsceneEnd();
}

extern void *iwram_3001ebc__a1 __asm__("iwram_3001ebc");

void OvlFunc_932_200ae84(void)
{
  unsigned short t;

  __CutsceneStart();
  t = 10;
  do { t = (unsigned short) t; } while (0);
  __MapActor_SetPos(t, 0, 0);
  __MapActor_SetPos(8, 0x1e80000, 0x8a0000);
  __SetFlag(0x325);
  OvlFunc_932_2008a94();
  __Func_800fe9c();
  __WaitFrames(1);
  *(int *)((char *)iwram_3001ebc__a1 + 0x1c0) = 0x201;
  __MapTransitionIn();
  __WaitMapTransition();
  OvlFunc_932_20088d4();
  *(int *)((char *)iwram_3001ebc__a1 + 0x1c0) = 0x204;
  __CutsceneEnd();
}

extern unsigned char L51b0[] __asm__(".Lm932_51b0");

void OvlFunc_932_200aeec(void)
{
    unsigned int *p;
    unsigned int v;

    p = (unsigned int *)L51b0;
    v = *p + 1;
    *p = v;
    if (v != 0x3c) {
        return;
    }
    __PlaySound(0xb7);
    *p = 0;
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_a_c_c_c.s");

extern unsigned int iwram_3001e40__s __asm__("iwram_3001e40");
extern void __Func_8092950(int a, int b);

void OvlFunc_932_200affc(void)
{
    if ((iwram_3001e40__s >> 1) & 1) {
        __Func_8092950(8, 7);
    } else {
        __Func_8092950(8, 6);
    }
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_c_a_a.s");

struct Foo_a {
unsigned char pad[0x17D];
unsigned short unk17E;
};
extern struct Foo_a* iwram_3001ebc__a2 __asm__("iwram_3001ebc");

void OvlFunc_932_200b410(void) {
    iwram_3001ebc__a2->unk17E = 0x1018;
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_c_a_c.s");

void OvlFunc_932_200b460(unsigned int arg0) {
    unsigned char *p;

    p = __MapActor_GetActor(arg0);
    p[0x59] &= 0xfe;
    __Func_8012078(0, *(int *)(p + 8), *(int *)(p + 0x10), 0xff);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_a_c_c_c_c.s");

void OvlFunc_932_200b5a8(void) {}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_c_a.s");

void __PlaySound(unsigned int snd);
struct Foo_b {
unsigned char pad[0x65];
unsigned short unk66;
};

void OvlFunc_932_200b724(struct Foo_b* arg0) {
    arg0->unk66 = 0x21;
    __PlaySound(0x120);
}

INCLUDE_ASM("asm/maps/altin_peak/ovl_30_c_c.s");

INCLUDE_ASM("asm/maps/altin_peak/imports.s");
