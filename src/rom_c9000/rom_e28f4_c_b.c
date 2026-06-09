/* Cluster Anim_SwiftStrike..Anim_SwiftStrike extracted from goldensun/asm/rom_c9000/rom_e28f4_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_e28f4_c_a.o and asm/rom_c9000/rom_e28f4_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_RapidSlash(void *context, int subanim);

void Anim_SwiftStrike(void *context) {
    int v3 = *(int *)((char *)context + 0x18);
    if (v3 == 0) {
        BaseAnim_RapidSlash(context, 3);
    } else if (v3 == 1) {
        BaseAnim_RapidSlash(context, 4);
    } else {
        BaseAnim_RapidSlash(context, 5);
    }
}
