/* Near-match: stack frame (`sub sp, #8`, `b` at `[sp, #4]`, `result` at `[sp, #0]`),
 * PRE of `&actor->__unk62`, and eager 3-way angle mask block (`+0x74..+0x9a`) all match.
 * Remaining diff: `global.c` allocno priority ranks `&target->pos`/`&actor->pos` (`r6`/`r7`)
 * ahead of `c` (`r8`) and `&actor->__unk62` (`sl`) ahead of `&actor->stop` (`r9`), whereas
 * target allocated `c` -> `r6`, `&target->pos` -> `r7`, `&actor->pos` -> `r8`,
 * `&actor->stop` -> `sl`, `&actor->__unk62` -> `r9` (which also prevents `jump2` from
 * cross-jumping the final `strb` across the two branches).
 */
#include "actor.h"

extern int OvlFunc_883_200d610(int *a, int *b);
extern int __atan2(int, int);
extern void __Actor_SetAnim(struct Actor *, int);

int OvlFunc_883_200d64c(struct Actor *actor, struct Actor *target, int b, int c)
{
    int result = 0;

    if (actor->stop == 1 && actor->__unk62 == 0) {
        __Actor_SetAnim(actor, 1);
        return 1;
    }

    do {
        if (OvlFunc_883_200d610(&target->pos.x, &actor->pos.x) < b || c != 0) {
            u16 raw = __atan2(target->pos.z - actor->pos.z, target->pos.x - actor->pos.x);
            int a2 = (raw - 0x1000) & 0xf000;
            int a1 = (raw + 0x1000) & 0xf000;
            int a0 = raw & 0xf000;
            int facing = actor->facing & 0xf000;

            if (a0 == facing || a1 == facing || a2 == facing || c != 0) {
                actor->stop = 1;
                __Actor_SetAnim(actor, 1);
                result = 1;
                actor->__unk62 = 1;
                break;
            }
        }

        actor->stop = c;
        __Actor_SetAnim(actor, 2);
        actor->__unk62 = c;
    } while (0);

    return result;
}
