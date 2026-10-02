extern unsigned char iwram_3001ebc[];

void *OvlFunc_964_200806c(int *pos, void *arg1)
{
    struct Actor **actors;
    int i;

    actors = (struct Actor **)(*(char **)iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = actors[i];

        if (pos[0] >> 20 == actor->pos.x >> 20 &&
            pos[1] / 0x10000 == actor->pos.y / 0x10000 &&
            pos[2] >> 20 == actor->pos.z >> 20) {
            return actor;
        }
    }
    return NULL;
}
