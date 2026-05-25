/* Cluster Func_80917c4..Func_80917c4 extracted from goldensun/asm/rom_8a000/rom_91584_c_a.s.
 *
 * Total .text for this TU = 12 bytes (= 0xc).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_a.o and asm/rom_8a000/rom_91584_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

void Func_80917c4(unsigned int arg0) {
    unsigned int *ptr = (unsigned int *)iwram_3001ebc;
    ptr[4] = arg0;
}
