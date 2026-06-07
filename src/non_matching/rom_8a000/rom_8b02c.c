/* Func_808b02c  [rom_8a000]
 * Source asm: goldensun/asm/rom_8a000/rom_8ace0_a_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_808b02c-iter-5.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned char *iwram_3001ebc;
extern unsigned int Func_808ae74(int);

unsigned int Func_808b02c(int idx) {
    return Func_808ae74((iwram_3001ebc + idx)[0x1a0]);
}
