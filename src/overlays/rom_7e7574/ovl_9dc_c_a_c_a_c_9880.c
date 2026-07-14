typedef unsigned char u8;

struct Actor {
    u8 pad00[8];
    int x;
    u8 pad0c[4];
    int y;
};

extern struct Actor *__MapActor_GetActor(int actor);

int OvlFunc_959_2009880(int actor_id)
{
    register struct Actor *actor asm("r5") = __MapActor_GetActor(actor_id);
    register struct Actor *player_result asm("r0") = __MapActor_GetActor(0);
    register struct Actor *player asm("r1");
    register int actor_y asm("r6");
    register int actor_x asm("r4");
    register int player_y asm("r2");
    register int player_x asm("r3");

    {
        register int raw_y asm("r3") = actor->y;
        player = player_result;
        asm volatile("" : "+r" (raw_y), "+r" (player));
        if (raw_y < 0)
            raw_y += 0xfffff;
        {
            register int raw_x asm("r0") = actor->x;
            actor_y = raw_y >> 20;
            asm volatile("" : "+r" (raw_x), "+r" (actor_y));
            if (raw_x < 0)
                raw_x += 0xfffff;
            {
                register int raw_player_y asm("r2") = player->y;
                actor_x = raw_x >> 20;
                asm volatile("" : "+r" (raw_player_y), "+r" (actor_x));
                if (raw_player_y < 0)
                    raw_player_y += 0xfffff;
                {
                    register int raw_player_x asm("r0") = player->x;
                    player_y = raw_player_y >> 20;
                    asm volatile("" : "+r" (raw_player_x), "+r" (player_y));
                    if (raw_player_x < 0)
                        raw_player_x += 0xfffff;
                    player_x = raw_player_x >> 20;
                    asm volatile("" : "+r" (player_x));
                }
            }
        }
    }

    {
        register unsigned int horizontal asm("r3") = actor_x - player_x + 6;
        register int result asm("r0") = 0;
        asm volatile("" : "+r" (horizontal), "+r" (result));
        if (horizontal > 12)
            goto done;
        {
            register int lower asm("r3") = actor_y - 2;
            if (lower >= player_y)
                goto zero;
            {
                register int upper asm("r3") = actor_y + 2;
                result = 1;
                asm volatile("" : "+r" (upper), "+r" (result));
                if (upper > player_y)
                    goto done;
            }
        }
zero:
        result = 0;
done:
        return result;
    }
}
