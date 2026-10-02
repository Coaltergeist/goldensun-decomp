extern unsigned char iwram_3001ebc[];

void *OvlFunc_905_200806c(int *pos, void *arg1)
{
    unsigned char *base = *(unsigned char **)iwram_3001ebc;
    struct Actor **actor_p = (struct Actor **)(base + 0x34);
    unsigned int i;

    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = *actor_p++;
        if (pos[0] >> 20 == actor->pos.x >> 20 &&
            pos[1] / 0x10000 == actor->pos.y / 0x10000 &&
            pos[2] >> 20 == actor->pos.z >> 20) {
            return actor;
        }
    }
    return 0;
}
