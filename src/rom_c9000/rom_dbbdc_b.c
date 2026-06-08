/* Cluster Func_80dbbdc..Func_80dbbdc extracted from goldensun/asm/rom_c9000/rom_dbbdc.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dbbdc_a.o and asm/rom_c9000/rom_dbbdc_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Breath(void *context, int subanim);

void Func_80dbbdc(void *context) {
    BaseAnim_Breath(context, 0);
}
