/* Cluster Func_808b248..Func_808b248 extracted from goldensun/asm/rom_8a000/rom_8ace0_a_a_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_a_c_a.o and asm/rom_8a000/rom_8ace0_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short gState[];

short Func_808b248(void) {
    return gState[235];
}
