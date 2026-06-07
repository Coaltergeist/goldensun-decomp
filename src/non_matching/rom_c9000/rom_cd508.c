/* Func_80cd508  [rom_c9000]
 * Source asm: goldensun/asm/rom_c9000/rom_cd508.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_80cd508-iter-9.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned int iwram_3001eec;
extern void Func_80008d4();

void Func_80cd508(void) {
    void (*f)() = Func_80008d4;
    f(iwram_3001eec + 0x7818, 8);
}
