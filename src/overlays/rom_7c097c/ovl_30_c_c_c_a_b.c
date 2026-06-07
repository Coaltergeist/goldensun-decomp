/* Cluster OvlFunc_936_20095f8..OvlFunc_936_20095f8 extracted from goldensun/asm/overlays/rom_7c097c/ovl_30_c_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7c097c/ovl_30_c_c_c_a_a.o and asm/overlays/rom_7c097c/ovl_30_c_c_c_a_c.o in
 * goldensun/overlays/rom_7c097c/overlay.ld.
 */
extern unsigned char *__Func_8092054(int id);

void OvlFunc_936_20095f8(void) {
    unsigned char *p;

    p = __Func_8092054(0);
    p[0x23] = p[0x23] & 0xfe;
}
