typedef unsigned char u8;

struct Actor {
    u8 pad00[8];
    int x;
    u8 pad0c[4];
    int y;
};

extern struct Actor *__MapActor_GetActor(int actor);

int OvlFunc_959_2009918(int actor_id)
{
    register struct Actor *actor asm("r5") = __MapActor_GetActor(actor_id);
    register struct Actor *player_result asm("r0") = __MapActor_GetActor(0);
    register struct Actor *player asm("r3");
    register int actor_y asm("r1");
    register int actor_x asm("r4");
    register int player_y asm("r2");
    register int player_x asm("r3");
    register int dx asm("r3");
    register int dy asm("r0");

    {
        register int raw_y asm("r2") = actor->y;
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
    dx = actor_x - player_x;
    actor_y++;
    asm volatile("" : "+r" (dx), "+r" (actor_y));

    if (dx < 0)
        dx = -dx;
    dy = actor_y - player_y;
    asm volatile("" : "+r" (dy));
    if (dy < 0)
        dy = -dy;
    {
        register int distance asm("r3") = dx + dy;
        asm volatile("" : "+r" (distance));
    {
        register int result asm("r0") = 1;
        if (distance > 4)
            result = 0;
        return result;
    }
    }
}
