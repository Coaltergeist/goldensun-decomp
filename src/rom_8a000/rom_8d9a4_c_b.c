/* Cluster Func_808f304..Func_808f304 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_a.o and asm/rom_8a000/rom_8d9a4_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

unsigned int Func_808f304(void) {
    unsigned int r3;
    unsigned int r2;
    unsigned int r0;

    r3 = iwram_3001ebc;
    r0 = 0;
    if (r3 != 0) {
        r2 = 0xcb8;
        r3 += r2;
        r2 = 0;
        r3 = *(short *)((char *)r3 + r2);
        r0 = -r3;
        r0 |= r3;
        r0 >>= 31;
    }
    return r0;
}
