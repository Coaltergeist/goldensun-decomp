/* actor/actor.c -- consolidated TU. */
#include "nonmatching.h"

extern void Actor_SetScript();

INCLUDE_ASM("asm/actor/actor/rom_c004_a.s");

void Func_800c0c4(void) {}
void Func_800c0c8(void) {}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_a_a_a_a_a_a.s");

void Actor_SetScript(unsigned int *actor, unsigned int script)
{
  unsigned short s;
  unsigned char *p;
  if (actor == 0)
  {
    return;
  }
  s = 0;
  *((unsigned int *) actor) = script;
  *((unsigned short *) (((char *) actor) + 4)) = s;
  p = ((unsigned char *) actor) + 0x5b;
  *p = 0;
  p += 2;
  *p = 0;
  p -= 6;
  *p = 0;
}

extern void Sprite_SetAnim(unsigned int sprite, unsigned int animID);

void Actor_SetAnim(unsigned char *p, unsigned int animID) {
    unsigned int v;
    unsigned int *q;
    int i;

    if (p == (unsigned char *)0)
        return;

    switch (*(unsigned char *)(p + 0x54) & 0xf) {
    case 1:
        Sprite_SetAnim(*(unsigned int *)(p + 0x50), animID);
        break;
    case 2:
        q = *(unsigned int **)(p + 0x50);
        for (i = 3; i >= 0; i--) {
            v = *q++;
            if (v != 0)
                Sprite_SetAnim(v, animID);
        }
        break;
    }
}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_a_a_a_a_c_a.s");

void Actor_SetRotation(int actor, int rotation)
{
  unsigned char *new_var;
  unsigned char val;
  unsigned char *p;
  val = 0;
  if (actor == val)
  {
    return;
  }
  new_var = (unsigned char *) (actor + 0x54);
  p = new_var;
  ;
  if (((*p) & 0xf) != 1)
  {
    return;
  }
  *((unsigned short *) ((*((unsigned int *) (actor + 0x50))) + 0x1e)) = rotation;
}

extern void InitSprite(unsigned char *sprite);

void Actor_SetSpriteID(unsigned char *actor, int spriteID) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        if (spriteID >= 0) {
            *(unsigned short *)(*(unsigned char **)(p + 0x28)) = spriteID;
            InitSprite(p);
        }
    }
}

extern void Sprite_AddLayer(unsigned char *sprite, int spriteID);

void Actor_AddSpriteLayer(unsigned char *actor, int spriteID) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        if (spriteID >= 0)
            Sprite_AddLayer(p, spriteID);
    }
}

extern unsigned char L13608[] __asm__(".L13608");

void Actor_Ride(unsigned char *actor, unsigned char *other) {
    Actor_SetScript(actor, L13608);
    *(unsigned char **)(actor + 0x68) = other;
}

extern unsigned char L13590[] __asm__(".L13590");

void Func_800c46c(unsigned int actor) {
    Actor_SetScript(actor, L13590);
}

extern unsigned char L135a8[] __asm__(".L135a8");

void Func_800c47c(int actor) {
    Actor_SetScript(actor, L135a8);
}

extern unsigned char L135c0[] __asm__(".L135c0");

void Func_800c48c(void *actor) {
    Actor_SetScript(actor, L135c0);
}

extern unsigned char L135d8[] __asm__(".L135d8");

void Func_800c49c(unsigned char *actor) {
    Actor_SetScript(actor, L135d8);
}

extern unsigned char L13620[] __asm__(".L13620");

void Actor_Stop(void *actor) {
    Actor_SetScript(actor, L13620);
}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_a_a_c_a_c_c_c_c_c.s");

extern void WaitFrames(unsigned int nframes);

void Actor_WaitScript(int actor) {
    int idx;
    int base;
    int r6;

    idx = *(short *)((char *)actor + 4);
    base = *(int *)actor;
    r6 = 0;
    if (*(int *)((idx << 2) + base) != 0x10) {
        do {
            WaitFrames(1);
            r6++;
            if (r6 > 0x12b)
                break;
            idx = *(short *)((char *)actor + 4);
            base = *(int *)actor;
        } while (*(int *)((idx << 2) + base) != 0x10);
    }
}

void Actor_SetSpriteFlags(unsigned char *actor, unsigned int flags) {
    if (actor != (unsigned char *)0 && (*(unsigned char *)(actor + 0x54) & 0xf) == 1) {
        unsigned char *p = *(unsigned char **)(actor + 0x50);
        *(unsigned char *)(p + 0x26) = flags;
    }
}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_a_c_a.s");

extern void Sprite_SetColorswap(void *, int);

void Actor_SetColorswap(void *actor, int colorswap)
{
    unsigned char *p;
    if (actor == 0)
        return;
    p = (unsigned char *)actor;
    if (p[0x54] != 1)
        return;
    Sprite_SetColorswap(*(void **)((unsigned char *)actor + 0x50), colorswap);
}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_a_c_c_a.s");

extern void Func_800439c(void *);
extern void Func_800c62c(void);
extern void Func_800c880(void);

void Func_800c5fc(void)
{
    unsigned short r2;
    unsigned int r3;
    unsigned short *r1;

    Func_800439c(Func_800c62c);
    Func_800439c(Func_800c880);
    r1 = (unsigned short *)(0x80u << 19);
    r2 = *r1;
    r3 = 0xe1ff;
    r3 = r3 & r2;
    *r1 = r3;
}

/* FF: int stub_0800C628(void) */
unsigned int Func_800c628(void) {
    return 1;
}

INCLUDE_ASM("asm/actor/actor/rom_c004_c_c_a.s");

/* FF: int stub_0800C87C(void) */
unsigned int Func_800c87c(void) {
    return 1;
}

INCLUDE_ASM("asm/actor/actor/rom_c880.s");
