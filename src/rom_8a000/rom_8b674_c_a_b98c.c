typedef unsigned char u8;

struct ActorSub {
    u8 pad00[0x1d];
    u8 flags;
};

struct Actor {
    u8 pad00[0x50];
    struct ActorSub *sub;
    u8 marker;
};

extern u8 *iwram_3001ebc;
extern void _DeleteActor(struct Actor *actor);
extern int FindMapActorSlot(void);
extern void LoadMapActors(int map, int slot);

void Func_808b98c(void)
{
    register u8 *state asm("r5") = iwram_3001ebc;
    register int zero asm("r10") = 0;
    register int offset asm("r6") = 0x34;
    register int mask asm("r8") = -2;
    register int remaining asm("r7") = 0x39;

    do {
        struct Actor *actor = *(struct Actor **)((unsigned int)offset + (unsigned int)state);
        if (actor != 0) {
            actor->marker = 1;
            actor->sub->flags &= mask;
            _DeleteActor(actor);
            *(int *)((unsigned int)offset + (unsigned int)state) = zero;
        }
        remaining--;
        offset += 4;
    } while (remaining >= 0);

    {
        register int map asm("r6") = *(int *)(state + 4);
        *(int *)(state + 4) = 0;
        *(int *)(state + 8) = 0;
        *(int *)(state + 12) = 0;
        if (map != 0)
            LoadMapActors(map, FindMapActorSlot());
    }
}
