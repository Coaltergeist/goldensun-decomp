/* Cluster OvlFunc_883_200da08..OvlFunc_883_200da08 extracted from goldensun/asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_a.o and asm/overlays/rom_780898/ovl_30_c_c_c_c_c_a_c.o in
 * goldensun/overlays/rom_780898/overlay.ld.
 */
extern unsigned int iwram_3001e40;
extern void __Func_80f9080(int);

void OvlFunc_883_200da08(void) {
    if ((iwram_3001e40 & 0xf) == 0)
        __Func_80f9080(0x83);
}
