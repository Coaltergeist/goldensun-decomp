/* Cluster Anim_Counterstrike..Anim_Counterstrike extracted from goldensun/asm/rom_c9000/rom_e28f4_c_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_a_a.o and asm/rom_c9000/rom_e28f4_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_Counterstrike(void *context) {
    BaseAnim_RapidSlash(context, 0);
}
