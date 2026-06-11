/* GetEnemyUnk (Func_80c2434)  [rom_b5000]
 * Source asm: goldensun/asm/rom_b5000/rom_c1a34_a_a_c_c_a.s
 *
 * Parked 2026-06-10: logic faithful, down to a stable r2/r3 register swap
 * (ROM: base=r3, index/ptr=r2); three C forms gave the same allocation, and
 * the function is `.L`-symbol-bearing so it is not permutable.
 * TODO(retry): parked BEFORE the pin+barrier/laundered-copy toolkit existed
 *   (see inline_asm_review.txt + EASY_DRAIN_PLAN.md precondition 6) -- a
 *   register-swap-only diff is exactly what those levers solve, IF the
 *   inline-asm policy discussion lands in their favor. Judge cannot gate the
 *   `.L` reloc form; compare-rom is the gate.
 */
extern unsigned char Lc7420[] __asm__(".Lc7420");

unsigned int GetEnemyUnk(unsigned int param_1)
{
    unsigned int idx;
    unsigned char *p;

    if (param_1 > 0xab)
        return 0;
    idx = param_1 << 3;
    p = Lc7420 + idx;
    return ((unsigned int)p[3] << 31) >> 31;
}
