extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

int OvlFunc_927_2008244(int layer, int x, int y, int width, int height, int value)
{
    unsigned char *state;
    unsigned char *base;
    unsigned char *cell;
    unsigned int row;
    unsigned int col;

    state = *(unsigned char **)iwram_3001e70;
    if (state == 0)
        return 0;

    if ((unsigned int)layer <= 2)
        base = *(unsigned char **)(state + layer * 0x30 + 0x130);
    else
        base = gBuffer;

    base += ((unsigned int)y * 128 + (unsigned int)x) * 4;

    for (row = 0; row < (unsigned int)height; row++) {
        cell = base + row * 512;
        for (col = 0; col < (unsigned int)width; col++) {
            cell[2] = value;
            cell += 4;
        }
    }
    return 0;
}
