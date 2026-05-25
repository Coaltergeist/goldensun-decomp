/* Cluster Func_48a0..Func_48a0 extracted from goldensun/asm/rom_c0/rom_4858.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_4858_a.o and asm/rom_c0/rom_4858_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_1e50;

unsigned int Func_48a0(void) {
    return (0x81 << 18) - iwram_1e50;
}
