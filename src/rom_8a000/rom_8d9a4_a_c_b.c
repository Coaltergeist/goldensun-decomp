/* Cluster Func_808ec14..Func_808ec14 extracted from goldensun/asm/rom_8a000/rom_8d9a4_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d9a4_a_c_a.o and asm/rom_8a000/rom_8d9a4_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char *iwram_3001ebc;

int Func_808ec14(unsigned int param_1)
{
    unsigned char *p;
    int i;
    int r4;

    p = iwram_3001ebc + 0x11c;
    r4 = -1;
    i = 0;
    if (p[4] == param_1) {
        r4 = 0;
    } else {
        do {
            i++;
            p += 8;
            if (i > 9)
                break;
        } while (p[4] != param_1);
        if (i <= 9)
            r4 = i;
    }
    return r4;
}
