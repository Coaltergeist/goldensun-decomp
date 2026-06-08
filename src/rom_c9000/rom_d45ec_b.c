/* Cluster Anim_Nova..Anim_Nova extracted from goldensun/asm/rom_c9000/rom_d45ec.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d45ec_a.o and asm/rom_c9000/rom_d45ec_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Nova(void *context, int subanim);

void Anim_Nova(void *context) {
    BaseAnim_Nova(context, 0);
}
