/* OvlFunc_907_20080dc  [ovl_79b154]
 * Source asm: goldensun/asm/overlays/rom_79b154/ovl_30_a.s
 *
 * Parked: logic faithful, does NOT byte-match (endgame permuter seed).
 * Candidate: tools/runs/run_20260607T031612Z/OvlFunc_907_20080dc-iter-2.c
 * TODO(residual): scalar .L pool + SpecialExitTag; gState-relative dispatch leaf, pool form diverges. Blocked scalar-.L class (cf OvlFunc_970 family).
 */
extern short gState[];
extern unsigned char L13fc[] __asm__(".L13fc");
extern int SpecialExitTag;

unsigned char *OvlFunc_907_20080dc(void)
{
	if (gState[0xe0] == (int)&SpecialExitTag)
		return L13fc;
	return (unsigned char *)0;
}
