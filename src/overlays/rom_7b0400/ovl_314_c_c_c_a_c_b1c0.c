typedef struct {
    int unused0[2];
    int x;
    int unused_c;
    int y;
} Actor;

typedef struct {
    unsigned char unused[0x14];
    Actor *actors[0x42];
} ActorState;

extern ActorState *iwram_3001ebc;

void OvlFunc_925_200b1c0(unsigned int *output, int y)
{
    register int base asm("r2") = y;
    register Actor **actors asm("r1") = (Actor **)iwram_3001ebc;
    register int lower asm("r6");
    register int upper asm("r5");
    register unsigned int i asm("r4") = 0;

    base >>= 20;
    base = 0x40 - base;
    lower = base;
    upper = base;
    lower += 8;
    upper += 0xb;
    asm volatile("" : "+r"(actors), "+r"(i), "+r"(lower), "+r"(upper));
    actors = (Actor **)((unsigned char *)actors + 0x14);
    do {
        register Actor *actor asm("r3") = *actors++;

        if (actor != 0) {
            register int actor_x asm("r2") = actor->x;
            register int actor_y asm("r3") = actor->y;

            actor_x >>= 20;
            actor_x -= 4;
            actor_y >>= 20;
            if ((unsigned int)actor_x <= 4 &&
                lower <= actor_y && actor_y < upper)
                *output++ = i;
        }
        i++;
    } while (i <= 0x41);
}
