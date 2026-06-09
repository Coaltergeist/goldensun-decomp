/* Cluster Anim_DemonNight..Anim_DemonNight extracted from goldensun/asm/rom_c9000/rom_ceb30.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ceb30_a.o and asm/rom_c9000/rom_ceb30_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_HauntAttack(void *context, int subanim);

void Anim_DemonNight(void *context) {
    BaseAnim_HauntAttack(context, 0);
}
