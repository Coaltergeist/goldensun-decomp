/* Cluster Func_808e990..Func_808e990 extracted from goldensun/asm/rom_8a000/rom_8d9a4_a_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_c_a_a.o and asm/rom_8a000/rom_8d9a4_a_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_808e14c(unsigned short);

unsigned int Func_808e990(unsigned short a)
{
    int r3;
    r3 = Func_808e14c(a);
    return (unsigned int)(-r3 | r3) >> 31;
}
