void OvlFunc_924_200d900(void)
{
    int *state;
    struct Actor *actor;

    state = *(int **)iwram_3001edc;
    actor = *(struct Actor **)(iwram_3001ebc__a3 + 0x14
                               + *(int *)(gState._bytes + 0x1f4) * 4);
    if (state[2] != 0) {
        state[2] = state[2] - 1;
    } else {
        OvlFunc_924_200d158(actor);
        state[2] = ((__Random() * 30) >> 16) + 10;
    }
}
