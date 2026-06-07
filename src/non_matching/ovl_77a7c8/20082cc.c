/* OvlFunc_881_20082cc  [ovl_77a7c8]
 * Source asm: goldensun/asm/overlays/rom_77a7c8/ovl_30_c_a_c_a_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T010203Z/OvlFunc_881_20082cc-iter-5.c
 * TODO(residual): reg-alloc/scheduling divergence (register swap / op-order); logic correct. Permuter seed.
 */
extern unsigned int iwram_3001e70;

unsigned int OvlFunc_881_20082cc(unsigned char *p)
{
    unsigned short v;
    unsigned char *q;

    v = *(unsigned short *)((char *)&iwram_3001e70 + (0x8d << 1));
    q = *(unsigned char **)(p + 0x50);
    *(unsigned short *)(q + 0x1e) = v;
    *(unsigned char *)(q + 0x26) = (unsigned char)(unsigned int)(unsigned char *)0;
    return 1;
}
