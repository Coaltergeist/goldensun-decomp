/* SetFlag  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop8/SetFlag.c
 * TODO(residual): logic + unsigned-shift confirmed correct (the logical
 * lsl#20;lsr#23 idx extract now matches). Remaining diff is reg-alloc/scheduling
 * ONLY; the `1<<(flagID&7)` / base-load / shift insns land in different
 * registers + order than the ROM (drain rolled back on compare-rom). Permuter
 * should close it. Sibling family: ClearFlag (clear), GetFlagNybble (get).
 */
extern unsigned char gFlags[];

void SetFlag(int flagID) {
    int bit = 1 << (flagID & 7);
    int idx = ((unsigned)flagID << 20) >> 23;
    gFlags[idx] |= bit;
}
