/* Cluster Func_80d8954..Func_80d8954 extracted from goldensun/asm/rom_c9000/rom_d8948_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_c_a.o and asm/rom_c9000/rom_d8948_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d89ac(int context, int subanim);

void Func_80d8954(int context) {
    Func_80d89ac(context, 1);
}
