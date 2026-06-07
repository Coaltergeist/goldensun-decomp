/* Func_80793d8  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/Func_80793d8-iter-7.c
 * TODO(residual): rom_79xxx flag-array family; ((unsigned)x<<20)>>23 logical shift correct, reg-alloc/scheduling diverges (siblings 8079358/74/418 same wall). Permuter.
 */
extern unsigned char ewram_2000040[512];

unsigned char Func_80793d8(int flagID)
{
    unsigned int idx;

    idx = ((unsigned int)flagID << 20) >> 23;
    if (ewram_2000040[idx] <= 0xfe)
        ewram_2000040[idx] = ewram_2000040[idx] + 1;
    return ewram_2000040[idx];
}
