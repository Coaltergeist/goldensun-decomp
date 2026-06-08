/* Cluster OvlFunc_884_200a334..OvlFunc_884_200a334 extracted from goldensun/asm/overlays/rom_784360/ovl_30_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_784360/ovl_30_c_c_a.o and asm/overlays/rom_784360/ovl_30_c_c_c.o in
 * goldensun/overlays/rom_784360/overlay.ld.
 */
extern volatile unsigned int iwram_3001e40;
extern int _Func_8000b50(int, int);
extern void __Actor_SetColorswap(int, int);
extern void OvlFunc_884_200a440(int);

void OvlFunc_884_200a334(int arg0)
{
    if (iwram_3001e40 & 1) {
        __Actor_SetColorswap(arg0, _Func_8000b50(iwram_3001e40 >> 1, 6));
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_884_200a440(arg0);
    }
}
