/* Cluster OvlFunc_945_200c890..OvlFunc_945_200c890 extracted from goldensun/asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c.s.
 *
 * Total .text for this TU = 28 bytes (= 0x1c).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_a.o and asm/overlays/rom_7cb2c0/ovl_30_c_c_c_c_c_c_a_c_c.o in
 * goldensun/overlays/rom_7cb2c0/overlay.ld.
 */
void OvlFunc_945_200c890(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int r5;
    unsigned int r6;

    r5 = arg0;
    __MapActor_SetPos(arg0, (arg1 << 16), (arg2 << 16), arg3);
    r6 = arg3;
    *(unsigned short *)((char *)__MapActor_GetActor(r5) + 6) = r6;
}
