/* OvlFunc_906_2008314 == GetEntrances(void)  [overlay rom_79aad8 / ovl_314]
 * Source asm: goldensun/asm/overlays/rom_79aad8/ovl_314_a.s
 *
 * Logic is faithful; this does NOT yet byte-match. Two residual codegen-shape
 * diffs remain (see `tools/judge.sh … OvlFunc_906_2008314`):
 *
 *   1. gState field at +0x1c0: the ROM loads &gState with reloc addend 0 and
 *      computes 0x1c0 at runtime (`movs #224; lsls #1; adds`), then ldrsh.
 *      Every primitive char*/int form here folds 0x1c0 into the pool addend
 *      instead. The runtime-add shape is what a typed `GlobalState *` struct
 *      field access produces; likely needs the real struct type (GS-headers)
 *      or the permuter.
 *   2. The compare pools the constant (`ldr r3,=0x1d; cmp r2,r3`) rather than
 *      `cmp #29`, despite 0x1d fitting in imm8; also a typed-field signature.
 *
 * KEY TECHNIQUE (this is why it is worth keeping): the two return values are
 * `.global` data labels `.L8d8` / `.L818` defined in ovl_314_c_c.s. C cannot
 * spell ".L8d8", so bind a legal name via a gcc asm() label — the emitted reloc
 * is then R_ARM_ABS32 .L8d8, identical to the ROM (verified: the reloc lines
 * match). This unlocks the whole `ldr =.LXXXX`-to-global overlay-data class.
 */
extern unsigned char ewram_2000240[];                 /* &gState (GlobalState, 0x02000240) */
extern unsigned char L818[] __asm__(".L818");
extern unsigned char L8d8[] __asm__(".L8d8");

unsigned char *OvlFunc_906_2008314(void) {
    if (*(short *)((int)ewram_2000240 + 0x1c0) == 0x1d)
        return L8d8;
    return L818;
}
