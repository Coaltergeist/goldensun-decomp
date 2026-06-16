/* Cluster Func_80933d4..Func_80933d4 extracted from goldensun/asm/rom_8a000/rom_93304_a_a_a_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a_a_a_a.o and asm/rom_8a000/rom_93304_a_a_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern int galloc_ewram(int, int);

void Func_80933d4(unsigned int a0, unsigned int a1) {
    unsigned int r5;
    unsigned int r6;
    unsigned int base;
    unsigned int r3;

    r5 = a0;
    r6 = a1;
    base = (unsigned int)galloc_ewram(0x1b, 0xccc);
    r3 = 0xf0;
    r3 <<= 1;
    base += r3;
    r3 = *(unsigned int *)base;
    *(unsigned int *)(r3 + 0x30) = r5;
    *(unsigned int *)(r3 + 0x34) = r6;
}
