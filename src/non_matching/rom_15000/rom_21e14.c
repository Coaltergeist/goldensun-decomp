/* Func_8021e14 == REG_BG1CNT &= ~3  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_21dfc_a.s
 *
 * Logic is faithful; this does NOT yet byte-match. Single residual diff:
 * the ROM materializes the mask -4 with `movs r3,#4; negs r3,r3` and does
 * `ands r3,r2`, whereas gcc-2.96 here pools the constant
 * (`ldr r1,=0xfffffffc; ands`). The int temp already keeps the mask a 32-bit
 * -4 (without it, gcc narrows to a pooled 0x0000fffc); the remaining
 * pool-vs-synth choice is not reproducible from this C. A const-synthesis
 * frontier (cf. feedback_gcc296_pooled_small_const_cmp). Good permuter seed.
 */
void Func_8021e14(void) {
    unsigned short *p = (unsigned short *)0x0400000A; /* REG_BG1CNT */
    int v = *p;
    *p = v & ~3;
}
