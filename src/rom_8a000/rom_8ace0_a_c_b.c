/* Cluster Func_808b3d0..Func_808b3d0 extracted from goldensun/asm/rom_8a000/rom_8ace0_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8ace0_a_c_a.o and asm/rom_8a000/rom_8ace0_a_c_c.o in
 * goldensun/stage1.ld.
 */
int Func_808b3d0(int arg0, int arg1)
{
    if (arg0 <= 8 && arg1 != 0) {
        if (arg0 == 0)
            arg0 = 0x12;
        if (arg0 == 1)
            arg0 = 0x13;
    }
    return arg0;
}
