/* Cluster Func_80f3898..Func_80f3898 extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_c_a_a.o and asm/rom_f2000/rom_f2028_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
int Func_80f3898(int arg0) {
    if (arg0 > 0x1f)
        arg0 = 0x1f;
    else if (arg0 < 0)
        arg0 = 0;
    return arg0;
}
