/* Cluster m4aMPlayContinue..m4aMPlayContinue extracted from goldensun/asm/rom_f9000/rom_f9ef8_c_a_c.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9ef8_c_a_c_a.o and asm/rom_f9000/rom_f9ef8_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void MPlayContinue(unsigned int);

void m4aMPlayContinue(unsigned int mplayInfo) {
    MPlayContinue(mplayInfo);
}
