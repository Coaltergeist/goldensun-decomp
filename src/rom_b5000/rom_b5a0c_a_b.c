/* Cluster Func_80b5b08..Func_80b5b08 extracted from goldensun/asm/rom_b5000/rom_b5a0c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_b5a0c_a_a.o and asm/rom_b5000/rom_b5a0c_a_c.o in
 * goldensun/stage1.ld.
 */
#define REG_BG0VOFS (*(volatile unsigned short *)0x04000012)

void Func_80b5b08(void) {
    unsigned short value = 0;
    REG_BG0VOFS = value;
}
