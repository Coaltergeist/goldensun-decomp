/* Cluster OvlFunc_913_200a780..OvlFunc_913_200a780 extracted from goldensun/asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a_c_a.o and asm/overlays/rom_7a04ac/ovl_30_c_c_c_a_a_c_c.o in
 * goldensun/overlays/rom_7a04ac/overlay.ld.
 */
extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_913_200a780(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}
