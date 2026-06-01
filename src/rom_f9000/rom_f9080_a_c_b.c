/* Cluster Func_80f950c..Func_80f950c extracted from goldensun/asm/rom_f9000/rom_f9080_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f9000/rom_f9080_a_c_a.o and asm/rom_f9000/rom_f9080_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void Func_80fb2cc(void *a0, unsigned short a1, unsigned short a2);
extern void *ewram_2004290;
extern unsigned short ewram_2003034;
extern short ewram_2003008;

void Func_80f950c(unsigned short volume) {
    unsigned short r5;
    unsigned short r2;

    r2 = volume;
    r5 = (short)r2;
    Func_80fb2cc(&ewram_2004290, 0xff, r2);
    ewram_2003034 = r5;
    ewram_2003008 = r5;
}
