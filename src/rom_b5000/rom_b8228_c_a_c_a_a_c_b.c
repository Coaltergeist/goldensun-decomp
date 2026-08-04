/* Cluster Func_80b84c0..Func_80b84c0 extracted from goldensun/asm/rom_b5000/rom_b8228_c_a_c_a_a_c.s.
 *
 * Total .text for this TU = 112 bytes (= 0x70).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b8228_c_a_c_a_a_c_a.o and asm/rom_b5000/rom_b8228_c_a_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
#include "gba/types.h"
#include "actor.h"
#include "math.h"
extern void **GetBattleActor(unsigned int unit);
extern unsigned int Func_80b7f70(unsigned int arg0, unsigned int arg1);
extern int Func_80b7ed8(void);
extern s32 PhysMove(vec3_t *src, vec3_t *dst);
extern unsigned char *_GetUnit(unsigned int arg0);
extern int GetEnemyAttackAnimUnk(unsigned int arg0);

int Func_80b84c0(unsigned int unitID, vec3_t *dest)
{
    fx32 *tbl;
    struct Actor *actor;
    fx32 tmp;
    unsigned char *unit;

    actor = *(struct Actor **)GetBattleActor(unitID);
    tbl = (fx32 *)Func_80b7f70((unsigned int)actor, 0);
    Func_80b7ed8();
    tmp = fx32_multiply(PhysMove(&actor->pos, dest), tbl[6]);
    unit = _GetUnit(unitID);
    if (GetEnemyAttackAnimUnk(*(unsigned char *)(unit + 0x128)) != 0) {
        dest->y -= fx32_multiply(tmp, 0x18);
    } else {
        dest->y -= fx32_multiply(tmp, 0x30);
    }
    return 0;
}
