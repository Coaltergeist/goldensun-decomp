/* Cluster OvlFunc_896_2008a64..OvlFunc_896_2008a64 extracted from goldensun/asm/overlays/rom_78ef88/ovl_314_c_c_a.s.
 *
 * Total .text for this TU = 52 bytes (= 0x34).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78ef88/ovl_314_c_c_a_a.o and asm/overlays/rom_78ef88/ovl_314_c_c_a_c.o in
 * goldensun/overlays/rom_78ef88/overlay.ld.
 */
extern void OvlFunc_896_2008a98(void);
extern void OvlFunc_896_2008d5c(void);
extern void OvlFunc_896_2008f8c(void);
extern void OvlFunc_896_2009450(void);
extern void OvlFunc_896_200978c(void);
extern void OvlFunc_896_2009d04(void);
extern void OvlFunc_896_200a27c(void);

void OvlFunc_896_2008a64(void) {
    __CutsceneStart();
    OvlFunc_896_2008a98();
    OvlFunc_896_2008d5c();
    OvlFunc_896_2008f8c();
    OvlFunc_896_2009450();
    OvlFunc_896_200978c();
    OvlFunc_896_2009d04();
    __SetFlag(0x83e);
    __CutsceneEnd();
    OvlFunc_896_200a27c();
}
