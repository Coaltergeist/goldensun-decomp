/* Cluster Func_80d9ab8..Func_80d9ab8 extracted from goldensun/asm/rom_c9000/rom_d9ab8.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d9ab8_a.o and asm/rom_c9000/rom_d9ab8_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_StatDown(void *context, int subanim);

void Func_80d9ab8(void *context) {
    BaseAnim_StatDown(context, 0);
}
