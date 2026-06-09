/* Cluster Func_8096f14..Func_8096f14 extracted from goldensun/asm/rom_8a000/rom_96cdc_a.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_96cdc_a_a.o and asm/rom_8a000/rom_96cdc_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001e40;
extern void _Actor_SetColorswap(unsigned int a, unsigned int b);
extern void Func_8096ddc(unsigned int a);

void Func_8096f14(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        _Actor_SetColorswap(arg0, 7);
    } else {
        _Actor_SetColorswap(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        Func_8096ddc(arg0);
    }
}
