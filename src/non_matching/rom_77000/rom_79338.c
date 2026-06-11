/* GetFlag  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T194103Z/GetFlag-iter-9.c
 * TODO(residual): shift idiom is correct ((unsigned)(x<<20)>>23); pure reg-alloc /
 *   scheduling diff; ROM keeps the shift result in a fresh reg (`lsls r3,r0,#20;
 *   lsrs r0,r3,#23`) and places the table `ldr` between, vs in-place on r0 here.
 *   Main-tree fn -> permutable.
 */
extern unsigned char gFlags[512];

int GetFlag(int flagID)
{
    int bit;
    int val;
    bit = 1 << (flagID & 7);
    val = gFlags[(unsigned)(flagID << 20) >> 23] & bit;
    return (unsigned)(-val | val) >> 31;
}
