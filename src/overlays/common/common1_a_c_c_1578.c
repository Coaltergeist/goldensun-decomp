#include "actor.h"

extern struct Actor *__GetFieldActor(int actorNo);
extern void __Actor_Stop(struct Actor *actor);
extern void __Actor_SetAnim(struct Actor *actor, int animNo);
extern void __Actor_TravelTo(struct Actor *actor, int x, int y, int z);

/* フィールドアクターを指定位置まで歩かせる。 */
void OvlFunc_common1_1578(int actorNo, int x, int z) {
    struct Actor *actor;
    register int work asm("r3");
    register unsigned int zero asm("r2");

    actor = __GetFieldActor(actorNo);
    if (actor != 0) {
        work = 0x80;
        work <<= 10;
        actor->speed = work;
        asm volatile("" : "+r"(work));
        work >>= 1;
        actor->bounce = work;
        work = (int)actor;
        zero = 0;
        work += 0x5b;
        *(unsigned char *)work = zero;
        __Actor_Stop(actor);
        __Actor_SetAnim(actor, 5);
        __Actor_TravelTo(actor, x << 16, actor->pos.y, z << 16);
    }
}
