/* Cluster Func_80cefe0..Func_80cefe0 extracted from goldensun/asm/rom_c9000/rom_cefd4_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cefd4_c_a.o and asm/rom_c9000/rom_cefd4_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Spasm(void *context, int subanim);

void Func_80cefe0(void *context) {
    BaseAnim_Spasm(context, 0);
}
