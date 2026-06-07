/* OvlFunc_881_20082f0  [ovl_77a7c8]
 * Source asm: goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_881_20082f0-iter-8.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned int iwram_3001e70;

unsigned int OvlFunc_881_20082f0(unsigned char *p) {
    unsigned int base;
    unsigned char *flagp;
    unsigned short *out;

    base = iwram_3001e70;
    out = *(unsigned short **)(p + 0x50);
    flagp = p + 0x59;
    *flagp = 1 | *flagp;
    out[0xf] = *(unsigned short *)(base + 0x11a);
    return 1;
}
