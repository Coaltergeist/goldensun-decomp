/* HeightTile_7  [rom_9000]
 * Source asm: goldensun/asm/rom_9000/rom_11ce0_a_c_c_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/HeightTile_7-iter-7.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned char L132fc[] __asm__(".L132fc");

int HeightTile_7(signed char *param_1, int param_2, int param_3)
{
    int i, a, b;

    i = 0;
    a = param_1[i];
    i = 1;
    b = param_1[i];
    a <<= 19;
    b <<= 19;
    return a + (b - a) * L132fc[param_2 * 16 + param_3];
}
