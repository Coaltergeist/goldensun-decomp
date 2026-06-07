/* Func_8021e28  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_21dfc_a_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_8021e28-iter-2.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern void Func_8021e14(void);
extern void Func_800307c(int intr, unsigned int dispstat, void (*vector)(void));

void Func_8021e28(void) {
    *(volatile unsigned short *)0x04000012 = 0;
    Func_800307c(2, 0x88, Func_8021e14);
}
