/* Func_80f9bf4  [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f95e0.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/Func_80f9bf4-iter-1.c
 * TODO(residual): rom_f9000 Sappy/m4a region: mov ip,lr / bx ip non-interwork epilogue. Sappy/agbcc import track.
 */
extern int Func_80f9ab4();

void Func_80f9bf4(unsigned int mplayInfo, unsigned char *track) {
    unsigned char r3;
    r3 = Func_80f9ab4(mplayInfo, track);
    track[0x1b] = r3;
}
