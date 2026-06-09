/* Cluster Anim_TwinBeaks..Anim_TwinBeaks extracted from goldensun/asm/rom_c9000/rom_ca57c_c_c_c_c_c_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ca57c_c_c_c_c_c_c_c_c_c_a.o and asm/rom_c9000/rom_ca57c_c_c_c_c_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Bite_Sting(void *context, int subanim);

void Anim_TwinBeaks(void *context) {
    BaseAnim_Bite_Sting(context, 7);
}
