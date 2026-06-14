/* Cluster Anim_Poison..Anim_Poison extracted from goldensun/asm/rom_c9000/rom_d5258_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d5258_a_a.o and asm/rom_c9000/rom_d5258_a_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_ParticleCloud(void *context, int subanim);

void Anim_Poison(void *context) {
    unsigned int v;
    v = *(unsigned int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_ParticleCloud(context, 0);
    } else {
        BaseAnim_ParticleCloud(context, 1);
    }
}
