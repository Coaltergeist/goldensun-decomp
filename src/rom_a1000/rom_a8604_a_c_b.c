/* Cluster Func_80a9374..Func_80a9374 extracted from goldensun/asm/rom_a1000/rom_a8604_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a8604_a_c_a.o and asm/rom_a1000/rom_a8604_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;

void Func_80a9374(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;

    r5 = iwram_3001f2c;
    _GetUnit(arg1);
    Func_80a345c();
    r5 += 0xe4 << 1;
    Func_80a68a8(r5);
}
