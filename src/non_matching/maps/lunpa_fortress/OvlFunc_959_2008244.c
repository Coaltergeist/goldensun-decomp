extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_959_2008244(int layer, int x, int y, int w, int h, int val)
{
    unsigned char *ctx;
    unsigned char *base;
    unsigned char *p;
    unsigned int i;
    unsigned int j;

    ctx = *(unsigned char **)iwram_3001e70;
    if (ctx == 0)
        return 0;

    if ((unsigned int)layer <= 2)
        base = *(unsigned char **)(ctx + layer * 48 + 0x130);
    else
        base = gBuffer;

    base += ((unsigned int)x + (unsigned int)y * 128) * 4;

    for (i = 0; i < (unsigned int)h; i++) {
        p = base + i * 512;
        for (j = 0; j < (unsigned int)w; j++) {
            p[2] = val;
            p += 4;
        }
    }
    return 0;
}
