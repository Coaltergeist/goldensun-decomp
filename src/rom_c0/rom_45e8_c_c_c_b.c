/* Cluster Func_800473c..Func_800473c extracted from goldensun/asm/rom_c0/rom_45e8_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_c0/rom_45e8_c_c_c_a.o and asm/rom_c0/rom_45e8_c_c_c_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned char iwram_3001f7a[];
extern void FormatDecimalString(void);
extern void Func_80046c4(int);

void Func_800473c(unsigned int arg0, unsigned int arg1) {
    unsigned int r5;
    r5 = arg1;
    if (r5 - 1 > 9)
        r5 = 10;
    FormatDecimalString();
    Func_80046c4((int)(iwram_3001f7a - r5));
}
