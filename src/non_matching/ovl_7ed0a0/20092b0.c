/* TunnelRuins_GetSpecialExits  [ovl_7ed0a0]
 * Source asm: goldensun/asm/overlays/rom_7ed0a0/ovl_30_a_a_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/TunnelRuins_GetSpecialExits-iter-1.c
 * TODO(residual): expected pools cmp const 0xad behind .L381c; candidate emits immediate cmp
 */
extern short gState[];
extern unsigned char L381c[] __asm__(".L381c");

unsigned char *TunnelRuins_GetSpecialExits(void)
{
	if (gState[0xe0] == 0xad)
		return L381c;
	return (unsigned char *)0;
}
