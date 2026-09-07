/* rom_79aad8 (overlay file 906): consolidated TU — goma_cave map overlay.
 * Built with -fno-strict-aliasing (per-file Makefile rule): OvlFunc_906_20084f4
 * only matches the ROM with type-based alias analysis off. */

#include "nonmatching.h"
#include "actor.h"

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;

extern unsigned char Lconst_1d[] __asm__(".Lconst_1d");
__asm__(".equ .Lconst_1d, 0x1d");

extern unsigned char Lm906_8d8[] __asm__(".Lm906_8d8");
extern unsigned char Lm906_818[] __asm__(".Lm906_818");

void *GomaCave_GetEntrances(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_1d) {
        return Lm906_8d8;
    }
    return Lm906_818;
}

unsigned int GomaCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008920[];

void *GomaCave_GetExits(void) {
    return (void *)gOvl_02008920;
}

extern unsigned char Lm906_978[] __asm__(".Lm906_978");
extern unsigned char Lm906_948[] __asm__(".Lm906_948");

void *GomaCave_GetActors(void)
{
    int offset;
    short a;

    offset = 0xe0;
    offset <<= 1;
    a = *(short *)((char *)&gState + offset);
    if (a == (int)Lconst_1d) {
        return Lm906_978;
    }
    return Lm906_948;
}

extern void OvlFunc_906_20084f4(int a);

void OvlFunc_906_2008380(void)
{
  int arg6;
  int val;
  int arg5;
  int actor;
  unsigned char *p;
  unsigned char v;

  val = *((int *) ((int) __MapActor_GetActor(8) + 8));
  if (val <= (0 - 1))
  {
    val += 0xfffff;
  }
  val >>= 20;
  if (val == 0x18)
  {
    OvlFunc_906_20084f4(8);
    p = (unsigned char *) __MapActor_GetActor(8);
    p += 0x23;
    v = 2;
    v |= *p;
    *p = v;
    arg6 = 0x11;
    arg5 = 0x13;
    __Func_8010704(0x13, 0x4a, 9, 3, arg5, arg6);
    actor = (int) __MapActor_GetActor(8);
    __Actor_SetSpriteFlags(actor, 0);
    __SetFlag(0x864);
  }
}

extern unsigned char _EVENT_1d[];
extern unsigned char Lm906_9f0[] __asm__(".Lm906_9f0");
extern unsigned char Lm906_990[] __asm__(".Lm906_990");

int GomaCave_GetEvents(void)
{
    GlobalState *p = &gState;
    int ev = *(short *)((char *)p + 0x1c0);
    if (ev == (int)_EVENT_1d) return (int)Lm906_9f0;
    return (int)Lm906_990;
}
extern unsigned char iwram_3001ebc[];
extern unsigned char Lconst_1c[] __asm__(".Lconst_1c");
__asm__(".equ .Lconst_1c, 0x1c");

int GomaCave_MapInit(void) {
    unsigned int r2;
    unsigned int r3;
    unsigned char *r1;
    unsigned char *p;
    unsigned char v;
    int arg5, arg6;

    r2 = 0xe0;
    r1 = *(unsigned char **)iwram_3001ebc;
    r3 = 0x81 << 2;
    r2 <<= 1;
    *(int *)(r1 + r2) = r3;
    if (*(short *)((char *)&gState + r2) == (int)Lconst_1c) {
        r2 = 0xe1;
        r2 <<= 1;
        if (*(short *)((char *)&gState + r2) == 5) {
            __ClearFlag(0x12f);
        } else {
            p = (unsigned char *)__MapActor_GetActor(8);
            p += 0x59;
            v = 0x10;
            v |= *p;
            *p = v;
            if (__GetFlag(0x864) != 0) {
                __MapActor_SetPos(8, 0xad << 17, 0x92 << 17);
                __Actor_SetSpriteFlags(__MapActor_GetActor(8), 0);
                *(unsigned char *)(__MapActor_GetActor(8) + 0x23) |= 2;
                __MapActor_SetAnim(8, 2);
                arg5 = 0x13;
                arg6 = 0x11;
                __Func_8010704(0x13, 0x4a, 9, 3, arg5, arg6);
            }
        }
    }
    return 0;
}

