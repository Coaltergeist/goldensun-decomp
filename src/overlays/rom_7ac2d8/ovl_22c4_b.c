/* Cluster OvlFunc_924_200a304..OvlFunc_924_200a304 extracted from goldensun/asm/overlays/rom_7ac2d8/ovl_22c4.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ac2d8/ovl_22c4_a.o and asm/overlays/rom_7ac2d8/ovl_22c4_c.o in
 * goldensun/overlays/rom_7ac2d8/overlay.ld.
 */

#include "task.h"
#include "actor.h"

extern void OvlFunc_924_200a2c4(void);
extern void OvlFunc_924_200bb24(fx32, fx32, fx32);
extern u32 __Random(); // Random()
struct Actor* __MapActor_GetActor(int actorID);  

void OvlFunc_924_200a2c4(void) {
    struct Actor* actor = __MapActor_GetActor(9);
    OvlFunc_924_200bb24(actor->pos.x, actor->pos.y + (((__Random() * 4) >> 0x10) << 0x10), actor->pos.z);
}

s32 OvlFunc_924_200a2ec(void) {
    u32 prio = 0xC80;
    __StartTask(OvlFunc_924_200a2c4, prio);
    return 0;
}

unsigned int OvlFunc_924_200a304(void) {
    __StopTask((void *)OvlFunc_924_200a2c4);
    return 0;
}
