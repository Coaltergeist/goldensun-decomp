/* Cluster Anim_Wish..Anim_Wish extracted from goldensun/asm/rom_c9000/rom_d8948_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_c_a.o and asm/rom_c9000/rom_d8948_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Heal(int context, int subanim);

void Anim_Wish(int context) {
    BaseAnim_Heal(context, 1);
}
