/* Cluster Func_80dbc0c..Func_80dbc0c extracted from goldensun/asm/rom_c9000/rom_dbbdc_c_c_c_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_dbbdc_c_c_c_c_a.o and asm/rom_c9000/rom_dbbdc_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern void BaseAnim_Breath(void *context, int subanim);

void Func_80dbc0c(void *context) {
    BaseAnim_Breath(context, 5);
}
