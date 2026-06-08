/* Cluster Func_80cf8c8..Func_80cf8c8 extracted from goldensun/asm/rom_c9000/rom_cf88c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cf88c_c_c_c_c_c_a.o and asm/rom_c9000/rom_cf88c_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Blob(void *context, int subanim);

void Func_80cf8c8(void *context) {
    BaseAnim_Blob(context, 2);
}
