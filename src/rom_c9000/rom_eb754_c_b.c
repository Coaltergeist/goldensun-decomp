/* Cluster SetBG2Wide..SetBG2Wide extracted from goldensun/asm/rom_c9000/rom_eb754_c.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c9000/rom_eb754_c_a.o and asm/rom_c9000/rom_eb754_c_c.o in
 * goldensun/stage1.ld.
 */
#define REG_BG2PA (*(volatile unsigned short *)0x04000020)

void SetBG2Wide(void) {
    REG_BG2PA = 0x80;
}
