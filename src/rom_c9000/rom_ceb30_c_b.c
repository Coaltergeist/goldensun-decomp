/* Cluster Func_80ceb3c..Func_80ceb3c extracted from goldensun/asm/rom_c9000/rom_ceb30_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ceb30_c_a.o and asm/rom_c9000/rom_ceb30_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80ceb54(int context, int subanim);

void Func_80ceb3c(int context) {
    Func_80ceb54(context, 1);
}
