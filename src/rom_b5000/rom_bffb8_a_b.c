/* Cluster Func_80c0298..Func_80c0298 extracted from goldensun/asm/rom_b5000/rom_bffb8_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_bffb8_a_a.o and asm/rom_b5000/rom_bffb8_a_c.o in
 * goldensun/stage1.ld.
 */
#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)

void Func_80c0298(void) {
    unsigned short value = 0;
    REG_BG0VOFS = value;
}
