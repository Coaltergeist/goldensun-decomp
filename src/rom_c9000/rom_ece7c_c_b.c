/* Cluster Anim_VorpalSlash..Anim_VorpalSlash extracted from goldensun/asm/rom_c9000/rom_ece7c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ece7c_c_a.o and asm/rom_c9000/rom_ece7c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_FullScreenSlash(void *context, int subanim);

void Anim_VorpalSlash(void *context) {
    BaseAnim_FullScreenSlash(context, 2);
}
