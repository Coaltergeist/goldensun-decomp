/* Cluster Func_80b845c..Func_80b845c extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c_a_a.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_a_a_a.o and asm/rom_b5000/rom_b8228_c_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern void **GetBattleActor(unsigned int unit);
extern unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1);
extern int Func_80b7ed8(void);
extern s32 PhysMove(vec3_t *src, vec3_t *dst);
extern int Func_80b8530(unsigned int unit);

int Func_80b845c(unsigned int unitID, vec3_t *dest)
{
    fx32 *tbl;
    struct Actor *actor;
    vec3_t junk;

    (void)&junk;
    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    dest->y -= fx32_multiply(fx32_multiply(PhysMove(&actor->pos, dest), tbl[6]), Func_80b8530(unitID) >> 16);
    return 0;
}
