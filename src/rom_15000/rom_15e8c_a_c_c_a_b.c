/* Cluster Func_8016584..Func_8016584 extracted from goldensun/asm/rom_15000/rom_15e8c_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_a_c_c_a_a.o and asm/rom_15000/rom_15e8c_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_8016584(unsigned int arg0, unsigned int arg1)
{
    if (arg0 != 0) {
        *(unsigned int *)(*(unsigned int *)(arg0 + 4)) = arg1;
        *(unsigned int *)(arg0 + 4) = arg1;
    }
}
