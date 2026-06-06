/* Cluster Func_80b2764..Func_80b2764 extracted from goldensun/asm/rom_b0000/rom_b0070_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_b0000/rom_b0070_c_a_a.o and asm/rom_b0000/rom_b0070_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern short Lb41ac[] __asm__(".Lb41ac");

short Func_80b2764(unsigned int arg0)
{
    return Lb41ac[arg0 * 33 + 32];
}
