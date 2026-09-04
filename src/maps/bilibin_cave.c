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

void OvlFunc_920_2008538(void)
{
    /* iwram_3001ebc is a file-scope array (:98); this fn needs the pointer view of
       the same symbol (one load of the stored pointer). __Actor_SetSpriteFlags is
       declared file-scope (:7) and OvlFunc_920_2008904 is defined below (:142) as
       a no-arg stub; both are left to those (calls are codegen-identical). */
    extern void *iwram_3001ebc__ptr __asm__("iwram_3001ebc");
    void *__MapActor_GetActor(int);
    void __MapActor_SetAnim(int, int);
    void __MapActor_SetPos(int, int, int);
    int __GetFlag(int);
    void __Func_8092b08(int, int);
    void __Func_8010704(int, int, int, int, int, int);

    unsigned char *ptr;
    int mask = 2;
    int a, b;
    int pos_y = 0x23a0000;
    int pos_z = 0x1780000;
    do { } while (pos_z == 0);

    *(int *)((char *)iwram_3001ebc__ptr + 0x1c0) = 0x204;

    __Actor_SetSpriteFlags(__MapActor_GetActor(0x12), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x13), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x14), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x15), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x16), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x17), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x18), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x19), 0);
    __Actor_SetSpriteFlags(__MapActor_GetActor(0x1a), 0);

    __MapActor_SetAnim(0x12, 5);
    __MapActor_SetAnim(0x13, 5);
    __MapActor_SetAnim(0x14, 5);
    __MapActor_SetAnim(0x15, 5);
    __MapActor_SetAnim(0x16, 5);
    __MapActor_SetAnim(0x17, 3);
    __MapActor_SetAnim(0x18, 3);
    __MapActor_SetAnim(0x19, 3);
    __MapActor_SetAnim(0x1a, 3);

    __MapActor_SetAnim(9, 2);
    __MapActor_SetAnim(10, 2);
    __MapActor_SetAnim(11, 2);
    __MapActor_SetAnim(12, 2);
    __MapActor_SetAnim(13, 2);
    __MapActor_SetAnim(14, 2);

    OvlFunc_920_2008904(0x12);
    OvlFunc_920_2008904(0x13);
    OvlFunc_920_2008904(0x14);
    OvlFunc_920_2008904(0x15);
    OvlFunc_920_2008904(0x16);
    OvlFunc_920_2008904(0x17);
    OvlFunc_920_2008904(0x18);
    OvlFunc_920_2008904(0x19);
    OvlFunc_920_2008904(0x1a);

    OvlFunc_920_2008904(9);
    OvlFunc_920_2008904(10);
    OvlFunc_920_2008904(11);
    OvlFunc_920_2008904(12);
    OvlFunc_920_2008904(13);
    OvlFunc_920_2008904(14);

    if (__GetFlag(0x883)) {
        __MapActor_SetPos(8, 0, 0);
        __MapActor_SetAnim(0xf, 5);
        *(unsigned char *)((char *)__MapActor_GetActor(0xf) + 0x55) = 0;
        *(int *)((char *)__MapActor_GetActor(0xf) + 0xc) = 0xfffc0000;
        ptr = (unsigned char *)__MapActor_GetActor(0xf) + 0x23;
        *ptr = mask | *ptr;
        __Func_8092b08(0xf, 2);
        a = 0x12;
        b = 0xe;
        __Func_8010704(0, 0, 1, 1, a, b);
    } else {
        __MapActor_SetAnim(8, 2);
        __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
        __MapActor_SetAnim(0xf, 1);
    }

    __MapActor_SetAnim(0x10, 1);

    if (__GetFlag(0x302)) {
        __MapActor_SetAnim(0x11, 1);
        __Func_8010704(0, 1, 1, 1, 0x24, 0x16);
        __Func_8010704(0, 2, 1, 1, 0x24, 0x18);
    } else {
        __MapActor_SetAnim(0x11, 5);
        __Func_8010704(1, 1, 1, 1, 0x24, 0x16);
        __Func_8010704(1, 2, 1, 1, 0x24, 0x18);
    }

    if (__GetFlag(0x303)) {
        __MapActor_SetPos(0xb, pos_y, pos_z);
    }

    if (__GetFlag(0x304)) {
        __MapActor_SetPos(0xc, pos_y, pos_z);
    }
}

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
