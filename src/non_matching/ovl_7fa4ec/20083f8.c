/* OvlFunc_970_20083f8  [ovl_7fa4ec]
 * Source asm: goldensun/asm/overlays/rom_7fa4ec/ovl_30_c_c_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop9/OvlFunc_970_20083f8.c
 * TODO(residual): reads __Func_8092054(N)->field 0xc, stores to a .data scalar
 * local-label (.L180c/.L1810/.L1814/.L1818). Logic correct, but the
 * 'extern int X __asm__(.L)' SCALAR form diverges in the drain (push/reg-alloc)
 * unlike the proven .L ARRAY buffers - needs investigation or permuter.
 * Callee __Func_8092054 is matched.
 */
extern unsigned char *__Func_8092054(int id);
extern unsigned int L1814 __asm__(".L1814");

unsigned int OvlFunc_970_20083f8(void) {
    unsigned char *p = __Func_8092054(3);
    L1814 = *(unsigned int *)(p + 0xc);
    return 0;
}
