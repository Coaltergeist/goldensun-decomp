/* Cluster Anim_Unused_Weaken..Anim_Unused_Weaken extracted from goldensun/asm/rom_c9000/rom_d9ab8_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d9ab8_c_c_c_a.o and asm/rom_c9000/rom_d9ab8_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_StatDown(void *context, int subanim);

void Anim_Unused_Weaken(void *context) {
    BaseAnim_StatDown(context, 3);
}
