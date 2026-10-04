extern unsigned char gBuffer[];

int OvlFunc_923_2008528(int a0, int a1, int a2, int a3, int a4, int a5)
{
    extern unsigned char iwram_3001e70[];
    unsigned char *env;
    unsigned char *base;
    unsigned int i, j;
    unsigned char *p;

    env = *(unsigned char **)iwram_3001e70;
    if (env == 0)
        return 0;

    if ((unsigned int)a0 > 2)
        base = gBuffer;
    else
        base = *(unsigned char **)(env + a0 * 48 + 0x130);

    base += (a1 + (a2 << 7)) << 2;

    for (i = 0; i < (unsigned int)a4; i++) {
        p = base + (i << 9);
        for (j = 0; j < (unsigned int)a3; j++) {
            p[2] = (unsigned char)a5;
            p += 4;
        }
    }
    return 0;
}
