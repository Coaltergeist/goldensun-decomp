extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_957_2008244(int layer, int x, int y, int w, int h, int val)
{
    unsigned char *base;
    unsigned char *p;
    unsigned char *q;
    unsigned int i, j;

    base = *(unsigned char **)iwram_3001e70;
    if (base == 0)
        return 0;
    if ((unsigned int)layer <= 2)
        p = *(unsigned char **)(base + layer * 0x30 + 0x130);
    else
        p = gBuffer;
    p += ((unsigned int)x + ((unsigned int)y << 7)) << 2;
    for (i = 0; i < (unsigned int)h; i++) {
        q = p + (i << 9);
        for (j = 0; j < (unsigned int)w; j++) {
            q[2] = val;
            q += 4;
        }
    }
    return 0;
}
