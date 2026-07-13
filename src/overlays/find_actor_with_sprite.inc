typedef unsigned char u8;
typedef signed short s16;

extern u8 *iwram_3001ebc;
extern u8 *__MapActor_GetActor(int actor_id);
extern int FIND_ACTOR_DISTANCE_FUNCTION(const void *a, const void *b);

int FIND_ACTOR_FUNCTION(void)
{
    register u8 **base asm("r3") = &iwram_3001ebc;
    register int zero asm("r2");
    register int actor_id asm("r0");
    register u8 **entry asm("r5");
    register int result asm("r8");
    register u8 *player_result asm("r0");
    register u8 *player asm("r10");
    register int best_distance asm("r7");
    register unsigned int index asm("r6");

    asm volatile("" : "+r"(base));
    zero = 0;
    asm volatile("" : "+r"(base), "+r"(zero));
    actor_id = 0;
    asm volatile("" : "+r"(base), "+r"(zero), "+r"(actor_id));
    entry = (u8 **)*base;
    asm volatile("" : "+r"(entry), "+r"(zero), "+r"(actor_id));
    result = zero;
    asm volatile("" : "+r"(entry), "+r"(result), "+r"(actor_id));
    player_result = __MapActor_GetActor(actor_id);
    best_distance = 0xa0;
    asm volatile("" : "+r"(best_distance), "+r"(player_result));
    best_distance <<= 2;
    asm volatile("" : "+r"(best_distance), "+r"(player_result));
    player = player_result;
    asm volatile("" : "+r"(player), "+r"(best_distance));
    index = 8;
    asm volatile("" : "+r"(player), "+r"(index));
    entry = (u8 **)((u8 *)entry + 0x34);

    do {
        u8 *actor = *entry++;

        if (actor != 0 &&
            **(s16 **)(*(u8 **)(actor + 0x50) + 0x28) == 0xf2) {
            register u8 *player_position asm("r0") = player;
            register u8 *actor_position asm("r1") = actor;
            int distance;

            asm volatile("" : "+r"(player_position), "+r"(actor_position));
            actor_position += 8;
            asm volatile("" : "+r"(player_position), "+r"(actor_position));
            player_position += 8;
            asm volatile("" : "+r"(player_position), "+r"(actor_position));
            distance = FIND_ACTOR_DISTANCE_FUNCTION(player_position, actor_position);

            if (distance < best_distance) {
                best_distance = distance;
                result = index;
            }
        }
        index++;
    } while (index <= 0x41);

    return result;
}
