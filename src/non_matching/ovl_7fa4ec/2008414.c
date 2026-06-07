/* OvlFunc_970_2008414  [ovl_7fa4ec]
 * Source asm: goldensun/asm/overlays/rom_7fa4ec/ovl_30_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop9/OvlFunc_970_2008414.c
 * TODO(residual): reads __MapActor_GetActor(N)->field 0xc, stores to a .data scalar
 * local-label (.L180c/.L1810/.L1814/.L1818). Logic correct, but the
 * 'extern int X __asm__(.L)' SCALAR form diverges in the drain (push/reg-alloc)
 * unlike the proven .L ARRAY buffers - needs investigation or permuter.
 * Callee __MapActor_GetActor is matched.
 */
extern unsigned char *__MapActor_GetActor(int id);
extern unsigned int L1818 __asm__(".L1818");

unsigned int OvlFunc_970_2008414(void) {
    unsigned char *p = __MapActor_GetActor(2);
    L1818 = *(unsigned int *)(p + 0xc);
    return 0;
}
