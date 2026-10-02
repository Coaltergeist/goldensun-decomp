extern void *iwram_3001ebc;

void *OvlFunc_946_200806c(int *pos, void *arg1)
{
    unsigned int i;
    struct Actor **actors;

    actors = (struct Actor **)((char *)iwram_3001ebc + 0x34);
    for (i = 8; i <= 0x41; i++) {
        struct Actor *actor = *actors++;

        if (pos[0] >> 20 == actor->pos.x >> 20 &&
            pos[1] / 0x10000 == actor->pos.y / 0x10000 &&
            pos[2] >> 20 == actor->pos.z >> 20) {
            return actor;
        }
    }
    return 0;
}
