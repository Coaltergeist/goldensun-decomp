/* Cluster Func_80797ec..Func_80797ec extracted from goldensun/asm/rom_77000/rom_79460_c_c_a.s.
 *
 * Total .text for this TU = 16 bytes (= 0x10).
 * Preserves the original ROM layout when slotted between
 * asm/rom_77000/rom_79460_c_c_a_a.o and asm/rom_77000/rom_79460_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int L88db8[] __asm__(".L88db8");

unsigned int Func_80797ec(unsigned int arg0, unsigned int arg1)
{
    return L88db8[(arg0 << 2) + arg1];
}
