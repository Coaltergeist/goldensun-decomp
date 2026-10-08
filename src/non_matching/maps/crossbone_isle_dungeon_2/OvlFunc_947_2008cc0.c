void OvlFunc_947_2008cc0(int x, int y, int w, int h, int page, int dx, int dy)
{
    extern unsigned int ewram_2020000[];
    extern unsigned int ewram_2020004[];
    unsigned int *src;
    int row;
    int col;

    src = (unsigned int *)gBuffer + x + (y << 7);
    for (row = dy; row < dy + h; row++) {
        for (col = dx; col < dx + w; col++) {
            unsigned int v = *src++ & 0xfff;
            unsigned int off = ((page << 4) + (row & 0xf)) * 32 + (col & 0xf);
            ((unsigned int *)0x6002800)[off] = ewram_2020000[v * 2];
            ((unsigned int *)0x6002840)[off] = ewram_2020004[v * 2];
        }
        src += 0x80 - w;
    }
}
