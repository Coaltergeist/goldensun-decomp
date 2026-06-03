/* Cluster OvlFunc_883_200dc20..OvlFunc_883_200dc20 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_c_c.s.
 *
 * Total .text for this TU = 60 bytes (= 0x3c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_c_c_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Func_800c598(unsigned int arg0, unsigned int arg1);
extern void OvlFunc_883_200dd68(unsigned int arg0);

void OvlFunc_883_200dc20(unsigned int arg0)
{
    if (iwram_3001e40 & 2) {
        __Func_800c598(arg0, 7);
    } else {
        __Func_800c598(arg0, 0);
    }
    if ((iwram_3001e40 & 0xf) == 0) {
        OvlFunc_883_200dd68(arg0);
    }
}
