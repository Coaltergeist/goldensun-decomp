/* DecFlagByte  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/DecFlagByte-iter-9.c
 * TODO(residual): rom_79xxx flag-array family; ((unsigned)x<<20)>>23 logical shift correct, reg-alloc/scheduling diverges (siblings 8079358/74/418 same wall). Permuter.
 */
extern unsigned char gFlags[];

unsigned char DecFlagByte(int flagID)
{
	unsigned int idx;
	unsigned char v;

	idx = ((unsigned int)(flagID << 20)) >> 23;
	v = gFlags[idx];
	if (v != 0)
		gFlags[idx] = v - 1;
	return gFlags[idx];
}
