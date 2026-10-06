int OvlFunc_905_20088c0(int actorId)
{
    unsigned int idx;
    int pos[3];
    unsigned char *env;
    unsigned char *actor;
    unsigned int i;
    int *p;
    short val;
    int t1;
    int t2;
    int h;
    int w;
    int zz;
    int camx;
    int camz;
    int s5;
    int s6;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actorId);

    for (i = 0; i <= 5; i++) {
        p = *(int **)((char *)actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        val = *(short *)p;
        if (val == L1594[i]) {
            idx = i;
            break;
        }
        idx = 7;
    }

    if (idx > 6) {
        return 0;
    }

    pos[0] = *(int *)((char *)actor + 8);
    pos[1] = *(int *)((char *)actor + 0xc);
    pos[2] = *(int *)((char *)actor + 0x10);

    t1 = L15ac[(idx * 4) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L15ac[(idx * 4) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;

    t1 = L15ac[idx * 4];
    if (t1 < 0) t1 = -t1;
    t2 = L15ac[(idx * 4) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;

    pos[0] = pos[0] + (L15ac[idx * 4] << 16);
    zz = pos[2] + (L15ac[(idx * 4) + 1] << 16);
    pos[0] >>= 20;
    pos[2] = zz >> 20;

    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;
    s5 = camx + pos[0];
    s6 = camz + pos[2];

    __Func_8010704(pos[0], pos[2], w, h, s5, s6);
    OvlFunc_905_2008244(0, pos[0], pos[2], w, h, 0xff);
    OvlFunc_905_2008244(2, pos[0], pos[2], w, h, 0xff);

    return 1;
}
