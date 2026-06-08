/* Cluster Func_8096f50..Func_8096f50 extracted from goldensun/asm/rom_8a000/rom_96cdc_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_96cdc_a_c_a.o and asm/rom_8a000/rom_96cdc_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern void _Actor_SetColorswap(unsigned int a, int b);
extern void Func_8096ddc(unsigned int a);

void Func_8096f50(unsigned int arg0)
{
    if (iwram_3001e40 & 1) {
        _Actor_SetColorswap(arg0, ((iwram_3001e40 >> 1) % 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        Func_8096ddc(arg0);
    }
}
