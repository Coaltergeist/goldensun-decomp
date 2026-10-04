int OvlFunc_946_20088c0(unsigned int actorId)
{
    struct Pk arg;
    unsigned char *env;
    unsigned char *actor;
    int i;
    int h;
    int w;
    int t1;
    int t2;
    int camx;
    int camz;
    int s5;
    int s6;

    env = (unsigned char *)*(int *)iwram_3001e70;
    actor = (unsigned char *)__MapActor_GetActor(actorId);
    for (i = 0; i <= 5; i++) {
        if (*(short *)(*(int **)((char *)*(int **)(actor + 0x50) + 0x28)) == L319c[i]) {
            arg.a = i;
            break;
        }
        arg.a = 7;
    }
    if ((unsigned int)arg.a > 6) {
        return 0;
    }
    arg.x = *(int *)(actor + 8);
    arg.y = *(int *)(actor + 0xc);
    arg.z = *(int *)(actor + 0x10);
    t1 = L31b4[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L31b4[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L31b4[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L31b4[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    arg.x += L31b4[arg.a << 2] << 16;
    arg.z += L31b4[(arg.a << 2) + 1] << 16;
    arg.x >>= 20;
    arg.z >>= 20;
    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;
    s5 = camx + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_946_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_946_2008244(2, arg.x, arg.z, w, h, 0xff);
    return 1;
}
