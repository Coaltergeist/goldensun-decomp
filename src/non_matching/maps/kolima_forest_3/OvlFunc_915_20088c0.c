int OvlFunc_915_20088c0(int actor_id) {
    char *base;
    char *actor;
    int i;
    int *q;
    int t1, t2, t3;
    int w, h;
    int s1, s2;
    struct Pk pk;
    int *p;

    base = *(char **)iwram_3001e70;
    actor = (char *)__MapActor_GetActor(actor_id);
    p = *(int **)(actor + 0x50);
    p = *(int **)((char *)p + 0x28);
    i = 0;
    q = Lf50;
    if (*(short *)p == q[i]) {
        pk.a = i;
    } else {
        do {
            pk.a = 7;
            i++;
            if (i > 5) goto done_search;
            p = *(int **)(actor + 0x50);
            p = *(int **)((char *)p + 0x28);
            q++;
        } while (*(short *)p != *q);
        pk.a = i;
    }
done_search:
    if ((unsigned int)pk.a > 6) return 0;

    pk.x = *(int *)(actor + 8);
    pk.y = *(int *)(actor + 0xc);
    pk.z = *(int *)(actor + 0x10);

    t2 = Lf68[pk.a * 4 + 1];
    if (t2 < 0) t2 = -t2;
    t3 = Lf68[pk.a * 4 + 3];
    if (t3 < 0) t3 = -t3;
    t1 = Lf68[pk.a * 4];
    h = (t2 + t3) >> 4;

    if (t1 < 0) t1 = -t1;
    t3 = Lf68[pk.a * 4 + 2];
    if (t3 < 0) t3 = -t3;

    pk.x = (pk.x + (Lf68[pk.a * 4] << 16)) >> 20;
    pk.z = (pk.z + (Lf68[pk.a * 4 + 1] << 16)) >> 20;
    w = (t1 + t3) >> 4;

    s1 = (*(int *)(base + (0x9e << 1)) >> 20) + pk.x;
    s2 = (*(int *)(base + (0xa0 << 1)) >> 20) + pk.z;

    __Func_8010704(pk.x, pk.z, w, h, s1, s2);
    OvlFunc_915_2008244(0, pk.x, pk.z, w, h, 0xff);
    OvlFunc_915_2008244(2, pk.x, pk.z, w, h, 0xff);
    return 1;
}
