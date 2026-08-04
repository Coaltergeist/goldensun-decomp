/* Cluster Func_80b7f20..Func_80b7f20 extracted from goldensun/asm/rom_b5000/rom_b7410_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_c_a_c_a.o and asm/rom_b5000/rom_b7410_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern void **GetBattleActor(unsigned int unit);
extern unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1);
extern int Func_80b7ed8(void);
extern s32 PhysMove(vec3_t *src, vec3_t *dst);

int Func_80b7f20(unsigned int unitID, vec3_t *dest)
{
    struct Actor *actor;
    fx32 *tbl;
    vec3_t local;
    fx32 a;

    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    local.x = actor->pos.x;
    local.y = actor->pos.y;
    local.z = actor->pos.z;
    a = PhysMove(&local, dest);
    fx32_multiply(a, tbl[6]);
    return 0;
}
