/* Cluster Anim_SpinningBeat..Anim_SpinningBeat extracted from goldensun/asm/rom_c9000/rom_cc5d8_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cc5d8_c_a.o and asm/rom_c9000/rom_cc5d8_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Tentacle(void *context, int subanim);

void Anim_SpinningBeat(void *context) {
    BaseAnim_Tentacle(context, 1);
}
