extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

void OvlFunc_964_2008244(int layer, int x, int y, int w, int h, int val)
{
    unsigned char *env;
    unsigned char *tiles;
    unsigned char *p;
    unsigned int i;
    unsigned int j;

    env = *(unsigned char **)iwram_3001e70;
    if (env != 0) {
        if ((unsigned int)layer <= 2)
            tiles = *(unsigned char **)(env + layer * 0x30 + 0x130);
        else
            tiles = gBuffer;
        tiles += (y * 128 + x) * 4;
        for (i = 0; i < h; i++) {
            p = tiles + i * 512;
            for (j = 0; j < w; j++) {
                p[2] = val;
                p += 4;
            }
        }
    }
}
