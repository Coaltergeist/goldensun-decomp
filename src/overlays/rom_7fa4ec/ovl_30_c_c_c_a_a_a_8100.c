#include "actor.h"

extern int __Random(void);
extern void __Actor_SetAnim(struct Actor *actor, int animation);
extern void __Actor_SetScript(struct Actor *actor, const void *script);
extern const unsigned char gScript_970__020094c4[];

void OvlFunc_970_2008100(struct Actor *actor)
{
    unsigned char *base = (unsigned char *)actor;
    short v64;
    int rand1;
    int rand2;

    v64 = *(short *)(base + 0x64);
    if (v64 != 0) {
        *(short *)(base + 0x64) -= 1;
        rand1 = __Random();
        rand2 = __Random();
        actor->pos.x += rand1 - rand2;
        actor->pos.y += 0xcccc;
    } else if (*(short *)(base + 0x66) != 0) {
        *(short *)(base + 0x66) = v64;
        __Actor_SetAnim(actor, 1);
        actor->waitTimer = 0x14;
        __Actor_SetScript(actor, gScript_970__020094c4);
    }
}
