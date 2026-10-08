void *OvlFunc_924_2008350(int *pos, void *unused)
{
    extern int *iwram_3001ebc;
    struct Actor **actors;
    struct Actor *actor;
    unsigned int i;
    int x;

    actors = (struct Actor **)((char *)iwram_3001ebc + 0x14);
    x = pos[0] >> 20;
    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        if (x == actor->pos.x >> 20
            && pos[1] / 0x10000 == actor->pos.y / 0x10000
            && pos[2] >> 20 == actor->pos.z >> 20)
            return actor;
    }
    return 0;
}
