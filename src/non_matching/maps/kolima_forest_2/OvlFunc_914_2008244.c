extern unsigned char gBuffer[];
extern unsigned char iwram_3001e70[];

int OvlFunc_914_2008244(int layer, int x, int y, int w, int h, int val)
{
    unsigned char *ctx;
    unsigned char *base;
    unsigned char *q;
    unsigned int i, j;

    ctx = *(unsigned char **)iwram_3001e70;
    if (ctx == 0)
        return 0;
    if ((unsigned int)layer <= 2)
        base = *(unsigned char **)(ctx + layer * 48 + 0x130);
    else
        base = gBuffer;
    base += ((unsigned int)x + (unsigned int)y * 128) * 4;
    for (i = 0; i < (unsigned int)h; i++) {
        q = base + i * 512;
        for (j = 0; j < (unsigned int)w; j++) {
            q[2] = val;
            q += 4;
        }
    }
    return 0;
}
