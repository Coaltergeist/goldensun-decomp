/* Cluster Func_80dd2b8..Func_80dd2b8 extracted from goldensun/asm/rom_c9000/rom_dd2ac_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dd2ac_c_a.o and asm/rom_c9000/rom_dd2ac_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Growth(void *context, int subanim);

void Func_80dd2b8(void *context) {
    BaseAnim_Growth(context, 1);
}
