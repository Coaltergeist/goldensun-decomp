int OvlFunc_927_20088c0(int actorId)
{
    int *base;
    struct Actor *actor;
    int stk[3];
    unsigned int idx;
    unsigned int i;
    int abs1, abs3, abs0, abs2;
    int dim_z, dim_x;

    base = *(int **)iwram_3001e70;
    actor = (struct Actor *)__MapActor_GetActor(actorId);

    for (i = 0; i <= 5; i++) {
        if ((short)actor->sprite->layers[0]->spriteID == L2f38[i]) {
            idx = i;
            break;
        }
        idx = 7;
    }

    if (idx > 6)
        return 0;

    stk[0] = actor->pos.x;
    stk[1] = actor->pos.y;
    stk[2] = actor->pos.z;

    abs1 = gScript_884__0200af50[idx * 4 + 1];
    if (abs1 < 0)
        abs1 = -abs1;

    abs3 = gScript_884__0200af50[idx * 4 + 3];
    if (abs3 < 0)
        abs3 = -abs3;

    dim_z = (abs1 + abs3) >> 4;

    abs0 = gScript_884__0200af50[idx * 4 + 0];
    if (abs0 < 0)
        abs0 = -abs0;

    abs2 = gScript_884__0200af50[idx * 4 + 2];
    if (abs2 < 0)
        abs2 = -abs2;

    stk[0] += gScript_884__0200af50[idx * 4 + 0] << 16;
    stk[2] = (stk[2] + (gScript_884__0200af50[idx * 4 + 1] << 16)) >> 20;
    stk[0] >>= 20;

    dim_x = (abs0 + abs2) >> 4;

    __Func_8010704(stk[0], stk[2], dim_x, dim_z,
                   stk[0] + (base[0x4f] >> 20),
                   stk[2] + (base[0x50] >> 20));

    OvlFunc_927_2008244(0, stk[0], stk[2], dim_x, dim_z, 0xff);
    OvlFunc_927_2008244(2, stk[0], stk[2], dim_x, dim_z, 0xff);

    return 1;
}
