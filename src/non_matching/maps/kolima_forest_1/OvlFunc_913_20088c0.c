int OvlFunc_913_20088c0(int actor_id)
{
    struct Pk pk;
    unsigned char *env;
    unsigned char *actor;
    int h;
    int w;
    int t1;
    int t2;
    int camx;
    int camz;
    int s5;
    int s6;
    unsigned int i;
    int *p;
    int *q;
    int idx;
    short val;
    env = (unsigned char *)*(int *)iwram_3001e70;
    i = 0;
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    p = *(int **)((char *)actor + 0x50);
    p = *(int **)((char *)p + 0x28);
    val = *(short *)p;
    if (val == L2da8[i]) {
        pk.a = i;
    } else {
        for (;;) {
            pk.a = 7;
            i++;
            if (i > 5)
                break;
            p = *(int **)((char *)actor + 0x50);
            p = *(int **)((char *)p + 0x28);
            val = *(short *)p;
            if (val == L2da8[i]) {
                pk.a = i;
                break;
            }
        }
    }
    if ((unsigned int)pk.a > 6) {
        return 0;
    }
    pk.x = *(int *)(actor + 8);
    pk.y = *(int *)(actor + 12);
    pk.z = *(int *)(actor + 16);
    t1 = L2dc0[(pk.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L2dc0[(pk.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L2dc0[pk.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L2dc0[(pk.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    pk.x += L2dc0[pk.a << 2] << 16;
    pk.z += L2dc0[(pk.a << 2) + 1] << 16;
    pk.x >>= 20;
    pk.z >>= 20;
    w = (t1 + t2) >> 4;
    camx = *(int *)(env + 0x13c) >> 20;
    camz = *(int *)(env + 0x140) >> 20;
    __Func_8010704(pk.x, pk.z, w, h, camx + pk.x, camz + pk.z);
    OvlFunc_913_2008244(0, pk.x, pk.z, w, h, 0xff);
    OvlFunc_913_2008244(2, pk.x, pk.z, w, h, 0xff);
    return 1;
}
