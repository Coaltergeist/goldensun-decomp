/* Cluster Func_80f38ac..Func_80f38ac extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_c_a.o and asm/rom_f2000/rom_f2028_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
int Func_80f38ac(int arg0) {
    int max;

    max = 0xf8 << 7;
    if (arg0 > max)
        arg0 = max;
    return arg0;
}
