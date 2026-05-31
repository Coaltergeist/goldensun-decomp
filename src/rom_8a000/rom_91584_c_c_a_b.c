/* Cluster Func_8091e9c..Func_8091e9c extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a.s.
 *
 * Total .text for this TU = 20 bytes (= 0x14).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int Func_8091e9c(unsigned int arg0) {
    unsigned int r3;
    unsigned short r2;

    r3 = iwram_3001ebc;
    r2 = 0xb8;
    r3 += r2 << 1;
    *(unsigned short *)(r3) = arg0;
    return arg0;
}
