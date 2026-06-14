/* Cluster OvlFunc_965_20090f4..OvlFunc_965_20090f4 extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern void OvlFunc_965_20080c4(void);
extern void OvlFunc_965_2009030(void);

void OvlFunc_965_20090f4(void) {
    __CutsceneStart();
    OvlFunc_965_20080c4();
    OvlFunc_965_2009030();
    __CutsceneEnd();
}
