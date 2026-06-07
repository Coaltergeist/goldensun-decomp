/* OvlFunc_964_20092b0  [ovl_7ed0a0]
 * Source asm: goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_a_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/OvlFunc_964_20092b0-iter-1.c
 * TODO(residual): expected pools cmp const 0xad behind .L381c; candidate emits immediate cmp
 */
extern short ewram_2000240[];
extern unsigned char L381c[] __asm__(".L381c");

unsigned char *OvlFunc_964_20092b0(void)
{
	if (ewram_2000240[0xe0] == 0xad)
		return L381c;
	return (unsigned char *)0;
}
