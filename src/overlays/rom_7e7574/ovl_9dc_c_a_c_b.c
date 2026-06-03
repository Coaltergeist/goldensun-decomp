/* Cluster OvlFunc_959_20098e4..OvlFunc_959_20098e4 extracted from goldensun/asm/overlays/rom_7e7574/ovl_9dc_c_a_c.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_9dc_c_a_c_a.o and asm/overlays/rom_7e7574/ovl_9dc_c_a_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern int OvlFunc_959_2009980(void);
extern int OvlFunc_959_200981c(unsigned int arg0);
extern int OvlFunc_959_2009880(unsigned int arg0);

unsigned int OvlFunc_959_20098e4(unsigned int arg0)
{
	int v;
	if (!OvlFunc_959_2009980())
		return 0;
	if (OvlFunc_959_200981c(arg0))
		return 1;
	v = OvlFunc_959_2009880(arg0);
	return (unsigned int)(-v | v) >> 31;
}
