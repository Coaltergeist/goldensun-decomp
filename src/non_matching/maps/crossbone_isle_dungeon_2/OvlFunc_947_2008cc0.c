// Remaining diff: original C used literal addresses 0x02020000 / 0x02020004 (CONST_INT,
// which stays inside MEM(PLUS) and reloads via `add r2, r1, r6; ldr r2, [r2]`), whereas
// reference asm symbolizes `ewram_2020000` / `ewram_2020004` (R_ARM_ABS32 SYMBOL_REF),
// causing loop.c to hoist both base pointers out of the inner loop (`ldr r2, [r6, r1]`).
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
            unsigned int v = (*src++ & 0xfff) << 1;
            unsigned int off = ((page << 4) + (row & 0xf)) * 32 + (col & 0xf);
            ((unsigned int *)0x6002800)[off] = ewram_2020000[v];
            ((unsigned int *)0x6002840)[off] = ewram_2020004[v];
        }
        src += 0x80 - w;
    }
}
