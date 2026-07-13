/* Cluster OvlFunc_925_2008ad0..OvlFunc_925_2008ad0 extracted from goldensun/asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c.s.
 *
 * Total .text for this TU = 84 bytes (= 0x54).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c_a.o and asm/overlays/rom_7b0400/ovl_314_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_7b0400/overlay.ld.
 */
void OvlFunc_925_2008ad0(void) {
    *(unsigned char *)(__MapActor_GetActor(0) + 0x55) = 3;
    *(unsigned char *)(__MapActor_GetActor(0xe) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0xf) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x10) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x11) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x12) + 0x55) = 4;
    *(unsigned char *)(__MapActor_GetActor(0x13) + 0x55) = 4;
}
