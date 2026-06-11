/* OvlFunc_common0_0  [ovl_common]
 * Source asm: goldensun/asm/overlays/common/common0.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T194103Z/OvlFunc_common0_0-iter-8.c
 * TODO(residual): two codegen-shape diffs vs the ROM (`bx lr` leaf, so the harness
 *   CAN match this; not an interwork case):
 *     1. const synth: ROM does `movs r3,#13; negs r3` (synthesize -13 = 0xfffffff3);
 *        every literal-mask form here narrows the AND to QImode -> `movs r3,#0xf3`.
 *     2. scheduling: the ROM computes `(val & 3)` BEFORE the mask.
 *   TRY FIRST (before permuter): force a 32-bit AND with an int temp so the mask
 *   materializes as -13:
 *       int v = q[9];
 *       q[9] = (v & ~0xc) | ((val & 3) << 2);
 *   Shared body with OvlFunc_{927,946,964,965}_20089dc (same function, cloned across
 *   overlay banks).
 */
void OvlFunc_common0_0(unsigned char *p, int val)
{
    unsigned char *q = *(unsigned char **)((char *)p + 0x50);
    q[9] = (q[9] & ~0xc) | ((val & 3) << 2);
}
