/* Cluster Func_80f3824..Func_80f3824 extracted from goldensun/asm/rom_f2000/rom_f2028_c_c_a_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f2000/rom_f2028_c_c_a_c_c_a.o and asm/rom_f2000/rom_f2028_c_c_a_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ed0[];
extern void Func_80f3078(unsigned int, unsigned int, unsigned int, unsigned int);

void Func_80f3824(unsigned int arg0, unsigned int arg1) {
    unsigned int r1;
    r1 = *(unsigned int *)iwram_3001ed0;
    if (r1 != 0) {
        Func_80f3078(arg0, r1, r1 + (0x80 << 3), arg1);
    }
}
