/* Cluster Func_80209b0..Func_80209b0 extracted from goldensun/asm/rom_15000/rom_20198_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_15000/rom_20198_a_a.o and asm/rom_15000/rom_20198_a_c.o in
 * goldensun/stage1.ld.
 */
extern unsigned int Func_8004080(void);
extern void Func_8003fa4(unsigned int, unsigned int, unsigned char *);
extern unsigned char Data_310a4[];

unsigned int Func_80209b0(unsigned int arg0) {
    unsigned int r5;

    r5 = Func_8004080();
    Func_8003fa4(r5, 0x80, Data_310a4);
    return r5;
}
