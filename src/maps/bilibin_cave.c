/* rom_7a6ae4 (overlay file 920): consolidated TU — bilibin_cave map overlay. */

#include "nonmatching.h"
#include "api.h"

INCLUDE_ASM("asm/maps/bilibin_cave/exports.s");

extern int __Actor_SetSpriteFlags();

unsigned int OvlFunc_920_2008030(void) {
    int x;
    __Actor_SetSpriteFlags(x, 0);
    return 0;
}

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

extern unsigned char Lconst_31[] __asm__(".Lconst_31");
extern unsigned char Lconst_30[] __asm__(".Lconst_30");
extern unsigned char Lconst_2f[] __asm__(".Lconst_2f");
__asm__(".equ .Lconst_31, 0x31");
__asm__(".equ .Lconst_30, 0x30");
__asm__(".equ .Lconst_2f, 0x2f");

extern unsigned char Lm920_9ec[] __asm__(".Lm920_9ec");
extern unsigned char Lm920_a64[] __asm__(".Lm920_a64");
extern unsigned char Lm920_b24[] __asm__(".Lm920_b24");
extern unsigned char Lm920_9bc[] __asm__(".Lm920_9bc");

void *BilibinCave_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_31) {
        return Lm920_9ec;
    }
    if (a == (int)Lconst_30) {
        return Lm920_a64;
    }
    if (a == (int)Lconst_2f) {
        return Lm920_b24;
    }
    return Lm920_9bc;
}

unsigned int BilibinCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008bcc[];

unsigned int BilibinCave_GetExits(void) {
    return (unsigned int)gOvl_02008bcc;
}

extern unsigned char Lm920_c2c[] __asm__(".Lm920_c2c");
extern unsigned char Lm920_c5c[] __asm__(".Lm920_c5c");
extern unsigned char Lm920_cbc[] __asm__(".Lm920_cbc");
extern unsigned char Lm920_c14[] __asm__(".Lm920_c14");

void *BilibinCave_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_31) {
        return Lm920_c2c;
    }
    if (a == (int)Lconst_30) {
        return Lm920_c5c;
    }
    if (a == (int)Lconst_2f) {
        return Lm920_cbc;
    }
    return Lm920_c14;
}
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
void OvlFunc_920_2008148(void) {
    void __Func_8010704(int, int, int, int, int, int);
    int a = 0x15;
    int b = 0xe;
    __Func_8010704(1, 0, 1, 1, a, b);
}
void OvlFunc_920_2008168(void) {
    void __Func_8010704(int, int, int, int, int, int);
    int a = 0x15;
    int b = 0xe;
    __Func_8010704(0, 0, 1, 1, a, b);
}
void OvlFunc_920_2008188(void) {
    void __CopyMapTiles(int, int, int, int, int, int);
    void __Func_8010704(int, int, int, int, int, int);
    int a, b;
    a = 1;
    b = 3;
    __CopyMapTiles(0x6f, 0x25, 0x61, 0x15, a, b);
    a = 0x20;
    b = 0x18;
    __Func_8010704(0x2e, 0x26, 3, 2, a, b);
}
void OvlFunc_920_20081bc(void) {
    void __CopyMapTiles(int, int, int, int, int, int);
    void __Func_8010704(int, int, int, int, int, int);
    int a, b;
    a = 1;
    b = 3;
    __CopyMapTiles(0x5f, 0x15, 0x61, 0x15, a, b);
    a = 0x20;
    b = 0x19;
    __Func_8010704(0x2e, 0x26, 3, 1, a, b);
}

void OvlFunc_920_20081f0(void) {
    __CutsceneStart();
    __MapActor_SetPos(9, 0, 0);
    __SetFlag(0x882);
    __CutsceneEnd();
}

