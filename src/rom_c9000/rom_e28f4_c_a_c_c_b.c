/* Cluster Anim_BacteriaRush..Anim_BacteriaRush extracted from goldensun/asm/rom_c9000/rom_e28f4_c_a_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_a_c_c_a.o and asm/rom_c9000/rom_e28f4_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_BacteriaRush(void *context) {
    BaseAnim_RapidSlash(context, 1);
}
