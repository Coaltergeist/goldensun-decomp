/* Cluster Anim_Blast..Anim_Blast extracted from goldensun/asm/rom_c9000/rom_db6c8_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_db6c8_c_a.o and asm/rom_c9000/rom_db6c8_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Blast(void *context, int subanim);

void Anim_Blast(void *context) {
    BaseAnim_Blast(context, 0);
}
