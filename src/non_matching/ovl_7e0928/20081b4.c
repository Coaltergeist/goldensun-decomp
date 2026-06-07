/* OvlFunc_956_20081b4  [ovl_7e0928]
 * Source asm: goldensun/asm/overlays/rom_7e0928/ovl_30_a_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T194103Z/OvlFunc_956_20081b4-iter-6.c
 * TODO(residual): pure scheduling — ROM does `movs r1,#200; lsls r1,#4; ldr r0`,
 *   candidate interleaves the `ldr r0` before the `lsls`. Overlay fn -> permutable.
 */
extern void __Func_80041d8(void *arg, int val);
extern void OvlFunc_956_200804c(void);

void OvlFunc_956_20081b4(void) {
    __Func_80041d8(OvlFunc_956_200804c, 0xc8 << 4);
}
