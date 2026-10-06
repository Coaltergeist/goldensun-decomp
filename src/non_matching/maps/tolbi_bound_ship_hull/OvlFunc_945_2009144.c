int OvlFunc_945_2009144(int x, int z)
{
    struct Actor **actors;
    struct Actor *actor;
    unsigned int i;
    int ax;
    int az;

    actors = (struct Actor **)(iwram_3001ebc + 0x14);
    for (i = 8; i <= 0x41; i++) {
        actor = actors[i];
        ax = ((s16 *)&actor->pos.x)[1];
        az = ((s16 *)&actor->pos.z)[1];
        if (x - 12 < ax && ax < x + 12 && z - 12 < az && az < z + 12) {
            return (int)actor;
        }
    }
    return 0;
}
