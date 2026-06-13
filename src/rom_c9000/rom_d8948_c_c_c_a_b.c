/* Cluster Anim_CurePoison..Anim_CurePoison extracted from goldensun/asm/rom_c9000/rom_d8948_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d8948_c_c_c_a_a.o and asm/rom_c9000/rom_d8948_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Heal(void *context, int subanim);

void Anim_CurePoison(void *context) {
    unsigned int v;

    v = *(unsigned int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_Heal(context, 3);
    } else {
        BaseAnim_Heal(context, 4);
    }
}
