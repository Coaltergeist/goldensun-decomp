int OvlFunc_958_2008ba4(int actor_id) {
    struct Pk pk;
    int w, h;
    int camx, camz;
    unsigned char *env;
    unsigned char *actor;
    int t1, t2;
    int *q;
    unsigned int i;
    int ax, az;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    i = 0;
    if (*(short *)*(void **)((char *)*(void **)((char *)actor + 0x50) + 0x28) == L1700[i]) {
        pk.a = i;
    } else {
        q = L1700;
        do {
            i++;
            pk.a = 7;
            if (i > 5)
                goto not_found;
            q++;
        } while (*(short *)*(void **)((char *)*(void **)((char *)actor + 0x50) + 0x28) != *q);
        pk.a = i;
    }
not_found:
    if ((unsigned int)pk.a > 6)
        return 0;

    ax = *(int *)(actor + 8);
    pk.x = ax;
    pk.y = *(int *)(actor + 12);
    az = *(int *)(actor + 16);
    pk.z = az;

    t1 = L1718[(pk.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(pk.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;

    t1 = L1718[pk.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1718[(pk.a << 2) + 2];
    if (t2 < 0) t2 = -t2;

    pk.x = ax + (L1718[pk.a << 2] << 16);
    pk.z = (az + (L1718[(pk.a << 2) + 1] << 16)) >> 20;
    pk.x >>= 20;
    w = (t1 + t2) >> 4;

    camx = *(int *)(env + 0x13c) >> 20;
    camz = *(int *)(env + 0x140) >> 20;

    __Func_8010704(pk.x, pk.z, w, h, camx + pk.x, camz + pk.z);
    OvlFunc_958_2008528(0, pk.x, pk.z, w, h, 0xff);
    OvlFunc_958_2008528(2, pk.x, pk.z, w, h, 0xff);
    return 1;
}
