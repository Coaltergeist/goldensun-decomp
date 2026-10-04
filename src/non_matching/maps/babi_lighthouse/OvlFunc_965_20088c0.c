int OvlFunc_965_20088c0(unsigned int arg0)
{
    int idx;
    int pos[3];
    unsigned char *env;
    unsigned char *actor;
    int i;
    int h;
    int w;
    int t1;
    int t2;
    int zz;
    int camx;
    int camz;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = __MapActor_GetActor(arg0);

    for (i = 0; i <= 5; i++) {
        if (*(short *)*(int **)((char *)*(int **)(actor + 0x50) + 0x28) == gOvl_0200b014[i]) {
            idx = i;
            break;
        }
        idx = 7;
    }

    if (idx > 6) {
        return 0;
    }

    pos[0] = *(int *)(actor + 8);
    pos[1] = *(int *)(actor + 0xc);
    pos[2] = *(int *)(actor + 0x10);

    t1 = L302c[idx * 4 + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L302c[idx * 4 + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;

    t1 = L302c[idx * 4];
    if (t1 < 0) t1 = -t1;
    t2 = L302c[idx * 4 + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;

    pos[0] += L302c[idx * 4] << 16;
    zz = pos[2] + (L302c[idx * 4 + 1] << 16);
    pos[0] >>= 20;
    pos[2] = zz >> 20;

    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;

    __Func_8010704(pos[0], pos[2], w, h, camx + pos[0], camz + pos[2]);
    OvlFunc_965_2008244(0, pos[0], pos[2], w, h, 0xff);
    OvlFunc_965_2008244(2, pos[0], pos[2], w, h, 0xff);
    return 1;
}
