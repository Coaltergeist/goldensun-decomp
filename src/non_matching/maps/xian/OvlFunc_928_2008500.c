extern int OvlFunc_928_2008408(void *, void *, int, int);

extern unsigned char Lconst_0[] __asm__(".Lm928_58c");

__asm__(".equ .Lm928_58c, 0");

int OvlFunc_928_2008500(unsigned char *actor)
{
    unsigned char *leader;
    int flag = 0;
    int leader_x;
    int actor_x;

    if (*(int *)(actor + 0x38) == 0x80 << 24) {
        if (*(int *)(actor + 0x40) == *(int *)(actor + 0x38)) {
            return 0;
        }
    }

    leader = (unsigned char *)__MapActor_GetActor(0);
    leader_x = *(int *)(leader + 8);

    if ((unsigned int)((leader_x >> 20) - 17) <= 1
        && (*(int *)(leader + 16) >> 20) == 14
        && ((actor_x = *(int *)(actor + 8)) >> 20) <= 19
        && *(int *)(actor + 0x24) <= 0) {
        if (leader_x <= actor_x) {
            actor[0x62]++;
            flag = 1;
        }
    } else {
        actor[0x62] = 0;
    }

    if (flag) {
        if (actor[0x62] > 0x77) {
            short *ptr = *(short **)iwram_3001ebc;
            int val = 0xc8;
            ptr[193] = val;
            actor[0x62] = (int)Lconst_0;
        }
    }

    OvlFunc_928_2008408(actor, leader, 0x12, flag);
    return 0;
}
