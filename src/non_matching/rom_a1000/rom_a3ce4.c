/* Func_80a3ce4  [rom_a1000]
 * Source asm: goldensun/asm/rom_a1000/rom_a1814_c_a_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (compiler wall: range-test fold).
 * TODO(residual): ROM has the literal two-compare shape (cmp #0xc4; bgt L0;
 *   cmp #0xc1; blt L0; mov #1; b end; L0: mov #0) with return-1 as the
 *   fall-through. gcc-2.96 range-folds EVERY C spelling of the two-bound test
 *   (&&, ||, separate ifs) to `subs; cmp #3; bhi` -- the fold is deterministic,
 *   so the un-folded ROM shape is unreproducible standalone (verified
 *   2026-06-10 across all forms; the permuter cannot un-fold it either).
 */
unsigned int Func_80a3ce4(int x)
{
    if (x >= 0xc1 && x <= 0xc4)
        return 1;
    return 0;
}
