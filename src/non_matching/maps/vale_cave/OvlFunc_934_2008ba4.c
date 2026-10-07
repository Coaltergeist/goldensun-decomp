extern void *OvlFunc_934_2008350(int *, void *);



int OvlFunc_934_2008ba4(int actor_id)
{
    unsigned char *env;
    unsigned char *actor;
    struct Pk arg;
    int *q;
    unsigned int i;
    int t1;
    int t2;
    int h;
    int w;
    int camx;
    int camz;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actor_id);
    q = ActorCmd_ARRAY_933__02009e88;
    i = 0;
    while (i <= 5) {
        int *p = *(int **)(actor + 0x50);
        p = *(int **)((char *)p + 0x28);
        if (*(short *)p == *q) {
            arg.a = i;
            break;
        }
        i++;
        arg.a = 7;
        q++;
    }
    if ((unsigned int)arg.a > 6)
        return 0;

    arg.x = *(int *)(actor + 8);
    arg.y = *(int *)(actor + 0xc);
    arg.z = *(int *)(actor + 0x10);

    t1 = L1ea0[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;

    t1 = L1ea0[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L1ea0[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;

    arg.x += L1ea0[arg.a << 2] << 16;
    arg.z += L1ea0[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;

    w = (t1 + t2) >> 4;

    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;

    __Func_8010704(arg.x, arg.z, w, h, camx + arg.x, camz + arg.z);
    OvlFunc_934_2008528(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_934_2008528(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}
