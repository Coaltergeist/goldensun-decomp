/* Cluster Anim_Rumble..Anim_Rumble extracted from goldensun/asm/rom_c9000/rom_ceb30_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ceb30_c_a.o and asm/rom_c9000/rom_ceb30_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_HauntAttack(int context, int subanim);

void Anim_Rumble(int context) {
    BaseAnim_HauntAttack(context, 1);
}
