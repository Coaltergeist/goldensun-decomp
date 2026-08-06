/* Kolima_GetSpecialExits  [ovl_79e5c0]
 * Source asm: goldensun/asm/overlays/rom_79e5c0/ovl_30_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/Kolima_GetSpecialExits-iter-10.c
 * TODO(residual): scalar .L pool + _ID_38 tag; gState-relative dispatch leaf. Blocked scalar-.L class.
 */
extern short gState[];
extern unsigned char L3010[] __asm__(".L3010");
extern int _ID_38;

unsigned char *Kolima_GetSpecialExits(void)
{
	int v;
	v = gState[0xe0];
	if (v == (int)&_ID_38)
		return L3010;
	return (unsigned char *)0;
}
