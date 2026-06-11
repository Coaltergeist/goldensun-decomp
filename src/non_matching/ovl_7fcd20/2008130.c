/* OvlFunc_974_2008130, OvlFunc_974_2008148, OvlFunc_974_2008180  [ovl_7fcd20]
 * Source asm: goldensun/asm/overlays/rom_7fcd20/ovl_30_a_c_a_c_c_a.s
 *
 * Parked: logic faithful, does NOT byte-match. HAND-ONLY (needs symbol resolution).
 * Candidates: tools/runs/run_20260606T194103Z/OvlFunc_974_2008{130,148,180}-iter-*.c
 * TODO(residual): each calls OvlFunc_974_200807c(X, Y - X). The ROM keeps BOTH X and
 *   Y as separate literal-pool words and subtracts at runtime (`ldr;ldr;subs`); the
 *   folded form here computes Y-X at compile time (`movs r1,#0x2b`) and keeps one
 *   pool word. To stop the fold, X and Y must be SYMBOLS (FP#9 message/file IDs via
 *   the file_table infra), not literals; identify the two symbols per call site.
 */
extern void OvlFunc_974_200807c(int a, int b);

void OvlFunc_974_2008130(void) { OvlFunc_974_200807c(0xc9b, 0xcc6 - 0xc9b); }
void OvlFunc_974_2008148(void) { OvlFunc_974_200807c(0xcc6, 0xcc6 - 0xc9b); }
void OvlFunc_974_2008180(void) { OvlFunc_974_200807c(0xd21, 0xd4c - 0xd21); }
