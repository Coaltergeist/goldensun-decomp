/* GetFlagNybble  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop8/GetFlagNybble.c
 * TODO(residual): logic + unsigned-shift confirmed correct. Remaining diff is
 * reg-alloc/scheduling ONLY (drain rolled back on compare-rom). Permuter should
 * close it. Sibling family: SetFlag (set), ClearFlag (clear).
 */
extern unsigned char gFlags[];

int GetFlagNybble(int flagID) {
    int idx = ((unsigned)flagID << 20) >> 23;
    int shift = flagID & 4;
    return (gFlags[idx] & (0xf << shift)) >> shift;
}
