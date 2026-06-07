/* Cluster Func_801656c..Func_801656c extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a_a_c_a.o and asm/rom_15000/rom_15e8c_a_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
void Func_801656c(int *arg0) {
    int *r2;
    int *r3;
    r2 = arg0;
    r3 = (int *)*arg0;
    while (r3 != (int *)0) {
        r2 = r3;
        r3 = (int *)*r2;
    }
    arg0[1] = (int)r2;
}
