/* Cluster Func_80e7320..Func_80e7320 extracted from goldensun/asm/rom_c9000/rom_e7320.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e7320_a.o and asm/rom_c9000/rom_e7320_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80e7404(void *context, int subanim);

void Func_80e7320(void *context) {
    Func_80e7404(context, 0);
}
