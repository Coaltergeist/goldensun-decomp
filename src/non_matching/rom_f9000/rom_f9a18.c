/* Func_80f9a18  [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f95e0.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T170736Z/Func_80f9a18-iter-4.c
 * TODO(residual): rom_f9000 Sappy/m4a region: inline unrolled 64-byte zero-init with `mov ip,r4` non-interwork register save; candidate emits a memset call. Sappy/agbcc import track.
 */
struct S { unsigned int w[16]; };
void Func_80f9a18(struct S *p) {
    *p = (struct S){0};
}
