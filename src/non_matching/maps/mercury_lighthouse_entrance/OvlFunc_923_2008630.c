extern unsigned char *__MapActor_GetActor(unsigned int);
extern int L2758[] __asm__(".Lm923_2758");

void *OvlFunc_923_2008630(int *dir, void *arg1, void *arg2)
{
    unsigned char *actor0;
    unsigned char **actors;
    unsigned char *actor;
    unsigned int i;
    unsigned int j;
    int *q;
    int *shape;
    short val;
    int step;
    int x, z;
    int x0, z0;
    int min_x, min_z;
    int ax, az;
    int *p;

    actors = (unsigned char **)(*(char **)iwram_3001ebc + 0x14);
    actor0 = __MapActor_GetActor(0);
    *dir = *(unsigned short *)(actor0 + 6) >> 12;

    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        shape = L2758;
        q = L2740;
        for (j = 0; j <= 5; j++, shape += 4) {
            if (val == *q++) {
                *(int *)arg2 = j;

                step = L2700[*dir];
                x = *(int *)(actor0 + 8);
                x0 = ((x >> 16) + (step >> 16)) >> 4;
                z = *(int *)(actor0 + 0x10);
                z0 = ((z >> 16) + (short)step) >> 4;

                ax = *(short *)((char *)actor + 0xa);
                min_x = (ax + shape[0]) >> 4;
                az = *(short *)((char *)actor + 0x12);
                min_z = (az + shape[1]) >> 4;
                ax = (ax + shape[2]) >> 4;
                az = (az + shape[3]) >> 4;

                if (min_x <= x0 && x0 < ax && min_z <= z0 && z0 < az) {
                    if (j & 1) {
                        if (min_x != (x >> 20)) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != (z >> 20)) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    }
                }
            }
        }
    }

    return 0;
}
