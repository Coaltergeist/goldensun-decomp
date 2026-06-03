/* Cluster Func_809ba34..Func_809ba34 extracted from goldensun/asm/rom_8a000/rom_9b698_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_9b698_a_a.o and asm/rom_8a000/rom_9b698_a_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_809ba34(unsigned char *arg0)
{
    signed char v;
    unsigned int x;

    v = *(signed char *)(arg0 + 0x41);
    if (v == 0)
        return 0;
    x = *(unsigned int *)(arg0 + 0xc) ^ 0x80000000;
    return ((unsigned int)(-(int)x | x)) >> 31;
}
