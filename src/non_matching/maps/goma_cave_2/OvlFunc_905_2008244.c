extern unsigned char iwram_3001e70[];
extern unsigned char gBuffer[];

struct MapTile {
    u16 unk0;
    u8 val;
    u8 unk3;
};

int OvlFunc_905_2008244(unsigned int layer, int x, int y, unsigned int w, unsigned int h, int val)
{
    unsigned char *env;
    struct MapTile *buf;
    unsigned int i;
    unsigned int j;

    env = (unsigned char *)*(int *)iwram_3001e70;
    if (env == NULL) {
        return 0;
    } 

    if (layer <= 2) {
        buf = *(struct MapTile **)(env + (layer * 0x30 + 0x130));
    } else {
        buf = (struct MapTile *)gBuffer;
    }

    buf += x + (y << 7);
    for (i = 0; i < h; i++) {
        struct MapTile *p = buf + (i << 7);
        for (j = 0; j < w; j++, p++) {
            p->val = val;
        }
    }

    return 0;
}
