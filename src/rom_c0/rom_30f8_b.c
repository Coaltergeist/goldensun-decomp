/* Cluster Func_800352c..Func_800352c extracted from goldensun/asm/rom_c0/rom_30f8.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_30f8_a.o and asm/rom_c0/rom_30f8_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001b00;

void Func_800352c(void) {
    iwram_3001b00 = 0x13;
}
