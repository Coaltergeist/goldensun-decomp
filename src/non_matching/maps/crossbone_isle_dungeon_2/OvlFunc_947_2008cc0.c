/*
 * Exact size match: 0x2718 == 0x2718 (`sub sp, #8`, exact literal pool after linker sym resolution).
 * Remaining minor reg/sched diffs:
 * - Outer loop `dx + w` pseudo gets `r3` instead of `r2` in global.c (`18.greg`), causing an
 *   anti-dep with `mov r3, r4` in `23.sched2` that schedules `mov ip, r3` at +0x40 instead of end of BB3.
 * - Scratch reloads in BB1/BB2/BB3 pick `r2`/`r6`/`r2`/`r3` vs target `r6`/`r1`/`r3`/`r6`.
 * - Inner loop `87` (`adds r3, r6, r3`) vs `99` (`ands r1, r2`) and `p2`/`0x6002840` scheduling at +0x72..+0x7a.
 */
void OvlFunc_947_2008cc0(int x, int y, int w, int h, int page, int dx, int dy)
{
    unsigned int *src = (unsigned int *)(gBuffer + (((y << 7) + x) << 2));
    int row;
    for (row = dy; row < dy + h; row++) {
        int col;
        for (col = dx; col < dx + w; col++) {
            int *p2;
            unsigned short val = *src++;
            int off = ((((row & 0xf) + (page << 4)) << 5) + (col & 0xf)) << 2;
            int tile = (val & 0xfff) << 3;
            *(int *)(0x6002800 + off) = *(int *)(0x02020000 + tile);
            p2 = (int *)(0x02020004 + tile);
            *(int *)(0x6002840 + off) = *p2;
        }
        src = (unsigned int *)((unsigned char *)src + ((0x80 - w) << 2));
    }
}
