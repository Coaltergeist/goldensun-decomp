/* OvlFunc_954_2008158  [ovl_7db0c8]
 * Source asm: goldensun/asm/overlays/rom_7db0c8/ovl_30_c_c_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_954_2008158-iter-1.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned char L441c[] __asm__(".L441c");
extern void __Func_80041d8(void (*func)(void), int arg);
extern void OvlFunc_954_200804c(void);

void OvlFunc_954_2008158(void) {
    *(int *)L441c = 0x42;
    __Func_80041d8(OvlFunc_954_200804c, 0xc8 << 4);
}
