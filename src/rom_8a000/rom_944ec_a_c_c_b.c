/* Cluster Func_8096bec..Func_8096bec extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_c_a.o and asm/rom_8a000/rom_944ec_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int Func_800447c();
extern int _Func_800d14c();

void Func_8096bec(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int v[3];

    if (arg0 != 0) {
        v[0] = *(unsigned int *)((char *)arg0 + 8);
        v[1] = *(unsigned int *)((char *)arg0 + 0xc);
        v[2] = *(unsigned int *)((char *)arg0 + 0x10);
        Func_800447c(arg1, arg2, v);
        _Func_800d14c(arg0, v[0], v[1], v[2]);
    }
}
