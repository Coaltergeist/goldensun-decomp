/* Cluster Func_808c4c0..Func_808c4c0 extracted from goldensun/asm/rom_8a000/rom_8ba38_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ba38_a_a.o and asm/rom_8a000/rom_8ba38_a_c.o in
 * goldensun/stage1.ld.
 */
extern void *galloc_ewram(int index, unsigned int size);
extern void _Func_8011644(void);

void Func_808c4c0(void)
{
    void *base;
    short *r5;

    base = galloc_ewram(0x1b, 0xccc);
    r5 = (short *)((char *)base + (0xcf << 1));
    if (*r5 == 3) {
        _Func_8011644();
        *(unsigned char *)(*(unsigned int *)((char *)base + (0xf0 << 1)) + 0x5b) = 0;
    }
}
