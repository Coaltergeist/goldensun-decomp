/* Cluster m4aSoundMain..m4aSoundMain extracted from goldensun/asm/rom_f9000/rom_f9ef8_c_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9ef8_c_a_a.o and asm/rom_f9000/rom_f9ef8_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern void SoundMain(void);

void m4aSoundMain(void) {
    SoundMain();
}
