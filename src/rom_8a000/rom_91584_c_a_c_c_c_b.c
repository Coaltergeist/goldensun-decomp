/* Cluster Func_8091814..Func_8091814 extracted from goldensun/asm/rom_8a000/rom_91584_c_a_c_c_c.s.
 *
 * Total .text for this TU = 68 bytes (= 0x44).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_a_c_c_c_a.o and asm/rom_8a000/rom_91584_c_a_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_8091814(unsigned int arg0)
{
    int r5;
    unsigned int r6;

    r5 = (arg0 >> 10) & 0xf;
    r6 = arg0 & 0x3ff;
    if (r5 > 7)
        return -1;
    if (_GetFlag(r5) == 0)
        return -2;
    if (_HasMove(r5, r6) == 0)
        return -3;
    return 0;
}
