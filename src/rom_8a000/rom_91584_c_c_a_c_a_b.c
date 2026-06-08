/* Cluster Func_8091f90..Func_8091f90 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char gState[];

void Func_8091f90(unsigned short arg0, unsigned short arg1) {
    unsigned char *r3;

    r3 = gState;
    *(unsigned short *)(r3 + 0xe7 * 2) = arg0;
    *(unsigned short *)(r3 + 0xe8 * 2) = arg1;
}
