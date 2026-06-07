/* OvlFunc_964_20089dc  [ovl_7ed0a0]
 * Source asm: goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T194103Z/OvlFunc_964_20089dc-iter-4.c
 * TODO(residual): const synth (`movs r3,#13; negs r3` for -13 vs `movs r3,#0xf3`) +
 *   scheduling (`(val & 3)` computed first). `bx lr` leaf, so matchable by the harness.
 *   TRY FIRST: int temp to force a 32-bit AND -> `int v = q[9]; q[9] = (v & ~0xc) | ...`.
 *   Same function as OvlFunc_common0_0 / OvlFunc_{927,946,965}_20089dc (cloned).
 */
void OvlFunc_964_20089dc(unsigned char *p, int val)
{
    unsigned char *q = *(unsigned char **)((char *)p + 0x50);
    q[9] = (q[9] & ~0xc) | ((val & 3) << 2);
}
