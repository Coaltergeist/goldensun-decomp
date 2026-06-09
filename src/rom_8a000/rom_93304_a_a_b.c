/* Cluster Func_8093554..Func_8093554 extracted from goldensun/asm/rom_8a000/rom_93304_a_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a_a.o and asm/rom_8a000/rom_93304_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int galloc_ewram(unsigned int, unsigned int);

unsigned int Func_8093554(void) {
    unsigned int r0;
    unsigned int r3;

    r0 = galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    r0 += r3;
    r0 = *(unsigned int *)r0;
    return r0;
}
