/* Cluster Func_80167d8..Func_80167d8 extracted from goldensun/asm/rom_15000/rom_15e8c.s.
 *
 * Total .text for this TU = 8 bytes (= 0x8).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a.o and asm/rom_15000/rom_15e8c_c.o in
 * goldensun/stage1.ld.
 */
void Func_80167d8(unsigned int r0) {
    unsigned short r3;
    r3 = 2;
    *(unsigned short *)(r0 + 0x1c) = r3;
}
