void *OvlFunc_934_2008630(int *p_dir, int *p_out, int *p_idx)
{
    unsigned char *base;
    void **actor_list;
    unsigned char *hero;
    unsigned char *actor;
    unsigned int actor_idx;
    unsigned int cmd_idx;
    short val;
    int *cmd_ptr;
    int *box;
    int hero_x;
    int hero_z;
    int tx;
    int tz;
    int bx1;
    int bz1;
    int x1;
    int z1;

    base = *(unsigned char **)iwram_3001ebc;
    hero = __MapActor_GetActor(0);
    *p_dir = *(unsigned short *)(hero + 6) >> 12;
    actor_list = (void **)(base + 0x34);
    actor_idx = 8;
    do {
        actor = *actor_list;
        val = *(short *)(*(int **)(*(char **)(actor + 0x50) + 0x28));
        cmd_ptr = ActorCmd_ARRAY_933__02009e88;
        cmd_idx = 0;
        box = L1ea0;
        do {
            if (val == *cmd_ptr++) {
                int t;
                *p_idx = cmd_idx;
                t = L1e48[*p_dir];
                hero_x = *(int *)(hero + 8);
                tx = ((hero_x >> 16) + (t >> 16)) >> 4;
                hero_z = *(int *)(hero + 16);
                tz = ((hero_z >> 16) + (short)t) >> 4;
                x1 = *(short *)(actor + 10);
                bx1 = (x1 + box[0]) >> 4;
                z1 = *(short *)(actor + 18);
                bz1 = (z1 + box[1]) >> 4;
                x1 = (x1 + box[2]) >> 4;
                z1 = (z1 + box[3]) >> 4;
                if (bx1 <= tx && tx < x1 && bz1 <= tz && tz < z1) {
                    if (cmd_idx & 1) {
                        if (bx1 != hero_x >> 20) {
                            *p_out = actor_idx;
                            return actor;
                        }
                    } else {
                        if (bz1 != hero_z >> 20) {
                            *p_out = actor_idx;
                            return actor;
                        }
                    }
                }
            }
            box += 4;
            cmd_idx++;
        } while (cmd_idx <= 5);
        actor_idx++;
        actor_list++;
    } while (actor_idx <= 0x41);
    return 0;
}
