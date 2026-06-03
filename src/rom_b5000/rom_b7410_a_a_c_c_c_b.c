/* Cluster Func_80b7dd0..Func_80b7dd0 extracted from goldensun/asm/rom_b5000/rom_b7410_a_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b7410_a_a_c_c_c_a.o and asm/rom_b5000/rom_b7410_a_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e74;

unsigned int Func_80b7dd0(int unit)
{
    unsigned char *base;
    unsigned char *table;
    int idx;

    base = *(unsigned char **)&iwram_3001e74;
    table = base + 0x74;
    if (unit > 7)
        unit -= 0x78;
    idx = unit + 0x2dc;
    if (base[idx] == 0xff)
        return 0;
    return (unsigned int)(table + base[idx] * 0x2c);
}
