/* Cluster Func_80d5274..Func_80d5274 extracted from goldensun/asm/rom_c9000/rom_d5258.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d5258_a.o and asm/rom_c9000/rom_d5258_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80d52c8(void *context, int subanim);

void Func_80d5274(void *context) {
    Func_80d52c8(context, 1);
}
