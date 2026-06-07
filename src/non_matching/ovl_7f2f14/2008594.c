/* OvlFunc_968_2008594  [ovl_7f2f14]
 * Source asm: goldensun/asm/overlays/rom_7f2f14/ovl_30_a_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_968_2008594-iter-10.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern void __Func_80929d8(int x);

unsigned int OvlFunc_968_2008594(unsigned int arg0) {
    __Func_80929d8(*(unsigned short *)(arg0 + 0x64) & 0xf);
    return 0;
}
