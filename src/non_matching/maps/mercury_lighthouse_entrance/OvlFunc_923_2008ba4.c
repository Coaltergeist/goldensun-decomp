int OvlFunc_923_2008ba4(int actor_id)
{
    struct Pk pk;
    unsigned char *env;
    unsigned char *actor;
    int *p;
    int i;
    int t1;
    int t2;
    int h;
    int w;
    int camx;
    int camz;
    int s5;
    int s6;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = __MapActor_GetActor(actor_id);

    i = 0;
    do {
        p = *(int **)(actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        if (*(short *)p == L2740[i]) {
            pk.a = i;
            break;
        }
        pk.a = 7;
        i++;
    } while (i <= 5);

    if ((unsigned int)pk.a > 6) {
        return 0;
    }

    pk.x = *(int *)(actor + 8);
    pk.y = *(int *)(actor + 0xc);
    pk.z = *(int *)(actor + 0x10);

    t1 = L2758[(pk.a << 2) + 1];
    if (t1 < 0) {
        t1 = -t1;
    }
    t2 = L2758[(pk.a << 2) + 3];
    if (t2 < 0) {
        t2 = -t2;
    }
    h = (t1 + t2) >> 4;

    t1 = L2758[pk.a << 2];
    if (t1 < 0) {
        t1 = -t1;
    }
    t2 = L2758[(pk.a << 2) + 2];
    if (t2 < 0) {
        t2 = -t2;
    }
    w = (t1 + t2) >> 4;

    pk.x += L2758[pk.a << 2] << 16;
    pk.z += L2758[(pk.a << 2) + 1] << 16;
    pk.x >>= 20;
    pk.z >>= 20;

    camx = *(int *)(env + 0x13c);
    camx >>= 20;
    camz = *(int *)(env + 0x140);
    camz >>= 20;
    s5 = camx + pk.x;
    s6 = camz + pk.z;

    __Func_8010704(pk.x, pk.z, w, h, s5, s6);
    OvlFunc_923_2008528(0, pk.x, pk.z, w, h, 0xff);
    OvlFunc_923_2008528(2, pk.x, pk.z, w, h, 0xff);
    return 1;
}
