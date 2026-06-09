/* Cluster Func_8096bec..Func_8096bec extracted from goldensun/asm/rom_8a000/rom_944ec_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_944ec_a_c_c_a.o and asm/rom_8a000/rom_944ec_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern int vec3_translate();
extern int _Actor_TravelTo();

void Func_8096bec(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
    unsigned int v[3];

    if (arg0 != 0) {
        v[0] = *(unsigned int *)((char *)arg0 + 8);
        v[1] = *(unsigned int *)((char *)arg0 + 0xc);
        v[2] = *(unsigned int *)((char *)arg0 + 0x10);
        vec3_translate(arg1, arg2, v);
        _Actor_TravelTo(arg0, v[0], v[1], v[2]);
    }
}
