void *OvlFunc_913_200834c(int *dir, int *arg1, int *arg2)
{
    KolimaMap *map;
    unsigned char *hero;
    struct Actor **p_actor;
    struct Actor *actor;
    int *box;
    int *p;
    unsigned int i;
    short val;
    unsigned int k;
    int d;
    int hero_x;
    int hero_z;
    int target_x;
    int target_z;
    short ax;
    short az;
    int b_x1;
    int b_z1;
    int b_x2;
    int b_z2;

    map = iwram_3001ebc;
    hero = (unsigned char *)__MapActor_GetActor(0);
    *dir = *(unsigned short *)(hero + 6) >> 12;

    p_actor = &map->actors[8];
    for (i = 8; i <= 0x41; i++, p_actor++) {
        actor = *p_actor;
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        for (k = 0; k <= 5; k++) {
            if (val == L2da8[k]) {
                box = &L2dc0[k * 4];
                *arg2 = k;
                d = L2d68[*dir];
                target_x = (*(int *)(hero + 8) >> 16) + (d >> 16);
                target_x >>= 4;
                target_z = (*(int *)(hero + 16) >> 16) + (short)d;
                target_z >>= 4;

                ax = *(short *)((char *)actor + 10);
                b_x1 = (ax + box[0]) >> 4;
                az = *(short *)((char *)actor + 18);
                b_z1 = (az + box[1]) >> 4;
                b_x2 = (ax + box[2]) >> 4;
                b_z2 = (az + box[3]) >> 4;

                if (b_x1 <= target_x && target_x < b_x2 &&
                    b_z1 <= target_z && target_z < b_z2) {
                    if (k & 1) {
                        if (b_x1 != *(int *)(hero + 8) >> 20) {
                            *arg1 = i;
                            return actor;
                        }
                    } else {
                        if (b_z1 != *(int *)(hero + 16) >> 20) {
                            *arg1 = i;
                            return actor;
                        }
                    }
                }
            }
        }
    }

    return 0;
}
