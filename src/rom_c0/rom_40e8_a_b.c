/* Cluster Func_800412c..Func_800412c extracted from goldensun/asm/rom_c0/rom_40e8_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_40e8_a_a.o and asm/rom_c0/rom_40e8_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_800412c(unsigned int *dst, unsigned int *src, unsigned int n)
{
    unsigned int i;
    n >>= 2;
    for (i = 0; i < n; i++)
        *dst++ = *src++;
}
