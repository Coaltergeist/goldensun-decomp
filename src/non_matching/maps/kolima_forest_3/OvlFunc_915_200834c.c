extern int Lf68[] __asm__(".Lm915_f68");

void *OvlFunc_915_200834c(int *arg0, void *arg1, void *arg2)
{
    char *base;
    void *actor;
    unsigned int j;
    unsigned int k;
    void *obj;
    int *p;
    short val;
    int *q;
    int *entry;
    int t;
    int actor_x;
    int actor_z;
    int x;
    int z;
    short ox;
    short oz;
    int x1, z1, x2, z2;

    base = *(char **)iwram_3001ebc;
    actor = __MapActor_GetActor(0);
    *arg0 = *(unsigned short *)((char *)actor + 6) >> 12;

    for (j = 8; j <= 0x41; j++) {
        obj = ((void **)(base + 0x34))[j - 8];
        p = *(int **)((char *)obj + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        q = Lf50;
        entry = Lf68;
        for (k = 0; k <= 5; k++, entry += 4) {
            if (val == *q++) {
                *(int *)arg2 = k;
                t = Lf10[*arg0];
                actor_x = *(int *)((char *)actor + 8);
                x = ((actor_x >> 16) + (t >> 16)) >> 4;
                actor_z = *(int *)((char *)actor + 0x10);
                z = ((actor_z >> 16) + (short)t) >> 4;

                ox = *(short *)((char *)obj + 10);
                oz = *(short *)((char *)obj + 18);
                x1 = (ox + entry[0]) >> 4;
                z1 = (oz + entry[1]) >> 4;
                x2 = (ox + entry[2]) >> 4;
                z2 = (oz + entry[3]) >> 4;

                if (x1 <= x && x < x2 && z1 <= z && z < z2) {
                    if (k & 1) {
                        if (x1 != actor_x >> 20) {
                            *(int *)arg1 = j;
                            return obj;
                        }
                    } else {
                        if (z1 != actor_z >> 20) {
                            *(int *)arg1 = j;
                            return obj;
                        }
                    }
                }
            }
        }
    }

    return 0;
}