void OvlFunc_906_20084c4(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffff800;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}

extern void __WaitFrames(int);

void OvlFunc_906_20084d4(int arg0, int arg1)
{
    int r5;

    r5 = 0x3c;
    while (r5 != 0) {
        __WaitFrames(1);
        r5--;
        if (*(int *)((char *)arg0 + 0xc) <= arg1)
            break;
    }
}

extern void __MapActor_SetSpeed(int, int, int);
extern void __MapActor_TravelTo(int, int, int);
extern void __MapActor_WaitMovement(int);
extern void __PlaySound(int);
extern void __Func_8012330(int, int, int);
extern void __Func_8012350(void);
extern void __MapActor_SetAnim(int, int);
extern void OvlFunc_common0_10c(int, int, int, int, int, int, int, void *);

extern void OvlFunc_906_20084c4(unsigned int arg0);
extern void OvlFunc_906_20084d4(int arg0, int arg1);

static inline void Func_8012330_macro(int a, int b, int c)
{
    __Func_8012330(-a, -b, c);
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

void OvlFunc_906_20084f4(int id)
{
    struct Actor *actor;
    unsigned int i;
    int v[3];
    struct EffectData data;
    int amp = 0xa0 << 11;
    int sx = 0xc0 << 10;
    int sy = 0xc0 << 9;
    int tx = 0xbc << 1;
    int ty = 0x90 << 1;
    int tx2 = 0xad << 1;
    int ty2 = 0x92 << 1;

    actor = __MapActor_GetActor(id);
    actor->__unk55 = 0;
    
    for (i = 0; i <= 17; i++) {
        __WaitFrames(1);
        actor->sprite->rotation -= 0x100;
        actor->pos.x -= __cos(actor->sprite->rotation) / 2; 
        actor->prevPos.x = 0x80 << 24;
    }
    
    actor->update = (actorfun_t *)OvlFunc_906_20084c4;
    __MapActor_SetSpeed(id, sx, sy);
    __MapActor_TravelTo(id, tx, ty);
    actor->gravity = 0xcccc;
    actor->__unk55 = 3;
    actor->layer = 0;
    __MapActor_WaitMovement(id);
    OvlFunc_906_20084d4((int)actor, 0);
    __PlaySound(0xbc);
    __Func_8012330(amp, amp, 0x80 << 9);
    __PlaySound(0x8d);
    Func_8012330_macro(1, 1, 0xe666);
    
    for (i = 0; i <= 16; i++) {
        v[0] = __cos(i << 12);
        v[1] = 0;
        v[2] = __sin(i << 12);
        v[0] -= v[0] / 4;
        v[2] -= v[2] / 2;
        OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z, v[0], v[1], v[2], 0, 0);
    }
    
    actor->motion.y = 0xa0 << 11;
    __MapActor_TravelTo(id, tx2, ty2);
    __MapActor_WaitMovement(id);
    OvlFunc_906_20084d4((int)actor, 0);
    actor->update = 0;
    actor->sprite->rotation = 0x80 << 5;
    
    data.unk18 = 0xd6;
    data.unk8 = 0x80 << 8;
    data.unkc = 0xcccc;
    data.unk10 = 0xc0 << 9;
    data.unk14 = 0x13333;
    
    OvlFunc_common0_10c(actor->pos.x, actor->pos.y, actor->pos.z, 0, 0, 0, 0xe0 << 13, &data);
    __PlaySound(0x9a);
    __MapActor_SetAnim(id, 3);
    __Func_8012350();
}
INCLUDE_ASM("asm/maps/goma_cave/goma_cave_data.s");
