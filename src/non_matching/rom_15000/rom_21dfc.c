/* Func_8021dfc == REG_BG1CNT = (REG_BG1CNT & ~3) | 3  [rom_15000]
 * Source asm: goldensun/asm/rom_15000/rom_21dfc_a.s
 *
 * Logic is faithful; this does NOT yet byte-match. Same residual as its
 * sibling Func_8021e14 (rom_21e14.c): the ROM synthesizes the -4 mask with
 * `movs r3,#4; negs r3,r3` (and emits `movs r2,#3` for the | 3), while
 * gcc-2.96 here pools both constants (`ldr =0xfffffffc`, `ldr =0x3`). The int
 * temp keeps the mask 32-bit; the pool-vs-synth choice is the frontier.
 */
void Func_8021dfc(void) {
    unsigned short *p = (unsigned short *)0x0400000A; /* REG_BG1CNT */
    int v = *p;
    *p = (v & ~3) | 3;
}
