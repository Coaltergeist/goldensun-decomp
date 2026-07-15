/* Cluster Func_808b9f8..Func_808b9f8 extracted from goldensun/asm/rom_8a000/rom_8b674_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8b674_c_a.o and asm/rom_8a000/rom_8b674_c_c.o in
 * goldensun/stage1.ld.
 */
extern int store(int);

/* Func_808b9f8 @ 0x0808b9f8  [asm/rom_8a000/rom_8b674_c.s]
 * Zero 0x42 words walking DOWN from *iwram_3001ebc + 0x118 (0x8c<<1).
 * Loop decrements the counter BEFORE the store (sub; str; sub; cmp; bge).
 */
extern unsigned int iwram_3001ebc;

void Func_808b9f8(void)
{
    unsigned int base = iwram_3001ebc;
    unsigned int ofs;
    unsigned int zero;
    unsigned int *p;
    int i;

    ofs = 0x8c << 1;
    zero = 0;
    i = 0x41;
    p = (unsigned int *)(base + ofs);
    do {
        i--;
        *p = zero;
        p--;
    } while (i >= 0);
}
