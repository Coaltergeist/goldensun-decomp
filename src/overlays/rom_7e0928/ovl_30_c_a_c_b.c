/* Cluster OvlFunc_956_20086a4..OvlFunc_956_20086a4 extracted from goldensun/asm/overlays/rom_7e0928/ovl_30_c_a_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e0928/ovl_30_c_a_c_a.o and asm/overlays/rom_7e0928/ovl_30_c_a_c_c.o in
 * goldensun/overlays/rom_7e0928/overlay.ld.
 */
#include "actor.h"

int OvlFunc_956_20086a4(int arg0, int arg1)
{
    struct Actor *actor;
    int x0, z0;

    if (__Func_8012038(0, arg0, arg1) == 0xff)
        return -2;
    x0 = arg0 >> 20;
    z0 = arg1 >> 20;
    if ((actor = (struct Actor *)__MapActor_GetActor(0xf),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x10),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0) ||
        (actor = (struct Actor *)__MapActor_GetActor(0x11),
            actor->pos.x >> 20 == x0 && actor->pos.z >> 20 == z0))
        return -1;
    return 0;
}
