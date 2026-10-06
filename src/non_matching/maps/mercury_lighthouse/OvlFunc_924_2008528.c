int OvlFunc_924_2008528(int layer, int x, int y, int w, int h, int val)
{
    extern unsigned char iwram_3001e70[];
    extern unsigned char gBuffer[];
    unsigned char *base;
    unsigned char *p;
    unsigned char *q;
    unsigned int i;
    unsigned int j;

    base = *(unsigned char **)iwram_3001e70;
    if (base != 0) {
        if ((unsigned int)layer <= 2)
            p = *(unsigned char **)(base + layer * 48 + 0x130);
        else
            p = gBuffer;
        p += ((unsigned int)y * 128 + (unsigned int)x) * 4;
        for (i = 0; i < (unsigned int)h; i++) {
            q = p + i * 512;
            for (j = 0; j < (unsigned int)w; j++) {
                q[2] = val;
                q += 4;
            }
        }
    }
    return 0;
}
