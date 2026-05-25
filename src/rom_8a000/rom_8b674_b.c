/* Cluster Func_808b854..Func_808b854 extracted from goldensun/asm/rom_8a000/rom_8b674.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8b674_a.o and asm/rom_8a000/rom_8b674_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int Func_808b854(unsigned int arg0) {
    return iwram_3001ebc + (arg0 << 2) + 0x14;
}
