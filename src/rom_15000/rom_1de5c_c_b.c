/* Cluster SetTextBold..SetTextBold extracted from goldensun/asm/rom_15000/rom_1de5c_c.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_a.o and asm/rom_15000/rom_1de5c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e8c;

void SetTextBold(unsigned short arg0) {
    unsigned int ptr = iwram_3001e8c;
    ptr += 0xeac;
    *(unsigned short *)ptr = arg0;
}
