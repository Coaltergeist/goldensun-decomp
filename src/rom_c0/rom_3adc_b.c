/* Cluster Func_8003ce0..Func_8003ce0 extracted from goldensun/asm/rom_c0/rom_3adc.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_3adc_a.o and asm/rom_c0/rom_3adc_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001c98;

void Func_8003ce0(void)
{
    if (iwram_3001c98 != 0)
    {
        do
        {
            WaitFrames(1);
        } while (iwram_3001c98 != 0);
    }
}
