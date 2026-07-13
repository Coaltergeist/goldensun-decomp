typedef unsigned char u8;

typedef struct Actor {
    u8 reserved0[0x18];
    int x;
    int y;
} Actor;

extern void _Actor_WaitMovement(Actor *actor);

void Func_8098184(Actor *actor)
{
    if (actor != 0) {
        register int position asm("r2") = actor->x;
        register int maximum asm("r3") = 0xffff;

        if (position <= maximum) {
            register int increment asm("r1") = 0x1000;
            register int limit asm("r12") = maximum;
            register int next asm("r3");

            do {
                next = position + increment;
                position = next;
            } while (next <= limit);
            actor->x = next;
            actor->y = next;
        }
        _Actor_WaitMovement(actor);
    }
}
