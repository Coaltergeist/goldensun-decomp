typedef unsigned char u8;
typedef int s32;

struct ActorSub {
    u8 pad00[0x1d];
    u8 flags;
};

struct Actor {
    u8 pad00[8];
    s32 x;
    u8 pad0c[4];
    s32 y;
    u8 pad14[0x3c];
    struct ActorSub *sub;
    u8 marker;
};

extern u8 *iwram_3001ebc;
extern void _DeleteActor(struct Actor *actor);

void Func_808b8e8(void)
{
    u8 *state = iwram_3001ebc;
    struct Actor *target = *(struct Actor **)(state + 0x1e0);
    s32 x = target->x;
    s32 xLo = x - 0xa00000;
    s32 xHi = x + 0xa00000;
    s32 y = target->y;
    s32 yLo = y - 0xc80000;
    s32 yHi = y + 0x640000;
    struct Actor **slot = (struct Actor **)(state + 0x34);
    register s32 mask asm("r11") = -2;
    s32 remaining = 0x39;

    do {
        struct Actor *actor = *slot;
        if (actor != 0) {
            s32 ax = actor->x;
            s32 ay = actor->y;
            if ((ax != 0 || ay != 0) &&
                (ax < xLo || ax > xHi || ay < yLo || ay > yHi)) {
                actor->marker = 1;
                actor->sub->flags &= mask;
                _DeleteActor(actor);
                *slot = 0;
            }
        }
        remaining--;
        slot++;
    } while (remaining >= 0);
}
