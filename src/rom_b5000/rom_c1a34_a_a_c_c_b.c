/* Cluster GetEnemyHeight..GetEnemyHeight extracted from goldensun/asm/rom_b5000/rom_c1a34_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c1a34_a_a_c_c_a.o and asm/rom_b5000/rom_c1a34_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char Lc7420[] __asm__(".Lc7420");

unsigned int GetEnemyHeight(unsigned int param_1)
{
    if (param_1 > 0xab)
        return 0;
    return Lc7420[(param_1 << 3) + 4];
}
