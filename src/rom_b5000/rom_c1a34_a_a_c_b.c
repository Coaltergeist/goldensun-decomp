/* Cluster Func_80c2384..Func_80c2384 extracted from goldensun/asm/rom_b5000/rom_c1a34_a_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_b5000/rom_c1a34_a_a_c_a.o and asm/rom_b5000/rom_c1a34_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned short Lc7420[] __asm__(".Lc7420");

unsigned int Func_80c2384(unsigned int n)
{
    if (n > 0xab)
        return Lc7420[0];
    return Lc7420[n * 4];
}
