/* Cluster Anim_PoisonBeat..Anim_PoisonBeat extracted from goldensun/asm/rom_c9000/rom_cc5d8.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cc5d8_a.o and asm/rom_c9000/rom_cc5d8_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Tentacle(void *context, int subanim);

void Anim_PoisonBeat(void *context) {
    BaseAnim_Tentacle(context, 0);
}
