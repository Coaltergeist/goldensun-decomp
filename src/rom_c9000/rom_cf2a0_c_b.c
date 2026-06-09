/* Cluster Anim_Dew..Anim_Dew extracted from goldensun/asm/rom_c9000/rom_cf2a0_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cf2a0_c_a.o and asm/rom_c9000/rom_cf2a0_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Revive(void *context, int subanim);

void Anim_Dew(void *context) {
    BaseAnim_Revive(context, 1);
}
