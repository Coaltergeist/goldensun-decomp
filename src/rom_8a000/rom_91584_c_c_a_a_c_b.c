/* Cluster WaitMapTransition..WaitMapTransition extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void WaitFrames(unsigned int nframes);
extern unsigned int *iwram_3001ebc;

void WaitMapTransition(void) {
    WaitFrames(*(unsigned int *)((char *)iwram_3001ebc + 0x1c8));
}
