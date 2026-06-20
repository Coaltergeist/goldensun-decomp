/* Cluster OvlFunc_928_200894c..OvlFunc_928_200894c extracted from goldensun/asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_a.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_a_a.o and asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_a_c.o in
 * goldensun/overlays/rom_7b6668/overlay.ld.
 */
void OvlFunc_928_200894c(void) {
    unsigned char *r4;
    r4 = __MapActor_GetActor(0);
    if ((*(int *)(r4 + 0x10) >> 20) <= 0xd) {
        __Func_8092b08(0x14, 1);
    }
}
