/* OvlFunc_911_20081ac  [ovl_79e5c0]
 * Source asm: goldensun/asm/overlays/rom_79e5c0/ovl_30_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/OvlFunc_911_20081ac-iter-10.c
 * TODO(residual): scalar .L pool + _ID_38 tag; ewram_2000240-relative dispatch leaf. Blocked scalar-.L class.
 */
extern short ewram_2000240[];
extern unsigned char L3010[] __asm__(".L3010");
extern int _ID_38;

unsigned char *OvlFunc_911_20081ac(void)
{
	int v;
	v = ewram_2000240[0xe0];
	if (v == (int)&_ID_38)
		return L3010;
	return (unsigned char *)0;
}
