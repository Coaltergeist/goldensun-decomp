/* rom_79aad8 (overlay file 906): consolidated TU — goma_cave map overlay. */

#include "nonmatching.h"

INCLUDE_ASM("asm/maps/goma_cave/GomaCave_GetEntrances.s");

unsigned int GomaCave_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02008920[];

void *GomaCave_GetExits(void) {
    return (void *)gOvl_02008920;
}

INCLUDE_ASM("asm/maps/goma_cave/GomaCave_GetActors.s");

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

typedef struct { unsigned char _bytes[704]; } GlobalState;
extern GlobalState gState;
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
INCLUDE_ASM("asm/maps/goma_cave/GomaCave_MapInit.s");

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

INCLUDE_ASM("asm/maps/goma_cave/OvlFunc_906_20084f4.s");
