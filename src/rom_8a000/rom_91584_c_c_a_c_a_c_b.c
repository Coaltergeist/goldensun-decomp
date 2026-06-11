/* Cluster Func_8091fa8..Func_8091fa8 extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
/* Func_8091fa8; two halfword stores into gState (gState) at u16
 * indices 0xe9 and 0xea. The earlier miss added a bogus return and used a
 * register-indexed store; this is plain void with independent array writes. */
extern unsigned short gState[];

void Func_8091fa8(unsigned short a, unsigned short b) {
    gState[0xe9] = a;
    gState[0xea] = b;
}
