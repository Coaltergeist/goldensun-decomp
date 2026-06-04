/* Cluster Func_80c0ea8..Func_80c0ea8 extracted from goldensun/asm/rom_b5000/rom_bffb8.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bffb8_a.o and asm/rom_b5000/rom_bffb8_c.o in
 * goldensun/stage1.ld.
 */
#define REG_BLDCNT (*(volatile unsigned short *)0x04000050)

void Func_80c0ea8(void) {
    REG_BLDCNT = 0xbf;
}
