/* Cluster Anim_WingFlutter..Anim_WingFlutter extracted from goldensun/asm/rom_c9000/rom_de974_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_de974_c_c_c_a.o and asm/rom_c9000/rom_de974_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int BaseAnim_ParticleSpray(void *context, int subanim);

void Anim_WingFlutter(void *context) {
    BaseAnim_ParticleSpray(context, 3);
}
