extern unsigned char iwram_3001ebc[];
extern int L15ac[] __asm__(".Lm905_15ac");
extern unsigned char *__MapActor_GetActor(unsigned int);

void *OvlFunc_905_200834c(int *arg0, void *arg1, void *arg2)
{
    unsigned char *base;
    unsigned char *actor0;
    void **ptr;
    int k;

    base = *(unsigned char **)iwram_3001ebc;
    actor0 = __MapActor_GetActor(0);
    *arg0 = *(unsigned short *)(actor0 + 6) >> 12;
    ptr = (void **)(base + 0x34);

    for (k = 8; k <= 0x41; k++, ptr++) {
        void *obj = *ptr;
        int *p;
        short val;
        int *q;
        int *table;
        int i;

        p = *(int **)((char *)obj + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;

        q = L1594;
        table = L15ac;
        for (i = 0; i <= 5; i++, table += 4) {
            if (val == *q++) {
                int t;
                int actor0_x;
                int actor0_z;
                int target_x;
                int target_z;
                short obj_x;
                short obj_z;
                int x1, z1, x2, z2;

                *(int *)arg2 = i;
                t = L1554[*arg0];
                actor0_x = *(int *)(actor0 + 8);
                target_x = ((actor0_x >> 16) + (t >> 16)) >> 4;
                actor0_z = *(int *)(actor0 + 0x10);
                target_z = ((actor0_z >> 16) + (short)t) >> 4;

                obj_x = *(short *)((char *)obj + 0xa);
                x1 = (obj_x + table[0]) >> 4;
                obj_z = *(short *)((char *)obj + 0x12);
                z1 = (obj_z + table[1]) >> 4;
                x2 = (obj_x + table[2]) >> 4;
                z2 = (obj_z + table[3]) >> 4;

                if (x1 <= target_x && target_x < x2 && z1 <= target_z && target_z < z2) {
                    if (i & 1) {
                        if (x1 == (actor0_x >> 20)) {
                            continue;
                        }
                        *(int *)arg1 = k;
                        return obj;
                    } else {
                        if (z1 == (actor0_z >> 20)) {
                            continue;
                        }
                        *(int *)arg1 = k;
                        return obj;
                    }
                }
            }
        }
    }

    return 0;
}
