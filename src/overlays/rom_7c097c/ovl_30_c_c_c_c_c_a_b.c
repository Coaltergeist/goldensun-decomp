/* Cluster OvlFunc_936_200b970..OvlFunc_936_200b970 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_c_c_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
#include "actor.h"
extern struct Actor *__MapActor_GetActor(unsigned int);
extern void __Func_8010704(int, int, int, int, int, int);
extern void __Actor_SetSpriteFlags(struct Actor *, int);
extern void __SetFlag(int);

void OvlFunc_936_200b970(void)
{
  struct Actor *actor;
  unsigned int a;

  actor = __MapActor_GetActor(0xb);
  a = 9;
  __Func_8010704(0, 0, 1, 1, a, 0xe);
  __Func_8010704(0, 0, 1, 1, a, 0x2d);
  if (actor != 0)
  {
    __Actor_SetSpriteFlags(actor, 0);
    actor->pos.y += -0x200000;
    actor->flags = 2;
  }
  __SetFlag(0x201);
}
