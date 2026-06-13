/* Cluster OvlFunc_891_2009000..OvlFunc_891_2009000 extracted from goldensun/asm/overlays/rom_78c76c/ovl_30_c_c_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_78c76c/ovl_30_c_c_a_c_a.o and asm/overlays/rom_78c76c/ovl_30_c_c_a_c_c.o in
 * goldensun/overlays/rom_78c76c/overlay.ld.
 */
void OvlFunc_891_2009000(void) {
    unsigned char *p;
    p = __MapActor_GetActor(0);
    if (*(unsigned short *)(p + 6) == (0x80 << 7)) {
        __Func_8093c00();
    }
}
