extern int L1718[] __asm__(".Lm958_1718");

void *OvlFunc_958_2008630(int *arg0, void *arg1, void *arg2)
{
    unsigned char *base;
    void *player;
    void **p;
    unsigned int i;
    unsigned int k;
    int *q;
    int *box;
    void *actor;
    void *sub;
    short val;
    int t;
    int px, pz;
    int tx, tz;
    int ax, az;
    int min_x, max_x;
    int min_z, max_z;

    base = *(unsigned char **)iwram_3001ebc;
    player = __MapActor_GetActor(0);
    *arg0 = *(unsigned short *)((char *)player + 6) >> 12;
    p = (void **)(base + 0x34);
    for (i = 8; i <= 0x41; i++, p++) {
        actor = *p;
        sub = *(void **)((char *)actor + 0x50);
        val = *(short *)*(void **)((char *)sub + 0x28);
        q = L1700;
        box = L1718;
        for (k = 0; k <= 5; k++, box += 4) {
            if (val == *q++) {
                *(int *)arg2 = k;
                t = L16c0[*arg0];
                px = *(int *)((char *)player + 8);
                tx = ((px >> 16) + (t >> 16)) >> 4;
                pz = *(int *)((char *)player + 0x10);
                tz = ((pz >> 16) + (short)t) >> 4;

                ax = *(short *)((char *)actor + 10);
                min_x = (ax + box[0]) >> 4;
                az = *(short *)((char *)actor + 18);
                min_z = (az + box[1]) >> 4;
                max_x = (ax + box[2]) >> 4;
                max_z = (az + box[3]) >> 4;

                if (min_x <= tx && tx < max_x && min_z <= tz && tz < max_z) {
                    if (k & 1) {
                        if (min_x != (px >> 20)) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != (pz >> 20)) {
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
