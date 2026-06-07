/* Func_80f9afc  [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f95e0.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_80f9afc-iter-4.c
 * TODO(residual): larger branchy fn (rom_f9000); needs more than a 1-shot review. Permuter or hand-work.
 */
void Func_80f9afc(unsigned char *mplayInfo, unsigned char *track)
{
    int count;
    count = track[2];
    if (count != 0) {
        count = count - 1;
        track[2] = count;
        *(unsigned int *)(track + 0x40) = *(unsigned int *)(track + (count << 2) + 0x44);
    }
}
