/* Cluster Func_808b824..Func_808b824 extracted from goldensun/asm/rom_8a000/rom_8b674_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8b674_a_a.o and asm/rom_8a000/rom_8b674_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int iwram_3001ebc;

int Func_808b824(void)
{
    unsigned int *base;
    int r0;
    int r2;
    unsigned int *p;

    base = (unsigned int *)iwram_3001ebc;
    r0 = 7;
    r2 = 8;
    p = (unsigned int *)((char *)base + 0x34);
    do {
        if (*p++ != 0) {
            r0 = r2;
        }
        r2++;
    } while (r2 <= 0x41);
    r0++;
    if (r0 == 0x42) {
        r0 = -1;
    }
    return r0;
}
