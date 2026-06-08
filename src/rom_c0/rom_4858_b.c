/* Cluster Func_80048a0..Func_80048a0 extracted from goldensun/asm/rom_c0/rom_4858.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_4858_a.o and asm/rom_c0/rom_4858_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int gPtrs;

unsigned int Func_80048a0(void) {
    return (0x81 << 18) - gPtrs;
}
