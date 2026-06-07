/* OvlFunc_924_200a2ec  [ovl_7ac2d8]
 * Source asm: goldensun/asm/overlays/rom_7ac2d8/ovl_22c4_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_924_200a2ec-iter-9.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern void __Func_80041d8(unsigned char *p, int n);
extern void OvlFunc_924_200a2c4(void);

unsigned int OvlFunc_924_200a2ec(void) {
    __Func_80041d8((unsigned char *)OvlFunc_924_200a2c4, 0xc8 << 4);
    return 0;
}
