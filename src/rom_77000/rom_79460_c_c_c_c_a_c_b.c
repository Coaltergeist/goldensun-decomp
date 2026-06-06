/* Cluster Func_8079be8..Func_8079be8 extracted from goldensun/asm/rom_77000/rom_79460_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_c_c_a_c_a.o and asm/rom_77000/rom_79460_c_c_c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_8079bc4(void);

unsigned short Func_8079be8(void) {
    return Func_8079bc4() * 0x64 >> 16;
}
