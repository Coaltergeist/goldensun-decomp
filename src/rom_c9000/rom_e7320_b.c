/* Cluster Anim_Meteor..Anim_Meteor extracted from goldensun/asm/rom_c9000/rom_e7320.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e7320_a.o and asm/rom_c9000/rom_e7320_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Meteor(void *context, int subanim);

void Anim_Meteor(void *context) {
    BaseAnim_Meteor(context, 0);
}
