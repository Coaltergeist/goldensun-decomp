/* Cluster Func_8091750..Func_8091750 extracted from goldensun/asm/rom_8a000/rom_91584_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_91584_a_c_a.o and asm/rom_8a000/rom_91584_a_c_c.o in
 * goldensun/stage1.ld.
 */
extern void StopTask(void *);
extern void Func_80915ec(void);
extern void Func_809335c(unsigned int, unsigned char);
extern void *_Func_8077c10(void);
extern unsigned int gState;

void Func_8091750(void) {
    unsigned int r3;

    StopTask(Func_80915ec);
    r3 = (unsigned int)&gState;
    r3 += 0xfa << 1;
    Func_809335c(*(unsigned int *)r3, 1);
    _Func_8077c10();
}
