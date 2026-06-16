/* Cluster Func_80174d8..Func_80174d8 extracted from goldensun/asm/rom_15000/rom_15e8c_c_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_15e8c_c_a_c_a.o and asm/rom_15000/rom_15e8c_c_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001ee4[];
extern void CloseUIBox(void *, int);

void Func_80174d8(void) {
    unsigned int **r5;
    r5 = *(unsigned int ***)iwram_3001ee4;
    if (r5[0]) {
        CloseUIBox(r5[0], 1);
        r5[0] = 0;
    }
}
