int OvlFunc_969_20084bc(void)
{
    extern unsigned char iwram_3001ebc[];
    struct Actor *leader;
    struct Actor **actor_ptr;
    int best_id;
    int min_dist;
    unsigned int i;

    actor_ptr = (struct Actor **)*(unsigned char **)iwram_3001ebc;
    best_id = 0;
    leader = (struct Actor *)__MapActor_GetActor(0);
    min_dist = 0xa0 << 2;
    actor_ptr = (struct Actor **)((unsigned char *)actor_ptr + 0x34);

    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = *actor_ptr++;
        if (actor != NULL) {
            if ((s16)actor->sprite->layers[0]->spriteID == 0xf2) {
                int dist = OvlFunc_969_2008480((int *)&leader->pos, (int *)&actor->pos);
                if (dist < min_dist) {
                    min_dist = dist;
                    best_id = i;
                }
            }
        }
    }

    return best_id;
}
