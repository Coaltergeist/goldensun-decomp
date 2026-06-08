/* Cluster Func_80c9c9c..Func_80c9c9c extracted from goldensun/asm/rom_c9000/rom_c91dc_c_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_c91dc_c_c_c_c_c_a.o and asm/rom_c9000/rom_c91dc_c_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_SonicWave(int context, int subanim);

void Func_80c9c9c(int context) {
    BaseAnim_SonicWave(context, 1);
}
