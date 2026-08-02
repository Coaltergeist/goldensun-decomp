/* Cluster Func_80218dc..Func_80218dc extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_a_c_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_c_c_c_a_a_c_c_a.o and asm/rom_15000/rom_20198_c_c_c_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
/* Cluster Func_80218dc..Func_80218dc extracted from goldensun/asm/rom_15000/rom_20198_c_c_c_a_a_c_c.s.
 */
extern void Func_8019000(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

int Func_80218dc(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    Func_8019000(a0, (a3 * 2 + 0xf315) | 0x400, a1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf314, a1 + 1, a2, 0);
    Func_8019000(a0, a3 * 2 + 0xf315, a1 + 2, a2, 0);
}
