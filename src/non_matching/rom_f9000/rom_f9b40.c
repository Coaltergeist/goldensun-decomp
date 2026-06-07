/* Func_80f9b40  [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f95e0.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/Func_80f9b40-iter-1.c
 * TODO(residual): rom_f9000 Sappy/m4a region: non-interwork tail epilogue (bx ip). Sappy/agbcc import track, not gcc-2.96 loop.
 */
extern unsigned char Func_80f9ab4(void *mplayInfo, void *track);

void Func_80f9b40(void *mplayInfo, unsigned char *track) {
    track[0x1d] = Func_80f9ab4(mplayInfo, track);
}
