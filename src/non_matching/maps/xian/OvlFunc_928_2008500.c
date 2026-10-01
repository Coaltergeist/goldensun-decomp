extern void OvlFunc_928_2008408(unsigned char *, unsigned char *, int, int);

int OvlFunc_928_2008500(unsigned char *actor)
{
    unsigned char *leader;
    int flag = 0;
    int leader_x;
    int actor_x;

    if (*(int *)(actor + 0x38) == 0x80 << 24
        && *(int *)(actor + 0x40) == *(int *)(actor + 0x38)) {
        return 0;
    }

    leader = (unsigned char *)__MapActor_GetActor(0);
    leader_x = *(int *)(leader + 8);

    if ((leader_x >> 20) >= 17 && (leader_x >> 20) <= 18
        && (*(int *)(leader + 0x10) >> 20) == 14
        && ((actor_x = *(int *)(actor + 8)) >> 20) <= 19
        && *(int *)(actor + 0x24) <= 0) {
        if (leader_x <= actor_x) {
            actor[0x62]++;
            flag = 1;
        }
    } else {
        actor[0x62] = 0;
    }

    if (flag && actor[0x62] > 0x77) {
        *(short *)(*(unsigned char **)iwram_3001ebc + 0x182) = 0xc8;
        actor[0x62] = 0;
    }

    OvlFunc_928_2008408(actor, leader, 0x12, flag);
    return 0;
}
