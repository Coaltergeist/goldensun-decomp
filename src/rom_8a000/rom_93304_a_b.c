/* Cluster Func_935b0..Func_935b0 extracted from goldensun/asm/rom_8a000/rom_93304_a.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_93304_a_a.o and asm/rom_8a000/rom_93304_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_1e70;

void Func_935b0(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int *ptr;
    ptr = (unsigned int *)iwram_1e70;
    ptr[0x3b] = arg0;
    ptr[0x3c] = arg1;
    ptr[0x3d] = arg2;
    ptr[0x3e] = arg3;
}
