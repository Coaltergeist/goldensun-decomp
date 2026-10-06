extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

void OvlFunc_946_2008244(int layer, int x, int y, int w, int h, int val)
{
    unsigned char *state;
    unsigned char *buf;
    unsigned char *q;
    unsigned int i;
    unsigned int j;

    state = *(unsigned char **)iwram_3001e70;
    if (state != 0) {
        if ((unsigned int)layer <= 2)
            buf = *(unsigned char **)(state + layer * 48 + 0x130);
        else
            buf = gBuffer;
        buf += (y * 128 + x) * 4;
        for (i = 0; i < (unsigned int)h; i++) {
            q = buf + i * 512;
            for (j = 0; j < (unsigned int)w; j++) {
                q[2] = val;
                q += 4;
            }
        }
    }
}
