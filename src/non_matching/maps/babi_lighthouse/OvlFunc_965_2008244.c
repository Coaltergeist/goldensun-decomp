extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_965_2008244(int layer, int x, int z, int w, int h, int val)
{
    unsigned char *env;
    unsigned char *base;
    unsigned char *ptr;
    unsigned int i, j;

    env = *(unsigned char **)iwram_3001e70;
    if (env == 0)
        return 0;

    if ((unsigned int)layer <= 2) {
        base = *(unsigned char **)(env + 0x130 + layer * 0x30);
    } else {
        base = gBuffer;
    }

    base += (x + z * 128) * 4;
    for (j = 0; j < (unsigned int)h; j++) {
        ptr = base + j * 512;
        for (i = 0; i < (unsigned int)w; i++) {
            ptr[2] = val;
            ptr += 4;
        }
    }

    return 0;
}
