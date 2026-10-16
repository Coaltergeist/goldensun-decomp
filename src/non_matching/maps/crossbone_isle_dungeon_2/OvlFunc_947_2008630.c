extern unsigned char *__MapActor_GetActor(unsigned int);
extern int gScript_884__0200acf8[];

void *OvlFunc_947_2008630(int *arg0, void *arg1, void *arg2)
{
    unsigned char *base;
    unsigned char *player;
    void **p;
    unsigned int i;
    unsigned int j;
    int *script;
    int *q;
    void *actor;
    int *p_val;
    short val;
    int t;
    int px;
    int pz;
    int x;
    int z;
    int ax;
    int az;
    int min_x;
    int min_z;
    int max_x;
    int max_z;

    base = *(unsigned char **)iwram_3001ebc;
    player = __MapActor_GetActor(0);
    *arg0 = *(unsigned short *)(player + 6) >> 12;
    p = (void **)(base + 0x34);
    for (i = 8; i <= 0x41; i++, p++) {
        actor = *p;
        p_val = *(int **)((char *)actor + 0x50);
        p_val = *(int **)((char *)p_val + 0x28);
        val = *(short *)p_val;
        q = L2ce0;
        script = gScript_884__0200acf8;
        for (j = 0; j <= 5; j++, script += 4) {
            if (val == *q++) {
                *(int *)arg2 = j;
                t = L2ca0[*arg0];
                px = *(int *)(player + 8);
                x = ((px >> 16) + (t >> 16)) >> 4;
                pz = *(int *)(player + 0x10);
                z = ((pz >> 16) + (short)t) >> 4;
                ax = *(short *)((char *)actor + 0xa);
                min_x = (ax + script[0]) >> 4;
                az = *(short *)((char *)actor + 0x12);
                min_z = (az + script[1]) >> 4;
                max_x = (ax + script[2]) >> 4;
                max_z = (az + script[3]) >> 4;
                if (min_x <= x && x < max_x && min_z <= z && z < max_z) {
                    if (j & 1) {
                        if (min_x != px >> 20) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != pz >> 20) {
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
