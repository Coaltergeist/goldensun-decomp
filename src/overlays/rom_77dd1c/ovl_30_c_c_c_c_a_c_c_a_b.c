/* Cluster OvlFunc_882_200c2bc..OvlFunc_882_200c2bc extracted from goldensun/asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 72 bytes (= 0x48).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a_a.o and asm/overlays/rom_77dd1c/ovl_30_c_c_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_77dd1c/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern unsigned int L57fc __asm__(".L57fc");
extern int _umodsi3_RAM(unsigned int, unsigned int);
extern void OvlFunc_882_200c41c(unsigned int);

void OvlFunc_882_200c2bc(unsigned int arg0)
{
    unsigned int *p;
    unsigned int idx;

    if (iwram_3001e40 & 2) {
        __Actor_SetColorswap(arg0, 7);
    } else {
        __Actor_SetColorswap(arg0, 0);
    }
    p = &iwram_3001e40;
    idx = L57fc * 8 + 0x10;
    if (_umodsi3_RAM(*p, idx) == 0) {
        OvlFunc_882_200c41c(arg0);
    }
}
