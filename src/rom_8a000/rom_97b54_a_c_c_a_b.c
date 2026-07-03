/* Cluster Func_8099018..Func_8099018 extracted from goldensun/asm/rom_8a000/rom_97b54_a_c_c_a.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_97b54_a_c_c_a_a.o and asm/rom_8a000/rom_97b54_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001e40[];
extern void _Actor_SetColorswap(unsigned int, unsigned int);

void Func_8099018(unsigned int arg0)
{
    unsigned int v;

    v = *(unsigned int *)iwram_3001e40;
    v &= 7;
    if (v == 0) {
        _Actor_SetColorswap(arg0, 2);
    } else if (v == 2) {
        _Actor_SetColorswap(arg0, 0);
    }
}
