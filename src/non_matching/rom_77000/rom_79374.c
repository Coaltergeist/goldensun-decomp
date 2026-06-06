/* Func_8079374  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop8/Func_8079374.c
 * TODO(residual): logic + unsigned-shift confirmed correct. Remaining diff is
 * reg-alloc/scheduling ONLY (drain rolled back on compare-rom). Permuter should
 * close it. Sibling family: Func_8079358 (set), Func_8079418 (get nibble).
 */
extern unsigned char ewram_2000040[];

void Func_8079374(int flagID) {
    int bit = 1 << (flagID & 7);
    int idx = ((unsigned)flagID << 20) >> 23;
    ewram_2000040[idx] &= ~bit;
}
