/* OvlFunc_916_20083c0  [ovl_7a37f0]
 * Source asm: goldensun/asm/overlays/rom_7a37f0/ovl_30_c_c_c_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T170736Z/OvlFunc_916_20083c0-iter-2.c
 * TODO(residual): scalar .L pool (.L20d0) + iwram/.bss; ewram-relative leaf, pool form diverges. Blocked scalar-.L overlay class.
 */
extern unsigned int iwram_3001ad4[];
extern unsigned int L20d0[] __asm__(".L20d0");

void OvlFunc_916_20083c0(void) {
    unsigned int *src;
    unsigned int *dst;
    unsigned short *h;

    src = iwram_3001ad4;
    dst = L20d0;
    *dst++ = *src++;
    *dst++ = *src++;
    *dst = *src;

    h = (unsigned short *)L20d0;
    h[1] += 0xb0;
    h[3] += 0xb0;
    h[5] += 0xb0;
}
