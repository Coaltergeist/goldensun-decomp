/* Cluster OvlFunc_935_20086e4..OvlFunc_935_20086e4 extracted from goldensun/asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a.s.
 *
 * Total .text for this TU = 32 bytes (= 0x20).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_a.o and asm/overlays/rom_7bf5a8/ovl_2e0_c_c_a_c.o in
 * goldensun/overlays/rom_7bf5a8/overlay.ld.
 */
extern void OvlFunc_935_2008704(void);
extern void OvlFunc_935_2008734(void);

void OvlFunc_935_20086e4(void) {
    unsigned char *actor;
    int r2;
    int r3;

    actor = (unsigned char *)__MapActor_GetActor(0);
    r2 = 0x80;
    r3 = *(int *)(actor + 0xc);
    r2 <<= 13;
    if (r3 >= r2) {
        OvlFunc_935_2008704();
    } else {
        OvlFunc_935_2008734();
    }
}
