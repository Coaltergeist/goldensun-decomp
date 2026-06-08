/* Cluster MessageID..MessageID extracted from goldensun/asm/rom_8a000/rom_92950_c_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_c_a_a.o and asm/rom_8a000/rom_92950_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

void MessageID(unsigned short stringID) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc;
    r2 = 0xec;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = stringID;
}
