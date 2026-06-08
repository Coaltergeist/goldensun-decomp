/* Cluster OvlFunc_884_200a2e0..OvlFunc_884_200a2e0 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_a_c_c_c_c.s.
 *
 * Total .text for this TU computed at build time from expected/.../.o.
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_a_c_c_c_c_a.o and asm/overlays/rom_784360/ovl_30_c_a_c_c_c_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern void __Func_8092adc(unsigned int arg0, unsigned int arg1, unsigned int arg2);
extern void __CutsceneWait(unsigned int arg0);

void OvlFunc_884_200a2e0(unsigned int arg0, unsigned int arg1, unsigned int arg2)
{
	__Func_8092adc(arg0, arg1, 0);
	__CutsceneWait(arg2);
}
