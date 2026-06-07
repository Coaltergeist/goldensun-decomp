/* Cluster OvlFunc_968_200b050..OvlFunc_968_200b050 extracted from goldensun/asm/overlays/rom_7f2f14/ovl_30_c_c_a.s.
 *
 * Total .text for this TU = 24 bytes (= 0x18).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7f2f14/ovl_30_c_c_a_a.o and asm/overlays/rom_7f2f14/ovl_30_c_c_a_c.o in
 * goldensun/overlays/rom_7f2f14/overlay.ld.
 */
extern void __MapActor_GetActor(unsigned int arg0);

void OvlFunc_968_200b050(void) {
    unsigned int i;

    i = 0xf;
    do {
        __MapActor_GetActor(i);
        i++;
    } while (i <= 0x12);
}
