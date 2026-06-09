/* Cluster Anim_Ply..Anim_Ply extracted from goldensun/asm/rom_c9000/rom_d8948.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_a.o and asm/rom_c9000/rom_d8948_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Heal(void *context, int subanim);

void Anim_Ply(void *context) {
    BaseAnim_Heal(context, 0);
}
