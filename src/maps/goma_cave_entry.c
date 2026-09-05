// fakematch
/* rom_798dc4 (overlay file 903): consolidated TU — goma_cave_entry map overlay. */

#include "nonmatching.h"

extern void __ActorMessage(unsigned int arg0, unsigned int arg1);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_903_2008314(unsigned int arg0, unsigned int arg1)
{
	__ActorMessage(arg0, 0);
	__CutsceneWait(arg1);
}

extern unsigned char gOvl_020092f8[];

unsigned int GomaCaveEntry_GetEntrances(void) {
    return (unsigned int)gOvl_020092f8;
}

int GomaCaveEntry_GetSpecialExits(void) {
    return 0;
}

extern unsigned char gOvl_02009358[];

unsigned int GomaCaveEntry_GetExits(void) {
    return (unsigned int)gOvl_02009358;
}
extern unsigned char gOvl_02009368[];

unsigned int GomaCaveEntry_GetActors(void) {
    return (unsigned int)gOvl_02009368;
}

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008348.s");

void OvlFunc_903_20083d0(void)
{
  int actor;
  int x;
  int val;
  int val2;
  int zero;

  x = *((int *) (((int) __MapActor_GetActor(10)) + 8));
  if (x <= (0 - 1))
  {
    x += 0xfffff;
  }
  val = x >> 20;
  if (val == 0x17)
  {
    __CutsceneWait(10);
    actor = (int) __MapActor_GetActor(10);
    actor += 0x23;
    *((char *) actor) = 2;
    zero = 0;
    actor = (int) __MapActor_GetActor(10);
    actor += 0x55;
    *((char *) actor) = zero;
    actor = (int) __MapActor_GetActor(10);
    __Actor_SetSpriteFlags(actor, 0);
    val2 = 0x11;
    __Func_8010704(0x36, val2, 1, 1, val, val2);
    __SetFlag(0x863);
  }
}

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_200843c.s");

void OvlFunc_903_20084cc(void) {}

void OvlFunc_903_20084d0(void) {}

void OvlFunc_903_20084d4(void) {
    __CutsceneStart();
    __SetFlag(0x866);
    __CutsceneEnd();
}

extern unsigned char gOvl_02009488[];

void *GomaCaveEntry_GetEvents(void) {
    return (void *)gOvl_02009488;
}

INCLUDE_ASM("asm/maps/goma_cave_entry/GomaCaveEntry_MapInit.s");
INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_200867c.s");
INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008d04.s");
INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008d68.s");

void OvlFunc_903_2008da8(unsigned int arg0) {
    unsigned int r2;
    unsigned int r1;
    unsigned short r3;

    r2 = *(unsigned int *)(arg0 + 0x50);
    r1 = 0xfffff800;
    r3 = *(unsigned short *)(r2 + 0x1e);
    r3 += r1;
    *(unsigned short *)(r2 + 0x1e) = r3;
}

extern void __WaitFrames(unsigned int x);

void OvlFunc_903_2008db8(unsigned char *arg0, int arg1) {
    int i;

    for (i = 0x3c; i != 0; i--) {
        __WaitFrames(1);
        if (*(int *)(arg0 + 0xc) <= arg1)
            break;
    }
}

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008dd8.s");

void OvlFunc_903_2008f8c(unsigned int arg0, unsigned int arg1in)
{
    register unsigned int arg1 __asm__("r8") = arg1in;
    unsigned short *unit;
    int i;

    unit = (unsigned short *)__GetUnit(arg0, arg1);
    __GiveItemTo(arg0, arg1);
    i = 0;
    unit = (unsigned short *)((char *)unit + 0xd8);
    while (i <= 14) {
        if (*unit++ == arg1) {
            __EquipItem(arg0, i);
        }
        i++;
    }
}

INCLUDE_ASM("asm/maps/goma_cave_entry/OvlFunc_903_2008fc8.s");
INCLUDE_ASM("asm/maps/goma_cave_entry/goma_cave_entry_data.s");
