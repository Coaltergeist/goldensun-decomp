/* Cluster Func_80e732c..Func_80e732c extracted from goldensun/asm/rom_c9000/rom_e7320_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e7320_c_a.o and asm/rom_c9000/rom_e7320_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80e7404(void *context, int subanim);

void Func_80e732c(void *context) {
    Func_80e7404(context, 1);
}
