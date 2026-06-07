/* Func_80b63b0  [rom_b5000]
 * Source asm: goldensun/asm/rom_b5000/rom_b5a0c_c_c_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T194103Z/Func_80b63b0-iter-4.c
 * TODO(residual): calls Func_80008d4 through a pointer (ROM uses the `_call_via_r3`
 *   veneer). Two diffs: arg-load order (ROM loads the fn ptr into r3 first, the arg
 *   into r0 last) and literal-pool order (ROM: Func_80008d4 word before ewram_2002224).
 *   Permutable; or hand-tune the reference order.
 */
extern void Func_80008d4(int a, int b);
extern unsigned int ewram_2002224;

void Func_80b63b0(void)
{
    void (*fp)(int, int) = Func_80008d4;
    fp((int)&ewram_2002224, 0x10);
}
