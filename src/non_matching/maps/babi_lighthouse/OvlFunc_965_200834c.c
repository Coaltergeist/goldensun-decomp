extern unsigned char *__MapActor_GetActor(unsigned int);
extern int L302c[] __asm__(".Lm965_302c");

void *OvlFunc_965_200834c(int *arg0, void *arg1, void *arg2)
{
    struct Actor *player;
    struct Actor **actors;
    struct Actor *actor;
    unsigned int i;
    int j;
    int *q;
    int *box;
    int *p;
    short val;
    int t;
    int px, pz;
    int tx, tz;
    short ax, az;
    int min_x, min_z, max_x, max_z;

    actors = (struct Actor **)(iwram_3001ebc + 0x14);
    player = (struct Actor *)__MapActor_GetActor(0);
    *arg0 = player->facing >> 12;

    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        q = gOvl_0200b014;
        box = L302c;
        for (j = 0; j <= 5; j++, box += 4) {
            if (val == *q++) {
                *(int *)arg2 = j;
                t = L2fd4[*arg0];
                px = player->pos.x;
                tx = ((px >> 16) + (t >> 16)) >> 4;
                pz = player->pos.z;
                tz = ((pz >> 16) + (short)t) >> 4;
                ax = *(short *)((char *)actor + 0xa);
                min_x = (ax + box[0]) >> 4;
                az = *(short *)((char *)actor + 0x12);
                min_z = (az + box[1]) >> 4;
                max_x = (ax + box[2]) >> 4;
                max_z = (az + box[3]) >> 4;
                if (min_x <= tx && tx < max_x && min_z <= tz && tz < max_z) {
                    if (j & 1) {
                        if (min_x != (px >> 20))
                        {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != (pz >> 20))
                        {
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
