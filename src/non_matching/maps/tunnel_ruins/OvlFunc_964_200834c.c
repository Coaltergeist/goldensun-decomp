extern int L3248[] __asm__(".Lm964_3248");
extern unsigned char *__MapActor_GetActor(unsigned int);

void *OvlFunc_964_200834c(int *arg0, void *arg1, void *arg2)
{
    struct Actor **actors;
    struct Actor *actor0;
    unsigned int i;
    unsigned int j;
    short val;
    int *q;
    int *e;
    int t;
    int min_x, min_z, max_x, max_z;
    int target_x, target_z;
    short ax, az;
    int *p;

    actors = (struct Actor **)(*(char **)iwram_3001ebc + 0x14);
    actor0 = (struct Actor *)__MapActor_GetActor(0);
    *arg0 = actor0->facing >> 12;

    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = actors[i];

        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        q = L3230;
        e = L3248;
        for (j = 0; j <= 5; j++, e += 4) {
            if (val == *q++) {
                *(int *)arg2 = j;

                t = L31f0[*arg0];
                target_x = ((actor0->pos.x >> 16) + (t >> 16)) >> 4;
                target_z = ((actor0->pos.z >> 16) + (short)t) >> 4;

                ax = *(short *)((char *)actor + 10);
                min_x = (ax + e[0]) >> 4;
                az = *(short *)((char *)actor + 18);
                min_z = (az + e[1]) >> 4;
                max_x = (ax + e[2]) >> 4;
                max_z = (az + e[3]) >> 4;

                if (min_x <= target_x && target_x < max_x &&
                    min_z <= target_z && target_z < max_z) {
                    if (j & 1) {
                        if (min_x != actor0->pos.x >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != actor0->pos.z >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    }
                }
            }
        }
    }
    return NULL;
}
