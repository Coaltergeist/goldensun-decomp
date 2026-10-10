int OvlFunc_964_20088c0(unsigned int arg0)
{
    char *map = *(char **)iwram_3001e70;
    struct Actor *actor = (struct Actor *)__MapActor_GetActor(arg0);
    int stk[3];
    unsigned int idx;
    unsigned int i;
    int v0, v1, v2, v3;
    int w, h;

    for (i = 0; i <= 5; i++) {
        idx = 7;
        if ((short)actor->sprite->layers[0]->spriteID == L3230[i]) {
            idx = i;
            break;
        }
    }

    if (idx > 6) {
        return 0;
    }

    stk[0] = actor->pos.x;
    stk[1] = actor->pos.y;
    stk[2] = actor->pos.z;

    v1 = L3248[idx * 4 + 1];
    if (v1 < 0) {
        v1 = -v1;
    }
    v3 = L3248[idx * 4 + 3];
    if (v3 < 0) {
        v3 = -v3;
    }
    h = (v1 + v3) >> 4;

    v0 = L3248[idx * 4 + 0];
    w = v0;
    if (v0 < 0) {
        w = -v0;
    }
    v2 = L3248[idx * 4 + 2];
    if (v2 < 0) {
        v2 = -v2;
    }

    stk[0] += v0 << 16;
    stk[2] += L3248[idx * 4 + 1] << 16;
    stk[0] >>= 20;
    stk[2] >>= 20;

    w = (w + v2) >> 4;

    __Func_8010704(stk[0], stk[2], w, h,
                   (*(int *)(map + 0x13c) >> 20) + stk[0],
                   (*(int *)(map + 0x140) >> 20) + stk[2]);

    OvlFunc_964_2008244(0, stk[0], stk[2], w, h, 0xff);
    OvlFunc_964_2008244(2, stk[0], stk[2], w, h, 0xff);

    return 1;
}
