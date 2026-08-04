/* Cluster Func_80a8cc0..Func_80a8cc0 extracted from goldensun/asm/rom_a1000/rom_a8604_a_a_c.s.
 *
 * Total .text for this TU = 116 bytes (= 0x74).
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a8604_a_a_c_a.o and asm/rom_a1000/rom_a8604_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void _Func_8019000(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80a8cc0(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    _Func_8019000(a0, (a3 * 2 + 0xf281) | 0x400, a1, a2, 0);
    _Func_8019000(a0, a3 * 2 + 0xf280, a1 + 1, a2, 0);
    _Func_8019000(a0, a3 * 2 + 0xf281, a1 + 2, a2, 0);
}