void OvlFunc_920_2008214(void) {
    void __CutsceneStart(void);
    void __MapActor_SetPos(int, int, int);
    void __SetFlag(int);
    void __CutsceneWait(int);
    void __MapActor_DoAnim(int, int);
    void *__MapActor_GetActor(int);
    void __Func_8092b08(int, int);
    void __Func_8010704(int, int, int, int, int, int);
    void __CutsceneEnd(void);
    unsigned char *ptr;
    int new_var;
    int a, b;

    __CutsceneStart();
    __MapActor_SetPos(8, 0, 0);
    __SetFlag(0x883);
    __CutsceneWait(0x28);
    __MapActor_DoAnim(0xf, 2);
    ((unsigned char *)__MapActor_GetActor(0xf))[0x55] = 0;
    ptr = (unsigned char *)__MapActor_GetActor(0xf) + 0x23;
    new_var = *ptr | 2;
    *ptr = new_var;
    __Func_8092b08(0xf, 2);
    a = 0x12;
    b = 0xe;
    __Func_8010704(0, 0, 1, 1, a, b);
    __CutsceneEnd();
}
void OvlFunc_920_2008280(void) {
    void __CutsceneStart(void);
    void __Func_8092950(int, int);
    void __CutsceneWait(int);
    void __PlaySound(int);
    void __MapActor_DoAnim(int, int);
    void __CutsceneEnd(void);

    __CutsceneStart();
    __Func_8092950(0xf, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0xf, 6);
    __CutsceneEnd();
}
void OvlFunc_920_20082ac(void) {
    void __CutsceneStart(void);
    void __Func_8092950(int, int);
    void __CutsceneWait(int);
    void __PlaySound(int);
    void __MapActor_DoAnim(int, int);
    void __CutsceneEnd(void);

    __CutsceneStart();
    __Func_8092950(0x10, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0x10, 6);
    __CutsceneEnd();
}
void OvlFunc_920_20082d8(void) {
    void __CutsceneStart(void);
    void __Func_8092950(int, int);
    void __CutsceneWait(int);
    void __PlaySound(int);
    void __MapActor_DoAnim(int, int);
    void __CutsceneEnd(void);

    __CutsceneStart();
    __Func_8092950(0x11, 0);
    __CutsceneWait(0x28);
    __PlaySound(0xd2);
    __MapActor_DoAnim(0x11, 6);
    __CutsceneEnd();
}
void OvlFunc_920_2008304(void) {
    void *__MapActor_GetActor(int);
    void __SetFlag(int);
    void __ClearFlag(int);
    int __GetFlag(int);
    void __CutsceneStart(void);
    void __CutsceneWait(int);
    void __PlaySound(int);
    void __MapActor_DoAnim(int, int);
    void __Func_8010704(int, int, int, int, int, int);
    void __CutsceneEnd(void);

    int *p1;
    int *p2;
    int tile_x;

    p1 = (int *)__MapActor_GetActor(0xb);
    p2 = (int *)__MapActor_GetActor(0xc);

    if (p1[2] >> 20 == 0x23 && p1[4] >> 20 == 0x17) {
        API_SetFlag(0x303);
    } else {
        API_ClearFlag(0x303);
    }

    if (p2[2] >> 20 == 0x23 && p2[4] >> 20 == 0x17) {
        API_SetFlag(0x304);
    } else {
        API_ClearFlag(0x304);
    }

    if (API_GetFlag(0x303) != 0 || __GetFlag(0x304) != 0) {
        if (API_GetFlag(0x302) == 0) {
            __CutsceneStart();
            __CutsceneWait(0x28);
            __PlaySound(0xd2);
            __MapActor_DoAnim(0x11, 6);
            tile_x = 0x24;
            __Func_8010704(0, 1, 1, 1, tile_x, 0x16);
            __Func_8010704(0, 2, 1, 1, tile_x, 0x18);
            __CutsceneEnd();
        }
        API_SetFlag(0x302);
    } else {
        if (API_GetFlag(0x302) != 0) {
            __CutsceneStart();
            __CutsceneWait(0x28);
            __PlaySound(0xdc);
            __MapActor_DoAnim(0x11, 2);
            tile_x = 0x24;
            __Func_8010704(1, 1, 1, 1, tile_x, 0x16);
            __Func_8010704(1, 2, 1, 1, tile_x, 0x18);
            __CutsceneEnd();
        }
        API_ClearFlag(0x302);
    }
}

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

void OvlFunc_920_20084b4(void);
void OvlFunc_920_20084e8(void);
void OvlFunc_920_2008538(void);

