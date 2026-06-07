/* OvlFunc_967_2008030  [ovl_7f21b8]
 * Source asm: goldensun/asm/overlays/rom_7f21b8/ovl_30_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_967_2008030-iter-2.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern void __Func_8093874(int a, int b);

unsigned int OvlFunc_967_2008030(void) {
    __Func_8093874(0xe, 0x102);
    return 0;
}
