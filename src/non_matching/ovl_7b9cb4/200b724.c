/* OvlFunc_932_200b724  [ovl_7b9cb4]
 * Source asm: goldensun/asm/overlays/rom_7b9cb4/ovl_30_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: work/loop9/OvlFunc_932_200b724.c
 * TODO(residual): FP#4 - 0x21 < 0x80 wants movs (tarpman temp applied), but the
 * temp reorders the add r0,#0x66. TRY declaring the address pointer first
 * (q = p + 0x66; *q = v) per the tarpman 'registers cross' rule, else permuter.
 */
extern void __PlaySound(int a);

void OvlFunc_932_200b724(unsigned char *p) {
    unsigned short v = 0x21;
    *(unsigned short *)(p + 0x66) = v;
    __PlaySound(0x120);
}
