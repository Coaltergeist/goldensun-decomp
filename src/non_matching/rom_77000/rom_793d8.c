/* IncFlagByte  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/IncFlagByte-iter-7.c
 * TODO(residual): rom_79xxx flag-array family; ((unsigned)x<<20)>>23 logical shift correct, reg-alloc/scheduling diverges (siblings 8079358/74/418 same wall). Permuter.
 */
extern unsigned char gFlags[512];

unsigned char IncFlagByte(int flagID)
{
    unsigned int idx;

    idx = ((unsigned int)flagID << 20) >> 23;
    if (gFlags[idx] <= 0xfe)
        gFlags[idx] = gFlags[idx] + 1;
    return gFlags[idx];
}
