struct MainMenuTilePos {
    unsigned char pad[0xC];
    unsigned short x;
    unsigned short y;
};

extern unsigned short *iwram_3001e8c;
extern void *__alloc_ewram(int size);
extern void __free(void *ptr);

void OvlFunc_880_2008d74(struct MainMenuTilePos *pos) {
    unsigned short *buf;
    unsigned short *vram;
    void *tmp;
    int offset;
    int base;
    int i;
    int j;

    buf = iwram_3001e8c;
    tmp = __alloc_ewram(0x300);
    offset = pos->y * 32 + pos->x;
    vram = (unsigned short *)0x6002000 + offset;
    buf += offset;
    base = 0;
    for (i = 0; i < 8; i++) {
        for (j = 0; j < 16; j++) {
            short tile = (base + 0x20 + j) | 0xF000;
            *vram++ = tile;
            *buf++ = tile;
        }
        vram += 16;
        buf += 16;
        base += 16;
    }
    __free(tmp);
}
