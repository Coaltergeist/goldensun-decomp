/* Cluster Func_80b00f4..Func_80b00f4 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_a.o and asm/rom_b0000/rom_b0070_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;
extern void Func_80b08b8(unsigned int x);

void Func_80b00f4(void) {
    Func_80b08b8(iwram_3001f2c + 0x380);
}
