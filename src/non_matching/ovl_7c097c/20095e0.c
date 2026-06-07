/* OvlFunc_936_20095e0  [ovl_7c097c]
 * Source asm: goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_936_20095e0-iter-1.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned char *__MapActor_GetActor(int id);

void OvlFunc_936_20095e0(void) {
    unsigned char *p;

    p = __MapActor_GetActor(0);
    p[0x23] |= 1;
}
