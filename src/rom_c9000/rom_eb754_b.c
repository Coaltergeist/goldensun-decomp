/* Cluster Func_80ec0e0..Func_80ec0e0 extracted from goldensun/asm/rom_c9000/rom_eb754.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_eb754_a.o and asm/rom_c9000/rom_eb754_c.o in
 * goldensun/stage1.ld.
 */
#define REG_BG2PA (*(volatile unsigned short *)0x04000020)

void Func_80ec0e0(void) {
    REG_BG2PA = 0x100;
}
