/* Func_8003d04  [rom_c0]
 * Source asm: goldensun/asm/rom_c0/rom_3d04.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_8003d04-iter-3.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned char iwram_3001d00;
extern unsigned int iwram_3001400[248];
extern void Func_80008d4(unsigned int *arr, int n);
extern void _call_via_r3(void);

void Func_8003d04(void) {
    void (*fn)(unsigned int *, int);
    iwram_3001d00 = 0;
    fn = (void (*)(unsigned int *, int))Func_80008d4;
    fn(iwram_3001400, 0x80 << 3);
}
