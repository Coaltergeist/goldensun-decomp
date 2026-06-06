/* Cluster Func_80c9c60..Func_80c9c60 extracted from goldensun/asm/rom_c9000/rom_c91dc.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_c91dc_a.o and asm/rom_c9000/rom_c91dc_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80c9ca8(void *context, int subanim);

void Func_80c9c60(void *context) {
    Func_80c9ca8(context, 0);
}
