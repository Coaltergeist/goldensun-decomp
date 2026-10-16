extern unsigned char *__MapActor_GetActor(unsigned int);
extern int iwram_3001ebc;
extern int Lf20[] __asm__(".Lm914_f20");

void *OvlFunc_914_200834c(int *arg0, void *arg1, void *arg2)
{
    void **actor_ptr = (void **)(iwram_3001ebc + 0x34);
    void *actor0 = __MapActor_GetActor(0);
    int i;
    int j;

    *arg0 = *(unsigned short *)((char *)actor0 + 6) >> 12;
    for (i = 8; i <= 0x41; i++, actor_ptr++) {
        void *actor = *actor_ptr;
        int *p = *(int **)((char *)actor + 0x50);
        short val;
        int *q = Lf08;
        int *f20 = Lf20;

        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        for (j = 0; j <= 5; j++, f20 += 4) {
            if (val == *q++) {
                int t;
                int actor0_x;
                int actor0_z;
                int x;
                int z;
                short ax;
                short az;
                int min_x;
                int min_z;
                int max_x;
                int max_z;

                *(int *)arg2 = j;
                t = Lec8[*arg0];
                actor0_x = *(int *)((char *)actor0 + 8);
                x = ((actor0_x >> 16) + (t >> 16)) >> 4;
                actor0_z = *(int *)((char *)actor0 + 16);
                z = ((actor0_z >> 16) + (short)t) >> 4;

                ax = *(short *)((char *)actor + 0xa);
                min_x = (ax + f20[0]) >> 4;
                az = *(short *)((char *)actor + 0x12);
                min_z = (az + f20[1]) >> 4;
                max_x = (ax + f20[2]) >> 4;
                max_z = (az + f20[3]) >> 4;

                if (min_x <= x && x < max_x && min_z <= z && z < max_z) {
                    if (j & 1) {
                        if (min_x != actor0_x >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != actor0_z >> 20) {
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
