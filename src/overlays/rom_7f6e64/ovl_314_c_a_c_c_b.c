/* Cluster OvlFunc_969_200a0dc..OvlFunc_969_200a0dc extracted from goldensun/asm/overlays/rom_7f6e64/ovl_314_c_a_c_c.s.
 *
 * Total .text for this TU = 64 bytes (= 0x40).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_a.o and asm/overlays/rom_7f6e64/ovl_314_c_a_c_c_c.o in
 * goldensun/overlays/rom_7f6e64/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Actor_SetColorswap(unsigned int, unsigned int);
extern int _Func_8000b50(unsigned int, unsigned int);
extern void OvlFunc_969_200a200(unsigned int);

void OvlFunc_969_200a0dc(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    if (_Func_8000b50(iwram_3001e40, 0xf) == 0) {
        OvlFunc_969_200a200(arg0);
    }
}
