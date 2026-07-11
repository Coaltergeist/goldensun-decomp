/* Cluster Func_80a4110..Func_80a4110 extracted from goldensun/asm/rom_a1000/rom_a1814_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_a1000/rom_a1814_c_c_a_a.o and asm/rom_a1000/rom_a1814_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Laf2e4[] __asm__(".Laf2e4");

unsigned int Func_80a4110(int arg0, int arg1)
{
    if (arg0 > 2 || arg1 > 2 || arg0 < 0 || arg1 < 0)
        return 0;
    return Laf2e4[arg1 * 3 + arg0];
}
