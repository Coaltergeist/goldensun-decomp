/* Cluster Anim_RapidSmash..Anim_RapidSmash extracted from goldensun/asm/rom_c9000/rom_e28f4.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_a.o and asm/rom_c9000/rom_e28f4_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_RapidSmash(void *context) {
    int v = *(int *)((char *)context + 0x18);
    if (v == 0) {
        BaseAnim_RapidSlash(context, 6);
    } else if (v == 1) {
        BaseAnim_RapidSlash(context, 7);
    } else {
        BaseAnim_RapidSlash(context, 8);
    }
}
