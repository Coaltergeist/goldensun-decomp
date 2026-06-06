/* Cluster Func_8079bc4..Func_8079bc4 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int ewram_20023a8;

unsigned short Func_8079bc4(void) {
    unsigned int state = ewram_20023a8 * 0x41c64e6d + 0x3039;
    ewram_20023a8 = state;
    return state >> 8;
}
