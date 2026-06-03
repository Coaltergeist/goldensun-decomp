/* Cluster Func_8092a74..Func_8092a74 extracted from goldensun/asm/rom_8a000/rom_92950_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_92950_a_a_c_a.o and asm/rom_8a000/rom_92950_a_a_c_c.o in
 * goldensun/stage1.ld.
 */
unsigned int Func_8092a74(unsigned int arg0)
{
    unsigned short *p;
    short delta;
    int result;

    result = 0;
    if (arg0 != 0) {
        p = (unsigned short *)arg0;
        delta = (short)(*(unsigned short *)(arg0 + 0x64) - p[3]);
        result = delta;
        if (result != 0) {
            if (result > 0x1000)
                result = 0x800;
            if (result < (int)0xfffff000)
                result = (int)0xfffff800;
            p[3] = p[3] + result;
        }
    }
    return result;
}
