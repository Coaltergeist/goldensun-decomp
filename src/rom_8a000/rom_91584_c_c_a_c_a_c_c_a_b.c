/* Cluster Func_809202c..Func_809202c extracted from goldensun/asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a_a.o and asm/rom_8a000/rom_91584_c_c_a_c_a_c_c_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ebc[];

void Func_809202c(void) {
    short v;
    unsigned int p;
    p = *(unsigned int *)iwram_3001ebc + 0xcc8;
    v = *(short *)p;
    if (v != -1) {
        _PlaySound(v);
    }
}
