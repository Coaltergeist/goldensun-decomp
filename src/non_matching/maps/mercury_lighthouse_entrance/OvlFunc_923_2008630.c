extern unsigned char *__MapActor_GetActor(unsigned int);
extern int L2758[] __asm__(".Lm923_2758");

void *OvlFunc_923_2008630(int *dir, void *arg1, void *arg2)
{
    unsigned char *actor0;
    unsigned char **actors;
    unsigned char *actor;
    unsigned int i;
    int j;
    int *q;
    int *shape;
    short val;
    int x0, z0;
    int min_x, min_z, max_x, max_z;
    short ax, az;
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

                x0 = ((*(int *)(actor0 + 8) >> 16) + ((int)L2700[*dir] >> 16)) >> 4;
                z0 = ((*(int *)(actor0 + 0x10) >> 16) + (short)L2700[*dir]) >> 4;

                ax = *(short *)((char *)actor + 0xa);
                az = *(short *)((char *)actor + 0x12);

                min_x = (ax + shape[0]) >> 4;
                min_z = (az + shape[1]) >> 4;
                max_x = (ax + shape[2]) >> 4;
                max_z = (az + shape[3]) >> 4;

                if (min_x <= x0 && x0 < max_x && min_z <= z0 && z0 < max_z) {
                    if (j & 1) {
                        if (min_x != (*(int *)(actor0 + 8) >> 20)) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != (*(int *)(actor0 + 0x10) >> 20)) {
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
