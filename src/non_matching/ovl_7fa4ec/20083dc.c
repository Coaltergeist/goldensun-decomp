/* OvlFunc_970_20083dc  [ovl_7fa4ec]
 * Source asm: goldensun/asm/overlays/rom_7fa4ec/ovl_30_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop9/OvlFunc_970_20083dc.c
 * TODO(residual): reads __Func_8092054(N)->field 0xc, stores to a .data scalar
 * local-label (.L180c/.L1810/.L1814/.L1818). Logic correct, but the
 * 'extern int X __asm__(.L)' SCALAR form diverges in the drain (push/reg-alloc)
 * unlike the proven .L ARRAY buffers - needs investigation or permuter.
 * Callee __Func_8092054 is matched.
 */
extern unsigned char *__Func_8092054(int id);
extern unsigned int L1810 __asm__(".L1810");

unsigned int OvlFunc_970_20083dc(void) {
    unsigned char *p = __Func_8092054(1);
    L1810 = *(unsigned int *)(p + 0xc);
    return 0;
}
