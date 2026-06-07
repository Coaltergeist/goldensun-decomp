/* Func_8016738  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_15e8c_a_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_8016738-iter-10.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern void Func_80008d8(unsigned int a, unsigned int b, unsigned int c);

unsigned int Func_8016738(void) {
    void (*f)(unsigned int, unsigned int, unsigned int) = Func_80008d8;
    f(0x6002500, 0xf0 << 4, 0x44444444);
}
