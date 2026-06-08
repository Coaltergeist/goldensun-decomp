/* Cluster Anim_FreebiteRush..Anim_FreebiteRush extracted from goldensun/asm/rom_c9000/rom_e28f4_c_a_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_a_c_c_c_a.o and asm/rom_c9000/rom_e28f4_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_FreebiteRush(void *context) {
    BaseAnim_RapidSlash(context, 2);
}
