/* Cluster Func_8021bc8..Func_8021bc8 extracted from goldensun/asm/rom_15000/rom_20198_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a.o and asm/rom_15000/rom_20198_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Data_73968[];

unsigned int Func_8021bc8(int idx) {
    if (idx != 0)
        idx = 0;
    return Data_73968[idx];
}
