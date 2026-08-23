/* rom_7a6ae4 (overlay file 920): consolidated TU — bilibin_cave map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/bilibin_cave/exports.s");

extern int __Actor_SetSpriteFlags();

unsigned int OvlFunc_920_2008030(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

INCLUDE_ASM("asm/maps/bilibin_cave/BilibinCave_GetEntrances.s");

unsigned int BilibinCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008bcc[];

unsigned int BilibinCave_GetExits(void) {
    return (unsigned int)gOvl_02008bcc;
}

INCLUDE_ASM("asm/maps/bilibin_cave/BilibinCave_GetActors.s");
typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
extern unsigned char _EVENT_31[], _EVENT_30[], _EVENT_2f[];
extern unsigned char Lm920_ea8[] __asm__(".Lm920_ea8");
extern unsigned char Lm920_efc[] __asm__(".Lm920_efc");
extern unsigned char gOvl_02008f80[];
extern unsigned char Lm920_e9c[] __asm__(".Lm920_e9c");

int BilibinCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_31) return (int)Lm920_ea8;
    if (ev == (int)_EVENT_30) return (int)Lm920_efc;
    if (ev == (int)_EVENT_2f) return (int)gOvl_02008f80;
    return (int)Lm920_e9c;
}
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008148.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008168.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008188.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_20081bc.s");

void OvlFunc_920_20081f0(void) {
    __CutsceneStart();
    __MapActor_SetPos(9, 0, 0);
    __SetFlag(0x882);
    __CutsceneEnd();
}

INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008214.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008280.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_20082ac.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_20082d8.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008304.s");

void OvlFunc_920_2008424(void)
{
  int new_var3;
  long new_var4;
  int new_var2;
  long new_var;
  int new_var5;
  int new_var6;
  new_var = 1;
  new_var3 = 8;
  new_var2 = new_var3;
  new_var4 = new_var;
  new_var5 = 0;
  new_var6 = 0xd;
  __Func_8010704(0x1f, new_var5, new_var4, new_var4, new_var2, new_var6);
  __SetFlag(0x305);
}

extern unsigned int iwram_3001e70;

void OvlFunc_920_200844c(void) {
    unsigned int ptr;
    ptr = iwram_3001e70;
    *((unsigned char *)ptr + 0x17) = 1;
}

void OvlFunc_920_200845c(void) {
    unsigned int *ptr;
    ptr = (unsigned int *)iwram_3001e70;
    ((unsigned char *)ptr)[0x17] = 0;
}

INCLUDE_ASM("asm/maps/bilibin_cave/BilibinCave_MapInit.s");
INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_20084b4.s");

extern unsigned char iwram_3001ebc[];

void OvlFunc_920_20084e8(void)
{
  unsigned int *base;
  base = *((unsigned int **) iwram_3001ebc);
  *((unsigned int *) (((char *) base) + (0xe0 << 1))) = (0xe0 << 1) + 0x44;
 do { __MapActor_SetAnim(8, 1); } while (0);
  __MapActor_SetAnim(10, 2);
  if (__GetFlag(0x882) != 0)
  {
    __MapActor_SetPos(9, 0, 0);
  }
  else
  {
    __Actor_SetSpriteFlags(__MapActor_GetActor(9), 0);
  }
}

INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_2008538.s");

extern unsigned char iwram_3001ebc__a1 __asm__("iwram_3001ebc");

unsigned int OvlFunc_920_20087c4(unsigned int arg0, unsigned int arg1)
{
    unsigned int *base;
    unsigned char *r2;
    unsigned int i;

    base = (unsigned int *)*(unsigned int *)&iwram_3001ebc__a1;
    i = 8;
    r2 = (unsigned char *)base + 0x34;
    for (; i <= 0x41; i++) {
        unsigned int *p = *(unsigned int **)r2;
        r2 += 4;
        if (arg0 == ((int)*(unsigned int *)((char *)p + 8) >> 20) &&
            arg1 == ((int)*(unsigned int *)((char *)p + 0x10) >> 20))
            return (unsigned int)p;
    }
    return 0;
}

INCLUDE_ASM("asm/maps/bilibin_cave/OvlFunc_920_20087f8.s");

void OvlFunc_920_2008904(void) {}

INCLUDE_ASM("asm/maps/bilibin_cave/ovl_30_c_c_c.s");

INCLUDE_ASM("asm/maps/bilibin_cave/imports.s");
