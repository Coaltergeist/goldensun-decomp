/* Cluster Func_801964c..Func_801964c extracted from goldensun/asm/rom_15000/rom_1908c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1908c_a.o and asm/rom_15000/rom_1908c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80196c4(unsigned int param_1, unsigned int param_2, int param_3);

void Func_801964c(unsigned int param_1, unsigned int param_2) {
    Func_80196c4(param_1, param_2, 0x7fffffff);
}
