/* Cluster Func_80a3cf8..Func_80a3cf8 extracted from goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_c_c.s.
 *
 * Total .text for this TU = 44 bytes (= 0x2c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_a_c_c_c_c_a.o and asm/rom_a1000/rom_a1814_c_a_c_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001f2c;

void Func_80a3cf8(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;
    unsigned int r6;

    r5 = iwram_3001f2c;
    r5 += 0x86 * 2;
    r6 = arg1;
    _Func_8016498(*(unsigned int *)r5);
    _Func_801e7c0(r6, *(unsigned int *)r5, 0, 0);
}
