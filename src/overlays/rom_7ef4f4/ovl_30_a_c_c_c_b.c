/* Cluster OvlFunc_965_200919c..OvlFunc_965_200919c extracted from goldensun/asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c.s.
 *
 * Total .text for this TU = 40 bytes (= 0x28).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_a.o and asm/overlays/rom_7ef4f4/ovl_30_a_c_c_c_c.o in
 * goldensun/overlays/rom_7ef4f4/overlay.ld.
 */
extern void OvlFunc_965_20089f4(unsigned int, unsigned int, unsigned int, unsigned int);
extern void OvlFunc_965_2009158(void);

void OvlFunc_965_200919c(void) {
    __CutsceneStart();
    OvlFunc_965_20089f4(0xe8 << 17, 0, 0x91 << 17, 0xdf);
    OvlFunc_965_2009158();
    __Func_8091e9c(0xc);
    __CutsceneEnd();
}
