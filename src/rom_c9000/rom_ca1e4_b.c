/* Cluster Func_80ca1e4..Func_80ca1e4 extracted from goldensun/asm/rom_c9000/rom_ca1e4.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ca1e4_a.o and asm/rom_c9000/rom_ca1e4_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Spore(void *context, int subanim);

void Func_80ca1e4(void *context) {
    BaseAnim_Spore(context, 1);
}
