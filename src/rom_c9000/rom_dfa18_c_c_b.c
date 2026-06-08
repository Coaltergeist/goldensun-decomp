/* Cluster Func_80dfa30..Func_80dfa30 extracted from goldensun/asm/rom_c9000/rom_dfa18_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dfa18_c_c_a.o and asm/rom_c9000/rom_dfa18_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Tackle(void *context, int subanim);

void Func_80dfa30(void *context) {
    BaseAnim_Tackle(context, 2);
}
