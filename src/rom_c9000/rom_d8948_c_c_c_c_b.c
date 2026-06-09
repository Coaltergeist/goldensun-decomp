/* Cluster Anim_Tonic..Anim_Tonic extracted from goldensun/asm/rom_c9000/rom_d8948_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_c_c_c_c_a.o and asm/rom_c9000/rom_d8948_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Heal(void *context, int subanim);

void Anim_Tonic(void *context) {
    BaseAnim_Heal(context, 5);
}
