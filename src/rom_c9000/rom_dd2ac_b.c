/* Cluster Anim_Growth..Anim_Growth extracted from goldensun/asm/rom_c9000/rom_dd2ac.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dd2ac_a.o and asm/rom_c9000/rom_dd2ac_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Growth(void *context, int subanim);

void Anim_Growth(void *context) {
    BaseAnim_Growth(context, 0);
}
