/* OvlFunc_965_2008fac  [ovl_7ef4f4]
 * Source asm: goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_a_c.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/OvlFunc_965_2008fac-iter-1.c
 * TODO(residual): expected pools cmp const 0xb0 behind .L35b8; candidate immediate cmp
 */
extern short ewram_2000240[];
extern unsigned char L35b8[] __asm__(".L35b8");

unsigned char *OvlFunc_965_2008fac(void)
{
	if (ewram_2000240[0xe0] == 0xb0)
		return L35b8;
	return (unsigned char *)0;
}
