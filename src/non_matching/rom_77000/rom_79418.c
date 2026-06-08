/* Func_8079418  [rom_77000]
 * Source asm: goldensun/asm/rom_77000/rom_79338.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop8/Func_8079418.c
 * TODO(residual): logic + unsigned-shift confirmed correct. Remaining diff is
 * reg-alloc/scheduling ONLY (drain rolled back on compare-rom). Permuter should
 * close it. Sibling family: Func_8079358 (set), Func_8079374 (clear).
 */
extern unsigned char gFlags[];

int Func_8079418(int flagID) {
    int idx = ((unsigned)flagID << 20) >> 23;
    int shift = flagID & 4;
    return (gFlags[idx] & (0xf << shift)) >> shift;
}
