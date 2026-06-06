/* Cluster Func_80d9194..Func_80d9194 extracted from goldensun/asm/rom_c9000/rom_d9194.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d9194_a.o and asm/rom_c9000/rom_d9194_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d91dc(void *context, int subanim);

void Func_80d9194(void *context) {
    Func_80d91dc(context, 0);
}
