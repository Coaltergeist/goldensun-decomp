extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_883_2008244(int layer, int x, int y, int w, int h, int value)
{
    unsigned char *state;
    unsigned char *base;
    unsigned char *cell;
    unsigned int i;
    unsigned int j;

    state = *(unsigned char **)iwram_3001e70;
    if (state == 0)
        return 0;

    if ((unsigned int)layer <= 2)
        base = *(unsigned char **)(state + layer * 0x30 + 0x130);
    else
        base = gBuffer;

    base += ((unsigned int)y * 128 + (unsigned int)x) * 4;

    for (i = 0; i < (unsigned int)h; i++) {
        cell = base + i * 512;
        for (j = 0; j < (unsigned int)w; j++) {
            cell[2] = value;
            cell += 4;
        }
    }
    return 0;
}
