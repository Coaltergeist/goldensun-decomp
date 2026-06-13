/* Cluster Func_80b0894..Func_80b0894 extracted from goldensun/asm/rom_b0000/rom_b0070_a_a_c.s.
 *
 * Total .text for this TU = 36 bytes (= 0x24).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_a_a_c_a.o and asm/rom_b0000/rom_b0070_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

void Func_80b0894(void) {
    unsigned int r0;
    unsigned int r3;

    r3 = (unsigned int)&iwram_3001ebc;
    r0 = *(unsigned int *)r3;
    r3 = 0x236;
    r0 += r3;
    _Func_8091200(r0, 1);
    _Func_8091254(0x10);
}
