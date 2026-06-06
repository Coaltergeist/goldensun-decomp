/* Cluster Func_80db6c8..Func_80db6c8 extracted from goldensun/asm/rom_c9000/rom_db6c8.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_db6c8_a.o and asm/rom_c9000/rom_db6c8_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80db6e0(void *context, int subanim);

void Func_80db6c8(void *context) {
    Func_80db6e0(context, 1);
}
