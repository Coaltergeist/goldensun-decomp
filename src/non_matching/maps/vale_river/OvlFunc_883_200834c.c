extern unsigned char *__MapActor_GetActor(unsigned int);
extern int L61e8[] __asm__(".Lm883_61e8");

void *OvlFunc_883_200834c(int *arg0, void *arg1, void *arg2)
{
    extern unsigned int iwram_3001ebc;
    struct Actor **actors;
    struct Actor *actor;
    struct Actor *player;
    unsigned int i;
    unsigned int j;
    int *e;
    int sprite_id;

    player = (struct Actor *)__MapActor_GetActor(0);
    *arg0 = player->facing >> 12;

    actors = (struct Actor **)(iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        sprite_id = (short)actor->sprite->layers[0]->spriteID;
        e = L61e8;
        for (j = 0; j <= 5; j++, e += 4) {
            if (sprite_id == L61d0[j]) {
                int val;
                int px, pz;
                int ax, az;
                int min_x, min_z, max_x, max_z;

                *(int *)arg2 = j;
                val = L6190[*arg0];
                px = ((player->pos.x >> 16) + (val >> 16)) >> 4;
                pz = ((player->pos.z >> 16) + (short)val) >> 4;
                ax = *(short *)((char *)actor + 0xa);
                min_x = (ax + e[0]) >> 4;
                az = *(short *)((char *)actor + 0x12);
                min_z = (az + e[1]) >> 4;
                max_x = (ax + e[2]) >> 4;
                max_z = (az + e[3]) >> 4;

                if (min_x <= px && px < max_x && min_z <= pz && pz < max_z) {
                    if (j & 1) {
                        if (min_x != (player->pos.x >> 20)) {
                            *(int *)arg1 = i;
                            return actor;
                        }
                    } else {
                        if (min_z != (player->pos.z >> 20)) {
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
