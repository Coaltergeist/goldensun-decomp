/* ClearFlag  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop8/ClearFlag.c
 * TODO(residual): logic + unsigned-shift confirmed correct. Remaining diff is
 * reg-alloc/scheduling ONLY (drain rolled back on compare-rom). Permuter should
 * close it. Sibling family: SetFlag (set), GetFlagNybble (get nibble).
 */
extern unsigned char gFlags[];

void ClearFlag(int flagID) {
    int bit = 1 << (flagID & 7);
    int idx = ((unsigned)flagID << 20) >> 23;
    gFlags[idx] &= ~bit;
}
