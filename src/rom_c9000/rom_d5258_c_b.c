/* Cluster Anim_Delude..Anim_Delude extracted from goldensun/asm/rom_c9000/rom_d5258_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d5258_c_a.o and asm/rom_c9000/rom_d5258_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_ParticleCloud(void *context, int subanim);

void Anim_Delude(void *context) {
    BaseAnim_ParticleCloud(context, 2);
}
