/* Cluster MusicPlayerJumpTableCopy..MusicPlayerJumpTableCopy extracted from goldensun/rom_f9000/src/rom_f9ef8_c.s.
 *
 * Total .text for this TU = 4 bytes (= 0x4).
 * Preserves the original ROM layout when slotted between
 * rom_f9000/src/rom_f9ef8_c_a.o and rom_f9000/src/rom_f9ef8_c_c.o in
 * goldensun/stage1.ld.
 */
/* FF: void MusicPlayerJumpTableCopy(undefined dest) */
void MusicPlayerJumpTableCopy(void) {
    asm("swi 0x2a");
}
