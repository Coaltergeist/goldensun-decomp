/* Cluster Func_80cefd4..Func_80cefd4 extracted from goldensun/asm/rom_c9000/rom_cefd4.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_cefd4_a.o and asm/rom_c9000/rom_cefd4_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Spasm(void *context, int subanim);

void Func_80cefd4(void *context) {
    BaseAnim_Spasm(context, 1);
}
