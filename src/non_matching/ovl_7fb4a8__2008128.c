/* OvlFunc_971_2008128 == ((u32*)ewram_2002224)[L1940[i]] = ((u32*)L1928)[i]
 *   [overlay rom_7fb4a8]
 * Source asm: goldensun/asm/overlays/rom_7fb4a8/ovl_30_a_c_c_c.s
 *
 * Logic is faithful; this does NOT yet byte-match. Residual diff is pure
 * register allocation / scheduling: the ROM computes i*4 into r1 while keeping
 * i in r0 for the byte-table index, and parks the ewram base in r4
 * (-fcall-used-r4); gcc-2.96 here overwrites r0 with i*4 and uses r1 for the
 * base, so the indexed loads/stores pick different registers. Values and
 * operations are identical. KEY TECHNIQUE: both tables are .global asm-labels
 * .L1940 (byte) / .L1928 (word) bound via gcc asm() labels (§8), the relocs
 * match the ROM. A clean permuter target.
 */
extern unsigned char L1940[] __asm__(".L1940");
extern unsigned int  L1928[] __asm__(".L1928");
extern unsigned int  ewram_2002224[];

void OvlFunc_971_2008128(int i) {
    unsigned char *a = L1940;
    unsigned int  *b = L1928;
    ewram_2002224[a[i]] = b[i];
}
