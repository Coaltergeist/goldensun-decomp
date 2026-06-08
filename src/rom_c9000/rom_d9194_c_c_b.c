/* Cluster Func_80d91ac..Func_80d91ac extracted from goldensun/asm/rom_c9000/rom_d9194_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_d9194_c_c_a.o and asm/rom_c9000/rom_d9194_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_StatUp(int context, int subanim);

void Func_80d91ac(int context) {
    BaseAnim_StatUp(context, 2);
}