int BilibinCave_MapInit(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_31) {
        OvlFunc_920_20084b4();
    } else if (a == (int)Lconst_30) {
        OvlFunc_920_20084e8();
    } else if (a == (int)Lconst_2f) {
        OvlFunc_920_2008538();
    }
    return 0;
}
void OvlFunc_920_20084b4(void) {
    int __GetFlag(int);
    void __Func_8010704(int, int, int, int, int, int);
    void __MapActor_SetAnim(int, int);

    if (__GetFlag(0x305)) {
        int a = 8;
        int b = 0xd;
        __Func_8010704(0x1f, 0, 1, 1, a, b);
        __MapActor_SetAnim(8, 0);
    }
}

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
    unsigned char actor_flags = 2;
    int a, b;

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
        API_MapActor_SetPos(8, 0, 0);
        __MapActor_SetAnim(0xf, 5);
        *(unsigned char *)((char *)__MapActor_GetActor(0xf) + 0x55) = 0;
        *(int *)((char *)__MapActor_GetActor(0xf) + 0xc) = 0xfffc0000;
        ptr = (unsigned char *)__MapActor_GetActor(0xf) + 0x23;
        *ptr = actor_flags | *ptr;
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
        API_MapActor_SetPos(0xb, 0x23a0000, 0x1780000);
    }

    if (__GetFlag(0x304)) {
        API_MapActor_SetPos(0xc, 0x23a0000, 0x1780000);
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

extern unsigned int Lm920_1064[] __asm__(".Lm920_1064");
void *__MapActor_GetActor(int);
int __TestCollision(void *, void *);
void __Actor_SetAnim(void *, int);
void __WaitFrames(int);
void __PlaySound(int);
void __Actor_TravelTo(void *, int, int, int);
void __Actor_WaitMovement(void *);
void OvlFunc_920_2008304(void);

void OvlFunc_920_20087f8(void)
{
    unsigned char *isaac;
    unsigned char *obj;
    unsigned int idx;
    int stk[3];
    int col;
    int zero;

    int x, y;

    isaac = (unsigned char *)__MapActor_GetActor(0);
    idx = (*(unsigned short *)(isaac + 6)) >> 12;
    x = (*(short *)(isaac + 0xa) + ((int)(Lm920_1064[idx]) >> 16)) >> 4;
    y = (*(short *)(isaac + 0x12) + (short)(Lm920_1064[idx])) >> 4;
    obj = (unsigned char *)OvlFunc_920_20087c4(x, y);
    if (obj != 0) {
        x = (*(short *)(obj + 0xa) + ((int)(Lm920_1064[idx]) >> 16)) >> 4;
        y = (*(short *)(obj + 0x12) + (short)(Lm920_1064[idx])) >> 4;
        zero = OvlFunc_920_20087c4(x, y);
        if (zero == 0) {
            *(obj + 0x22) = 2;
            stk[0] = *(int *)(obj + 8) + (Lm920_1064[idx] & 0xffff0000);
            stk[1] = *(int *)(obj + 0xc);
            stk[2] = *(int *)(obj + 0x10) + (Lm920_1064[idx] << 16);
            col = __TestCollision(obj, stk);
            if (col <= 0) {
                __Actor_SetAnim(isaac, 8);
                __WaitFrames(0xf);
                __PlaySound(0xb9);
                *(int *)(obj + 0x30) = 0x3333;
                *(int *)(obj + 0x34) = 0x3333;
                __Actor_TravelTo(obj, stk[0], stk[1], stk[2]);
                *(int *)(isaac + 0x30) = 0x3333;
                *(int *)(isaac + 0x34) = 0x3333;
                __Actor_TravelTo(isaac, stk[0], stk[1], stk[2]);
                __Actor_WaitMovement(obj);
                *(int *)(obj + 8) = stk[0];
                *(int *)(obj + 0x10) = stk[2];
                *(int *)(obj + 0x24) = zero;
                *(int *)(obj + 0x2c) = zero;
                __Actor_SetAnim(isaac, 1);
                OvlFunc_920_2008304();
            }
        }
    }
}

void OvlFunc_920_2008904(void) {}

INCLUDE_ASM("asm/maps/bilibin_cave/bilibin_cave_data.s");

INCLUDE_ASM("asm/maps/bilibin_cave/imports.s");
