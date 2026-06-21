/* Cluster Func_808e96c..Func_808e96c extracted from goldensun/asm/rom_8a000/rom_8d9a4_a_c_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_c_a_a_a.o and asm/rom_8a000/rom_8d9a4_a_c_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_808e4b4(unsigned int, unsigned int, unsigned int *);

unsigned int Func_808e96c(unsigned int arg0)
{
    unsigned int local;
    unsigned int r3;
    r3 = Func_808e4b4(0x70000005, (unsigned short)arg0, &local);
    return ((unsigned int)(-(int)r3 | (int)r3)) >> 31;
}
