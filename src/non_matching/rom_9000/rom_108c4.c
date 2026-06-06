/* Func_80108c4  [rom_9000]
 * Source asm: goldensun/asm/rom_9000/rom_10424.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260606T183812Z/Func_80108c4-iter-8.c
 * TODO(residual): halfword field RMW `(v & 0xf1ff) | (arg0 & 0xe00)` is correct
 * but the mask/load ops land in different registers + order than the ROM
 * (ldrh/ands/orr reg-alloc divergence). Permuter seed.
 */
extern unsigned int iwram_3001e70;

unsigned int Func_80108c4(unsigned int arg0)
{
    unsigned char *p = (unsigned char *)iwram_3001e70;
    unsigned short v = *(unsigned short *)(p + 0x14);
    *(unsigned short *)(p + 0x14) = (v & 0xf1ff) | (arg0 & 0xe00);
    return arg0;
}
