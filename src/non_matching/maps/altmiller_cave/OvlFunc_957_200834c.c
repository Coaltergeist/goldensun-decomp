extern int L3f0c[] __asm__(".Lm957_3f0c");

void *OvlFunc_957_200834c(int *arg0, void *arg1, void *arg2)
{
    int **list;
    void *e;
    struct Actor *actor;
    unsigned int i;
    unsigned int j;
    int *table;
    int *q;
    int *p;
    short val;
    int t;
    int px, pz;
    short x, z;
    int min_x, min_z, max_x, max_z;

    list = (int **)(*(unsigned int *)iwram_3001ebc + 0x14);
    actor = (struct Actor *)__MapActor_GetActor(0);
    *arg0 = actor->facing >> 12;
    for (i = 8; i <= 0x41; i++) {
        e = list[i];
        p = *(int **)((char *)e + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = L3ef4;
        table = L3f0c;
        for (j = 0; j <= 5; j++, table += 4) {
            if (val == *q++) {
                *(int *)arg2 = j;
                t = L3eb4[*arg0];
                px = ((actor->pos.x >> 16) + (t >> 16)) >> 4;
                pz = ((actor->pos.z >> 16) + (short)t) >> 4;
                x = *(short *)((char *)e + 10);
                z = *(short *)((char *)e + 18);
                min_x = (x + table[0]) >> 4;
                min_z = (z + table[1]) >> 4;
                max_x = (x + table[2]) >> 4;
                max_z = (z + table[3]) >> 4;
                if (min_x <= px && px < max_x && min_z <= pz && pz < max_z) {
                    if (j & 1) {
                        if (min_x != (actor->pos.x >> 20)) {
                            *(int *)arg1 = i;
                            return e;
                        }
                    } else {
                        if (min_z != (actor->pos.z >> 20)) {
                            *(int *)arg1 = i;
                            return e;
                        }
                    }
                }
            }
        }
    }
    return 0;
}
