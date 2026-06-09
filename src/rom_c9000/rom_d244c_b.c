/* Cluster Anim_DragonDriver..Anim_DragonDriver extracted from goldensun/asm/rom_c9000/rom_d244c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d244c_a.o and asm/rom_c9000/rom_d244c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Tiamat(void *context, int subanim);

void Anim_DragonDriver(void *context) {
    BaseAnim_Tiamat(context, 1);
}
