/* Cluster Func_8091220..Func_8091220 extracted from goldensun/asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c_c_a.o and asm/rom_8a000/rom_8d9a4_c_c_c_a_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ed0[];
extern void Func_8090a5c(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_8091220(unsigned int arg0, unsigned int arg1) {
    unsigned int r4;
    unsigned int r1val;

    r4 = arg1;
    r1val = *(unsigned int *)iwram_3001ed0;
    if (r1val != 0) {
        Func_8090a5c(arg0, r1val, r1val + (0xe0 << 2), r4);
    }
}
