/* Cluster StartLuckyDice..StartLuckyDice extracted from goldensun/asm/rom_f4000/rom_f4008_a_a.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/rom_f4000/rom_f4008_a_a_a.o and asm/rom_f4000/rom_f4008_a_a_c.o in
 * goldensun/stage1.ld.
 */
extern void _PlaySound(int);
extern void LuckyDiceMain(void);

int StartLuckyDice(void)
{
    *(unsigned short *)(0x80 << 19) = 0x40;
    _PlaySound(9);
    LuckyDiceMain();
    return 0;
}
