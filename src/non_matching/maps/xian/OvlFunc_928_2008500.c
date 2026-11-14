/* Remaining diff: target avoids call-used r4 at the > 0x77 branch, spilling &actor->__unk62
 * into r12 (ip) and reloading QImode 0 from a literal pool (.word 0), whereas camelot-gcc
 * with -fcall-used-r4 uses r4 for the 0x182 offset calculation and movs r3, #0.
 */
#include "actor.h"

extern void *__MapActor_GetActor(int);
extern int OvlFunc_928_2008408(struct Actor *, struct Actor *, int, int);
extern unsigned char *iwram_3001ebc;

static inline void CS928_Half(unsigned short *p, int value) { *p = value; }

int OvlFunc_928_2008500(struct Actor *actor)
{
    struct Actor *leader;
    u8 flag = 0;
    int leader_x;
    int actor_x;

    if (actor->prevPos.x == (0x80 << 24) && actor->prevPos.z == actor->prevPos.x) {
        return 0;
    }

    leader = (struct Actor *)__MapActor_GetActor(0);
    leader_x = leader->pos.x;

    if ((leader_x >> 20) >= 17 && (leader_x >> 20) <= 18
        && (leader->pos.z >> 20) == 14
        && ((actor_x = actor->pos.x) >> 20) <= 19
        && actor->motion.x <= 0) {
        if (leader_x <= actor_x) {
            actor->__unk62++;
            flag = 1;
        }
    } else {
        actor->__unk62 = 0;
    }

    if (flag && actor->__unk62 > 0x77) {
        CS928_Half((u16 *)(iwram_3001ebc + 0x182), 0xc8);
        actor->__unk62 = 0;
    }

    OvlFunc_928_2008408(actor, leader, 0x12, flag);
    return 0;
}
