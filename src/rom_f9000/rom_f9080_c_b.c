/* Cluster Func_80f9594..Func_80f9594 extracted from goldensun/asm/rom_f9000/rom_f9080_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_c_a.o and asm/rom_f9000/rom_f9080_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char ewram_200303c;

unsigned int Func_80f9594(void) {
    return ewram_200303c;
}
