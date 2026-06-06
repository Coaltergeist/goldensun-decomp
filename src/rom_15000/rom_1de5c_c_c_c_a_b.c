/* Cluster Func_801edcc..Func_801edcc extracted from goldensun/asm/rom_15000/rom_1de5c_c_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_1de5c_c_c_c_a_a.o and asm/rom_15000/rom_1de5c_c_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
void Func_801edcc(unsigned int arg0, int arg1)
{
    if (arg0 != 0)
    {
        unsigned char *p = (unsigned char *)arg0;
        int z = 0;
        *(unsigned char *)(p + 5) = arg1;
        *(unsigned short *)(p + 12) = z;
    }
}
