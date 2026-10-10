extern unsigned char *__MapActor_GetActor(unsigned int);
extern int gScript_884__0200af50[];

void *OvlFunc_927_200834c(int *arg0, void *arg1, void *arg2)
{
    struct Actor **list;
    struct Actor *actor0;
    struct Actor *actor;
    unsigned int i;
    unsigned int j;
    int *q;
    int *script;
    short val;
    int *p;

    list = (struct Actor **)(iwram_3001ebc + 0x14);
    actor0 = (struct Actor *)__MapActor_GetActor(0);
    *arg0 = actor0->facing >> 12;

    for (i = 8; i <= 0x41; i++) {
        actor = list[i];
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        q = L2f38;
        script = gScript_884__0200af50;
        for (j = 0; j <= 5; j++, script += 4) {
            if (val == *q++) {
                int t;
                int target_x;
                int target_z;
                int ax;
                int az;
                int x1, z1, x2, z2;

                *(int *)arg2 = j;
                t = L2ef8[*arg0];
                target_x = ((actor0->pos.x >> 16) + (t >> 16)) >> 4;
                target_z = ((actor0->pos.z >> 16) + (short)t) >> 4;

                ax = *(short *)((char *)actor + 10);
                x1 = (ax + script[0]) >> 4;
                az = *(short *)((char *)actor + 18);
                z1 = (az + script[1]) >> 4;
                x2 = (ax + script[2]) >> 4;
                z2 = (az + script[3]) >> 4;

                if (x1 <= target_x && target_x < x2
                    && z1 <= target_z && target_z < z2) {
                    if (j & 1) {
                        if (x1 != actor0->pos.x >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (z1 != actor0->pos.z >> 20) {
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
