/* Cluster Func_80ca5a0..Func_80ca5a0 extracted from goldensun/asm/rom_c9000/rom_ca57c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_ca57c_c_c_c_a.o and asm/rom_c9000/rom_ca57c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Bite_Sting(void *context, int subanim);

void Func_80ca5a0(void *context) {
    BaseAnim_Bite_Sting(context, 10);
}
