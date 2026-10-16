void OvlFunc_947_2008ba4(int actor_id)
{
    char *base;
    unsigned char *actor;
    int *p;
    int coords[3];
    int *script;
    int s0, s1, s2, s3;
    int w, h;
    unsigned int idx;
    unsigned int i;

    base = *(char **)iwram_3001e70;
    actor = __MapActor_GetActor(actor_id);

    idx = 7;
    for (i = 0; i <= 5; i++) {
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        if (*(short *)p == L2ce0[i]) {
            idx = i;
            break;
        }
    }

    if (idx > 6)
        return;

    coords[0] = *(int *)((char *)actor + 8);
    coords[1] = *(int *)((char *)actor + 12);
    coords[2] = *(int *)((char *)actor + 16);

    script = &gScript_884__0200acf8[idx * 4];

    s1 = script[1];
    if (s1 < 0)
        s1 = -s1;

    s3 = script[3];
    if (s3 < 0)
        s3 = -s3;

    h = (s1 + s3) >> 4;

    s0 = script[0];
    if (s0 < 0)
        s0 = -s0;

    s2 = script[2];
    if (s2 < 0)
        s2 = -s2;

    coords[0] += script[0] << 16;
    coords[2] = (coords[2] + (script[1] << 16)) >> 20;
    coords[0] >>= 20;
    w = (s0 + s2) >> 4;

    __Func_8010704(coords[0], coords[2], w, h,
                   (*(int *)(base + 0x13c) >> 20) + coords[0],
                   (*(int *)(base + 0x140) >> 20) + coords[2]);

    OvlFunc_947_2008528(0, coords[0], coords[2], w, h, 0xff);
    OvlFunc_947_2008528(2, coords[0], coords[2], w, h, 0xff);
}
