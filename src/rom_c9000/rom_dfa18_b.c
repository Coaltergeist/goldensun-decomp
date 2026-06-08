/* Cluster Anim_BoneCharge..Anim_BoneCharge extracted from goldensun/asm/rom_c9000/rom_dfa18.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dfa18_a.o and asm/rom_c9000/rom_dfa18_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Tackle(void *context, int subanim);

void Anim_BoneCharge(void *context) {
    BaseAnim_Tackle(context, 0);
}
