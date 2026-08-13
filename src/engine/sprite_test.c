/* engine/sprite_test.c */
#include "nonmatching.h"

extern void *_GetSpriteInfo(int spriteId);
extern unsigned int iwram_3001e60;
extern unsigned int *iwram_3001e60__a1 __asm__("iwram_3001e60");
extern void InitSpriteLayer(unsigned int layer);
extern void (*iwram_3001cfc)(void);

INCLUDE_ASM("asm/engine/sprite_test/Debug_SpriteTest.s");

unsigned int SpriteTest_ChangeVar(int arg0, int arg1)
{
  int r5;
  int r6;
  unsigned char *r0;
  r5 = arg0;
  r6 = arg1;
  L12afe:
  r5 = r5 + r6;

  if (r5 < 0)
  {
    r6++;
    r6--;
    r5 = 0x200;
    goto L12afe;
  }
  if (r5 >= 0x200)
  {
    r5 = -1;
    goto L12afe;
  }
  r0 = (unsigned char *) _GetSpriteInfo(r5);
  if (r0[0] == 0)
  {
    goto L12afe;
  }
  return (unsigned int) r5;
}

INCLUDE_ASM("asm/engine/sprite_test/Func_8012b2c.s");

void SpriteTest_SetLayerColorswap(unsigned int layer, unsigned int colorswap) {
    unsigned int base;
    unsigned int off;
    int i;

    base = iwram_3001e60;
    off = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned int e;
        e = *(unsigned int *)((char *)base + off);
        *(unsigned char *)((char *)e + 5) = colorswap;
        base += 0x38;
    }
}

void SpriteTest_SetLayerPriority(int layer, int value) {
    unsigned char **p;
    int idx;
    int i;

    p = (unsigned char **)iwram_3001e60;
    idx = ((layer & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        *(unsigned char *)(*(unsigned char **)((char *)p + idx) + 6) = value;
        p = (unsigned char **)((char *)p + 0x38);
    }
}

INCLUDE_ASM("asm/engine/sprite_test/Func_8012d70.s");

void Func_8012de8(unsigned int arg0, unsigned int arg1)
{
    unsigned char *p;
    int off;
    int i;

    p = (unsigned char *)iwram_3001e60__a1;
    _GetSpriteInfo(arg1);
    off = ((arg0 & 3) << 2) + 0x28;
    for (i = 9; i >= 0; i--) {
        unsigned short *t = *(unsigned short **)(p + off);
        *t = arg1;
        InitSpriteLayer(*(unsigned int *)(p + off));
        p += 0x38;
    }
}

INCLUDE_ASM("asm/engine/sprite_test/Task_Debug_SpriteTest.s");

INCLUDE_ASM("asm/engine/sprite_test/rodata.s");
